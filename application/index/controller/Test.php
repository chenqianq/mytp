<?php
/**专门用来进行测试用的类
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/12/25
 * Time: 10:06
 */

namespace app\index\controller;

use app\common\model\User;
use app\common\controller\Base;

class Test extends Base
{
	//测试用户的验证器
	public function validText(){
		$data = [
			'name' => '陈琪琪',
			'email' => '657705538@qq.com',
			'moblie' => '1234556778899',
			'password' => '123456',
		];
		$rule = 'app\common\validate\User';
		$res = $this -> validate($data,$rule);
		return $res;
	}
	
	public function test(){
		$res = User::find(6);
		dump($res);
	}


}