<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019-01-14
 * Time: 14:47
 */

namespace app\common\validate;
use think\Validate;

class Article extends Validate
{
	protected $rule = [
		'title|标题' => 'require|length:5,20|chsAlphaNum',
		//'title_img|图片' => 'require',
		'content|内容' => 'require',
		'user_id|作者' => 'require',
		'cate_id|栏目' => 'require',
	];
}