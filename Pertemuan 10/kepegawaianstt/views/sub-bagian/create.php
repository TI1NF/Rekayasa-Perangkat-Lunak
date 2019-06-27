<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SubBagian */

$this->title = 'Create Sub Bagian';
$this->params['breadcrumbs'][] = ['label' => 'Sub Bagians', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sub-bagian-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
