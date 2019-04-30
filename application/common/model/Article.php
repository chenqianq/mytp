<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019-01-14
 * Time: 14:29
 */

namespace app\common\model;
use think\Model;

class Article extends Model
{
	protected $pk = 'id';
	protected $table = 'zh_article';
	protected $autoWriteTimestamp = true;//自动写入时间戳
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
	protected $dateFormat = 'Y-m-d H:i:s'; //浏览器的显示格式
	
	//开启自动 设置
	protected $auto = []; //无论是新增还是更新都要设置的字段
	
	//仅对新增有效的
	protected $insert = ['create_time','status'=> 1,'is_top' => 0,'is_hot' => 0];
	
	//仅更新时设置的
	protected $update = ['update_time'];
	//将标题图片的链接修改下获取器
	public function getTitleImgAttr($value){
		return '/uploads/'.$value;
	}
	
	/**根据文章Id 获得文件的内容
	 * @param $articleId
	 */
	public function getArticleById($articleId){
		if(!$articleId){
			return false;
		}
		
		//在模型中查询文章的信息
		$article = self::where('status',1)->find($articleId); //这是返回一维
		//var_dump($article);
		//$article = Article::where('status',1)->select($articleId); //这是返回二维数组
		//统一返回的都是模型对象
		return $article;
	
	}
	
	/**
	 * 增加阅读量
	 * @param $articleId
	 */
	public function increacePv($articleId){
		if(!$articleId){
			return false;
		}
		$res = self::save(['pv'=>self::raw('pv+1')],['id'=>$articleId]);
		return $res;
	}
	
	
	
	
	
	
}