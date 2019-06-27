<?php

use yii\helpers\Html;
use yii\grid\GridView;
//tambahan
use app\models\Gol;
use app\models\Agama;
use app\models\SubBagian;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PegawaiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pegawai';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pegawai-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Pegawai', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            'nip',
            'nama',
            // 'gender',
            // 'tempat_lahir',
            //'tanggal_lahir',
            // 'idgol',
            [
                'attribute'=>'idgol',
                'value'=>'gol.golongan',
                'filter'=> ArrayHelper::map(Gol::find()->all(),'id','golongan'),
            ],
            // 'idsubbagian',
            [
                'attribute'=>'idsubbagian',
                'value'=>'subbagian.nama',
                'filter'=> ArrayHelper::map(SubBagian::find()->all(),'id','nama'),
            ],
            // 'idagama',
            [
                'attribute'=>'idagama',
                'value'=>'agama.nama',
                'filter'=> ArrayHelper::map(Agama::find()->all(),'id','nama'),
            ],
            //'alamat:ntext',
            //'hp',
            //'email:email',
            //'foto',
            //'cv',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
