<?php
namespace app\api\model;

use think\Model;

class Topic extends Model
{
    // 关联操作方法
    public function user()
    {
        return $this->belongsTo('User', 'user_id');
    }

}
