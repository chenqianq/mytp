<?php
namespace app\index\controller;

use app\common\controller\Base; //导入公共的控制器
use app\common\model\Article;//文章的内容
use app\common\model\ArtCate;//文章栏目
use think\Db;
use think\facade\Request;
use think\Paginator;

class Index extends Base
{
	public function initialize()
	{
		parent::initialize(); // TODO: Change the autogenerated stub
	
	}
	
	
	public function index()
    {
    	$map = [];
    	$map[] = ['status','=',1];
    	$keyWords = Request::param('keywords');
    	if($keyWords){
		    $map[] = ['title','like','%'.$keyWords.'%'];
	    }
    	//首先获得cate_id
	    $cateId = Request::param('cate_id');
	    //获得栏目的名称
	    if(isset($cateId)){
		    $map[] = ['cate_id','=',$cateId];
	    	$cate = ArtCate::get($cateId);
	    	$this -> view -> assign('cateName',$cate['name']);
		    $articleList = Article::where($map) -> order('create_time','desc')->paginate(10);
	    }else{
		    $this -> view -> assign('cateName','全部文章');
		    $articleList =  Article::where($map) -> order('create_time','desc')->paginate(10);
	    }
	  
	    $this -> view -> assign('empty','<h3>当前没有任何文章哦</h3>');//volish 的变量为空时会报错，所以要给个为空的变量
	    $this -> view -> assign('articleList',$articleList);
	    //$this -> view -> assign('pageHtml',$page);
	    
        return $this -> fetch('index');
    }
    
    //添加文章界面
    public function insert(){
    	$this -> isLogin();
	    $this -> view -> assign('title','发布文章');
	    //获得栏目的分类
	
	    $cateList = ArtCate::all();
    	if(count($cateList)>0){
    	    $this -> assign('cateList',$cateList);
	    }else{
    	    $this -> error('请先添加栏目','index/index');
	    }
    	return $this -> view-> fetch('index/insert');
    	
    }
	
	/**
	 * 保存文章的内容
	 */
    public function saveInsert(){
    	if(Request::isPost()){
    	    $data = Request::post();
    	    //进行表单内容的验证
		    $rule = '\app\common\validate\Article';
		    $res = $this -> validate($data,$rule);
    	 
		    if($res !== true){
    	    	echo '<script> alert("'.$res.'");history.go(-1)'.'</script>';
		        //$this -> error($res,'index/insert');
	        }else{
    	        //验证成功后仅
		        // 移动到框架应用根目录/uploads/ 目录下
				if($_FILES['title_img']){
					echo '<script> alert("请选择你要上传的文件");history.go(-1)'.'</script>';die;
				}
		        $file = Request::file('title_img');
		        $info = $file-> validate([
		        	'size' => 100000000,
			        'ext' => 'jpeg,jpg,png,gif',
		        ]) -> move( 'uploads/');
		        if($info){
			        // 成功上传后 获取上传信息
			        // 输出 jpg
			       // echo $info->getExtension();
			        // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
			        //echo $info->getSaveName();
			        // 输出 42a79759f284b767dfcb2a0197904287.jpg
			       // echo $info->getFilename();
			
			        $data['title_img'] =  $info->getSaveName();
			        //然后存入 信息啦
			        $res = Article::create($data);
			        
			        if($res){
				        $this -> success('保存成功了','index/index');
			        }else{
				        $this -> error('保存失败了','index/insert');
			        }
			        
		        }else{
			        // 上传失败获取错误信息
			        echo $file->getError();
		        }
    	    
	        }
	    }else{
		    $this -> error('请求类型错误','index/insert');
	    }
	    
    }
	
	/**
	 * 文章的详情
	 */
    public function articleDetail(){
    	//获得文章的id
	    $articleId = Request::param('article_id');
	    $articleModel = new Article();
	    //进行阅读量的累加
	    $articleModel -> increacePv($articleId);
	    //获得文章的内容
	    $articleInfo = $articleModel -> getArticleById($articleId);
	    $this -> assign('articleInfo',$articleInfo);
	    $this -> assign('title','文章详情');
	    return $this->fetch();
    }
	
    
    
    
    
}