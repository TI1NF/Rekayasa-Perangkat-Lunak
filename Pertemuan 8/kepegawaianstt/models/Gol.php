<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "gol".
 *
 * @property int $id
 * @property string $golongan
 * @property string $pangkat
 *
 * @property Pegawai[] $pegawais
 */
class Gol extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'gol';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['golongan', 'pangkat'], 'required'],
            [['golongan'], 'string', 'max' => 20],
            [['pangkat'], 'string', 'max' => 45],
            [['golongan'], 'unique'],
            [['pangkat'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'golongan' => 'Golongan',
            'pangkat' => 'Pangkat',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPegawais()
    {
        return $this->hasMany(Pegawai::className(), ['idgol' => 'id']);
    }
}
