<?php
/**公共(基础)控制器
 * 1.必须继承Controller.php
 *
 */

namespace app\common\controller;

use think\Controller;
use think\facade\Session;
use app\common\model\ArtCate;
class Base extends Controller
{
	//初始化的Controller中的初始化
	//创建常量。公共方法。在所有的方法之前被调用，类似构造器
	protected function initialize()
	{
		$this -> showNav();
	}
	
	//防止重复登录

	public function logined(){
		if(Session::has('user_id')){
			$this -> error('您已经登录了','index/index');
		}
	}
	
	/**
	 * 判断是否已经登录
	 */
	public function isLogin(){
		if(!Session::has('user_id')){
			$this -> error('您是不是忘记登录啦','index/index');
		}
	}
	
	/**
	 * 显示导航
	 */
	public function showNav(){
		$cateList = ArtCate::all(function ($query){
			$query -> where('status',1) -> order('sort','asc');
		});
	
		$this -> view-> assign('cateLists',$cateList);
		
	}
	
	
}
