<?php

namespace app\models;

use Yii;
use yii\helpers\Url;
use yii\web\Linkable;

/**
 * @property int $id
 * @property string $title
 * @property string $content
 * @property string $created_at
 * @property string $updated_at
 * @property int $author_id
 * @property int $category_id
 *
 * @property User $author
 * @property Category $category
 * @property Comment[] $comments
 */
class Post extends \yii\db\ActiveRecord implements Linkable
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'post';
    }

    /**
     * {@inheritdoc}
     */

    // Правила валидации:
    public function rules()
    {
        return [
            [['title', 'content', 'author_id', 'category_id'], 'required'],
            [['content'], 'string', 'min' => 150],
            [['created_at', 'updated_at'], 'safe'],
            [['author_id', 'category_id'], 'integer'],
            [['title'], 'string', 'min' => 6, 'max' => 128],
            [['author_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['author_id' => 'id']],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => Category::class, 'targetAttribute' => ['category_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'author_id' => 'Author ID',
            'category_id' => 'Category ID',
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
     * Gets query for [[Category]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Category::class, ['id' => 'category_id']);
    }

    /**
     * Gets query for [[Comments]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::class, ['post_id' => 'id']);
    }

    public function getLinks()
    {
        return [
            'linkToPost' => Url::to(['post/view', 'id' => $this->id], true),
        ];
    }
}
