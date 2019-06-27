<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "subbagian".
 *
 * @property int $id
 * @property string $nama
 * @property int $idbagian
 *
 * @property Pegawai[] $pegawais
 * @property Bagian $bagian
 */
class SubBagian extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'subbagian';
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
            'nama' => 'Sub Bagian',
            'idbagian' => 'Bagian',
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
