<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019-01-14
 * Time: 15:03
 */

namespace app\common\model;
use think\Model;

class ArtCate extends Model
{
	protected $pk = 'id';
	protected $table = 'zh_article_category';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
	protected $dateFormat = "Y-m-d";
	
	
	
	
	



}