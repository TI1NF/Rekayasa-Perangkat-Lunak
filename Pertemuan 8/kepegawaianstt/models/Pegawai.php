<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pegawai".
 *
 * @property int $id
 * @property string $nip
 * @property string $nama
 * @property string $gender
 * @property string $tempat_lahir
 * @property string $tanggal_lahir
 * @property int $idgol
 * @property int $idsubbagian
 * @property int $idagama
 * @property string $alamat
 * @property string $hp
 * @property string $email
 * @property string $foto
 * @property string $cv
 *
 * @property Gaji[] $gajis
 * @property Agama $agama
 * @property Gol $gol
 * @property Subbbagian $subbagian
 * @property Pelatihan[] $pelatihans
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pegawai';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nip', 'nama', 'gender', 'tempat_lahir', 'tanggal_lahir', 'idgol', 'idsubbagian', 'idagama', 'alamat', 'hp'], 'required'],
            [['gender', 'alamat'], 'string'],
            [['tanggal_lahir'], 'safe'],
            [['idgol', 'idsubbagian', 'idagama'], 'integer'],
            [['nip'], 'string', 'max' => 18],
            [['nama', 'tempat_lahir', 'email', 'foto', 'cv'], 'string', 'max' => 45],
            [['hp'], 'string', 'max' => 15],
            [['nip'], 'unique'],
            [['idagama'], 'exist', 'skipOnError' => true, 'targetClass' => Agama::className(), 'targetAttribute' => ['idagama' => 'id']],
            [['idgol'], 'exist', 'skipOnError' => true, 'targetClass' => Gol::className(), 'targetAttribute' => ['idgol' => 'id']],
            [['idsubbagian'], 'exist', 'skipOnError' => true, 'targetClass' => Subbbagian::className(), 'targetAttribute' => ['idsubbagian' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nip' => 'Nip',
            'nama' => 'Nama',
            'gender' => 'Gender',
            'tempat_lahir' => 'Tempat Lahir',
            'tanggal_lahir' => 'Tanggal Lahir',
            'idgol' => 'Idgol',
            'idsubbagian' => 'Idsubbagian',
            'idagama' => 'Idagama',
            'alamat' => 'Alamat',
            'hp' => 'Hp',
            'email' => 'Email',
            'foto' => 'Foto',
            'cv' => 'Cv',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGajis()
    {
        return $this->hasMany(Gaji::className(), ['idpegawai' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAgama()
    {
        return $this->hasOne(Agama::className(), ['id' => 'idagama']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGol()
    {
        return $this->hasOne(Gol::className(), ['id' => 'idgol']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubbagian()
    {
        return $this->hasOne(Subbbagian::className(), ['id' => 'idsubbagian']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPelatihans()
    {
        return $this->hasMany(Pelatihan::className(), ['idpegawai' => 'id']);
    }
}
