<?php

namespace app\models;

use Yii;

/**
 * @property int $id
 * @property string $content
 * @property string $created_at
 * @property int $author_id
 * @property int $post_id
 *
 * @property User $author
 * @property Post $post
 */
class Comment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'comment';
    }

    /**
     * {@inheritdoc}
     */

    // Правила валидации:
    public function rules()
    {
        return [
            [['content', 'author_id', 'post_id'], 'required'],
            [['created_at'], 'safe'],
            [['author_id', 'post_id'], 'integer'],
            [['content'], 'string', 'min' => 10, 'max' => 256],
            [['author_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['author_id' => 'id']],
            [['post_id'], 'exist', 'skipOnError' => true, 'targetClass' => Post::class, 'targetAttribute' => ['post_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'content' => 'Content',
            'created_at' => 'Created At',
            'author_id' => 'Author ID',
            'post_id' => 'Post ID',
        ];
    }

    /**
     * Gets query for [[Author]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAuthor()
    {
        return $this->hasOne(User::class, ['id' => 'author_id']);
    }

    /**
     * Gets query for [[Post]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPost()
    {
        return $this->hasOne(Post::class, ['id' => 'post_id']);
    }
}
