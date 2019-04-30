<?php
/**zh_user表的验证器
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/12/25
 * Time: 9:55
 */

namespace app\common\validate;


use think\Validate;

class User extends Validate
{
	protected $rule = [
		//'name|姓名' => 'require|length:5,20|chsAlphaNum', //这个是减写
		/*'name|姓名'=>[
			'require'=> 'require',
			'length'=>'5,20',
			'chsAlphaNum'=>'chsAlphaNum'
		],*/
		'email|邮箱' => [
			'require' => 'require',
			'unique' => 'zh_user',//在这个表中是唯一的
			'email' => 'email',
		],
		'mobile|手机号' => [
			'mobile' => 'mobile',
			'require' => 'require',
			'unique' => 'zh_user',//在这个表中是唯一的
			'number' => 'number',
		],
		
		'password|密码' => [
			'require' => 'require',
			'alphaNum' => 'alphaNum',
			'length' => '6,20',
			'confirm' => 'confirm',//进行二次确认
		]
	];




}