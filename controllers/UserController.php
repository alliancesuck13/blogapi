<?php

namespace app\controllers;

use yii\rest\ActiveController;
use app\models\User;

class UserController extends ActiveController
{
    public $modelClass = User::class;

    public function actionProfile()
    {
        return User::find()->select(['name', 'surname', 'username'])->all();
    }
}