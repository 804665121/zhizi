<?php

namespace app\admin\controller;

use app\common\controller\Backend;

/**
 * 文章信息列表
 *
 * @icon fa fa-circle-o
 */
class Articlelists extends Backend
{
    
    /**
     * Articlelists模型对象
     * @var \app\admin\model\Articlelists
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\Articlelists;

    }
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑    
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改     
     */
        /**
     * 编辑
     */
    // public function edit($ids = NULL)
    // {
    //     $row = $this->model->get($ids);
    //     if (!$row)
    //         $this->error(__('No Results were found'));
    //     $adminIds = $this->getDataLimitAdminIds();
    //     if (is_array($adminIds)) {
    //         if (!in_array($row[$this->dataLimitField], $adminIds)) {
    //             $this->error(__('You have no permission'));
    //         }
    //     }
    //     if ($this->request->isPost()) {
    //         $params = $this->request->post("row/a");
    //         dump($params);die;
    //         if ($params) {
    //             try {
    //                 //是否采用模型验证
    //                 if ($this->modelValidate) {
    //                     $name = str_replace("\\model\\", "\\validate\\", get_class($this->model));
    //                     $validate = is_bool($this->modelValidate) ? ($this->modelSceneValidate ? $name . '.edit' : $name) : $this->modelValidate;
    //                     $row->validate($validate);
    //                 }
    //                 $result = $row->allowField(true)->save($params);
    //                 if ($result !== false) {
    //                     $this->success();
    //                 } else {
    //                     $this->error($row->getError());
    //                 }
    //             } catch (\think\exception\PDOException $e) {
    //                 $this->error($e->getMessage());
    //             } catch (\think\Exception $e) {
    //                 $this->error($e->getMessage());
    //             }
    //         }
    //         $this->error(__('Parameter %s can not be empty', ''));
    //     }
    //     $this->view->assign("row", $row);
    //     return $this->view->fetch();
    // }

}
