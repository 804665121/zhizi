<?php
namespace app\index\controller;
use think\Controller;
use think\Db;

class Index extends Controller
{


    public function getleftinfo(){
        $infol = Db::name('classify')->field('ctitle')->select();
        $uinfo = Db::name('leftlist')->field('nameid,image,intro')->find();
        $this->assign('uinfo',$uinfo);
        $this->assign('infol',$infol);
    }
    public function index()
    {
        
    	$info = Db::name('home')->select();
    	$this->assign('info',$info);
        $this->getleftinfo();
        return  $this->view->fetch();
    }

    public function login(){
    	return  $this->view->fetch();

    }

    public function register(){
        if($this->request->post()){
            $username = $this->request->post('username') ? $this->request->post('username') : null;
            $password = $this->request->post('password') ? $this->request->post('password') : null;
            $select = Db::name('indexuser')->where('username',$username)->find();
            if($select){
                exit(json_encode(array('result' => 0 , 'msg' => '用户名已经存在请重新输入~')));
            }
            $data = ['username' => $username, 'password' => $password];
            $result = Db::name('indexuser')->insert($data);
            if($result){
                exit(json_encode(array('result' => 1 ,'msg' => '注册成功~')));
            }
        }
    }

    public function logininfo(){
    	if($this->request->post()){
    		$name = $this->request->post('username') ? strval($this->request->post('username')) : null ;
    		$password = $this->request->post('password') ? strval($this->request->post('password')) : null ;
            $result = Db::name('indexuser')->where('username = "'. $name .'" and password = "'. $password.'"')->find();
    		if($result){
    				exit(json_encode(array('result' => 1, 'msg' => '登录成功！')));
    			}else{
                   exit(json_encode(array('result' => 0, 'msg' => '登录失败~用户信息不存在请注册'))); 
                }
    		}
    	}
       
    


    public function article(){
         $article = Db::name('articlelists')->paginate(3);
          $page = $article->render();
        $this->assign('article',$article);
        $this->assign('page',$page);
        $this->getleftinfo();
    	return $this->view->fetch();
    }

    public function message(){
        $count = Db::name('message')->count('id');
        $showinfo = Db::name('message')->order('id desc')->paginate(10);
        $page = $showinfo->render();
        $this->assign('showinfo',$showinfo);
        $this->assign('page',$page);
        $this->assign('count',$count);
        $this->getleftinfo();
        return $this->view->fetch();
    }

    public function messageinfo(){
         if($this->request->get()){
            //留言信息展示
            $message = $this->request->get('mes') ? $this->request->get('mes'): null;
            $title = $this->request->get('title') ? $this->request->get('title') : null;
            $data = ['mtitle' => $title ,'minfo' => $message,'createtime' => time()];
           $result = Db::name('message')->insert($data);
           if($result){
            exit (json_encode(array('result' => 1 ,'msg' => '留言成功~')));
           }
         }

    }

    public function messagedelect(){
        //删除留言信息
        if($this->request->get()){
            $id = $this->request->get('id') ? $this->request->get('id') : 0;
            $result = Db::name('message')->where('id',$id)->delete();
            if($result){
                exit(json_encode(array('result' => 1,'msg' => '删除成功~')));
            }
        }
    }

   
        
    public function Informal(){
        $this->getleftinfo();
        $Infor = Db::name('informal')->order('createtime desc')->paginate(5);
         $page = $Infor->render();
        $this->assign('informal',$Infor);
        $this->assign('page',$page);
        return $this->view->fetch();

    }

    public function Infocont(){
        if($this->request->get()){
            $title = $this->request->get('title') ? $this->request->get('title') : null;
            $content = $this->request->get('content') ? $this->request->get('content') : null;
            $data = ['title' => $title, 'content' => $content, 'createtime' => time()];
            $result = Db::name('informal')->insert($data);
           // if($result){
           //  exit(json_decode(array('result' => '1' , 'msg' => '保存成功~')));
           // }else{
           //  exit(json_decode(array('result' => '0', 'msg' => '保存失败~')));
           // }
        }

    }

    public function articleinfo(){
         $article = Db::name('articlelists')->paginate(3);
        $this->assign('article',$article);
        $page = $article->render();
        $this->assign('page',$page);
        return $this->view->fetch();

    }

    
   
}
