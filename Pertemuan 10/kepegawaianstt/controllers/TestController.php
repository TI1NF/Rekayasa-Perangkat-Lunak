<?php
namespace app\controllers;

use Yii;
use yii\web\Controller;

class TestController extends controller
{
    public $layout = 'login';

    public function actionLogin()
    {
        return $this->render('form-login');
    }

    public function actionBlog()
    {
        $this->layout = 'blog';
        return $this->render('blog');
    }
}