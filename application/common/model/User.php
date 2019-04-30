<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/12/25
 * Time: 9:54
 */

namespace app\common\model;


use think\Model;
use think\Paginator;
class User extends Model
{
	protected $pk = 'id'; //默认主键
	protected $table = 'zh_user'; //默认数据表
	protected $autoWriteTimestamp = true;//自动写入时间戳
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
	protected $dateFormat = 'Y-m-d'; //浏览器的显示格式
	
	//获取器 数据库 -> 浏览器
	public function getStatusAttr($value){
		$status = ['1'=>'禁用','0'=> '启用'];
		return $status[$value];
	}
	
	
	//修改器 浏览器-> 数据库
	public function setPasswordAttr($value){
		return md5($value);
	}
	
}