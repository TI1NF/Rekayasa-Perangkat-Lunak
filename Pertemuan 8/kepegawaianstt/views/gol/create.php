<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Gol */

$this->title = 'Create Gol';
$this->params['breadcrumbs'][] = ['label' => 'Gols', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gol-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
