<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/12/25
 * Time: 11:30
 */

namespace app\index\controller;


use app\common\controller\Base;

use think\facade\Request;
use app\common\model\User as UserModel;
use think\facade\Session;



class User extends Base
{

	//注册页面
	public function register(){
		$this -> assign('title','用户注册');
		return $this -> fetch();
	}
	//处理用户的注册信息
	public function saveRegister(){
		if(Request::isAjax()){
			$data= Request::post();
			
			$rule = 'app\common\validate\User';
			$res = $this -> validate($data,$rule);
		
			if($res!==true){
				return ['status' => 'failed','msg' => $res];
			}else{
				$user = UserModel::create($data);
				if(!$user){
					return ['status' => 'failed','msg' => '注册失败'];
				}
				
				Session::set('user_id',$user-> id);
				Session::set('user_name',$user-> name);
			
				return ['status' => 'success','msg' => '注册成功'];
			}
			
			//$data = Request::except(['confirm_password'], 'post');
			//return ['status' => 'success','data' => $data];
		}else{
			return ['status' => 'failed','msg' => '失败了'];
		}
	}
	
	/**
	 * 用户登录页面
	 */
	public function login(){
		$this -> logined(); //检查是否重复登录
		
		return $this -> view -> fetch('',['title' => '用户登录']);
	}
	
	/**
	 * 用户登录处理
	 */
	public function processLogin(){
	
		if(Request::isAjax()){
			$data = Request::post();
			
			$rule = [
				'email|邮箱' => 'require|email',
				'password|密码' => 'require|chsAlphaNum',
			];
			
			//进行数据的验证
			$msg = $this -> validate($data,$rule);
			
			if($msg!==true){
				return ['status' => 'failed','msg' =>$msg];
			}else{
				//执行查询
				$result = UserModel::get(function ($query) use ($data){
					$query -> where('email',$data['email']) -> where('password',md5($data['password']));
				}); //返回了obj
				//$result2 = UserModel::where('email',$data['email'])-> where('password',md5($data['password'])) -> find();
				//同上面一个自定义的方法查询结果相同
				if($result === null){
					return ['status' => 'failed','msg' =>'邮箱或密码错误'];
				}else{
					//将用户数据写入session
					Session::set('user_id', $result-> id);
					Session::set('user_name', $result->name);
					
					return ['status' => 'success','msg' =>'登录成功啦'];
				}
				
				//UserModel::getInfoByEmail($data['email']);
			}
			
		}else{
			$this -> error('出错啦',"index/index/index");
		}
		
		
		
	}
	
	/**
	 * 退出登录
	 * 删除session
	 */
	public function loginout(){
		//法一
		//Session::delete('user_name');
		//Session::delete('user_id');
		
		//法二
		Session::clear();
		$this -> success('退出成功','index/index');
	}
	
	
	
	
}