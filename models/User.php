<?php

namespace app\models;

use Yii;

/**
 * @property int $id
 * @property string $name
 * @property string $surname
 * @property string $username
 * @property string $password_hash
 *
 * @property Comment[] $comments
 * @property Post[] $posts
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    // Правила валидации:
    public function rules()
    {
        return [
            [['name', 'surname', 'username', 'password_hash'], 'required'],
            [['name', 'surname'], 'string', 'min' => 3, 'max' => 64],
            [['username'], 'string', 'min' => 6, 'max' => 32],
            [['password_hash'], 'string', 'max' => 512],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'surname' => 'Surname',
            'username' => 'Username',
            'password_hash' => 'Password Hash',
        ];
    }

    /**
     * Gets query for [[Comments]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::class, ['author_id' => 'id']);
    }

    /**
     * Gets query for [[Posts]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPosts()
    {
        return $this->hasMany(Post::class, ['author_id' => 'id']);
    }

}
