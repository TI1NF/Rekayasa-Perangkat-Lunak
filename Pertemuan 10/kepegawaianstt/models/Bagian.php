<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bagian".
 *
 * @property int $id
 * @property string $nama
 *
 * @property Subbbagian[] $subbbagians
 */
class Bagian extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bagian';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama'], 'required'],
            [['nama'], 'string', 'max' => 20],
            [['nama'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama' => 'Nama',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubbbagians()
    {
        return $this->hasMany(Subbbagian::className(), ['idbagian' => 'id']);
    }
}
