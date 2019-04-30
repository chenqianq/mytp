<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019-01-14
 * Time: 15:08
 */

namespace app\common\validate;

use think\Validate;
class ArtCate extends Validate
{
	
	protected $rule=[
		'user_id' => 'require',
	];
	
	
}