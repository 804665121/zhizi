<?php
namespace app\common\controller;
use think\Controller;
use think\Db;

class Common extends Controller
{
	public function leftinfo(){
        $infol = Db::name('classify')->select();
        $this->assign('infol',$infol);
        return   $this->view->fetch();
      
    }

}

