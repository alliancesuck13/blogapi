<?php

namespace app\controllers;

use yii\rest\ActiveController;

class BaseApiController extends ActiveController
{
    public $serializer = [
        'class' => 'yii\rest\Serializer',
        'collectionEnvelope' => 'items',
    ];
}