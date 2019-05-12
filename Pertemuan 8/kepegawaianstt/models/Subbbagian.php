<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "subbbagian".
 *
 * @property int $id
 * @property string $nama
 * @property int $idbagian
 *
 * @property Pegawai[] $pegawais
 * @property Bagian $bagian
 */
class Subbbagian extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'subbbagian';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama', 'idbagian'], 'required'],
            [['idbagian'], 'integer'],
            [['nama'], 'string', 'max' => 20],
            [['nama'], 'unique'],
            [['idbagian'], 'exist', 'skipOnError' => true, 'targetClass' => Bagian::className(), 'targetAttribute' => ['idbagian' => 'id']],
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
            'idbagian' => 'Idbagian',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPegawais()
    {
        return $this->hasMany(Pegawai::className(), ['idsubbagian' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBagian()
    {
        return $this->hasOne(Bagian::className(), ['id' => 'idbagian']);
    }
}
