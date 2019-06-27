<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Subbbagian */

$this->title = 'Create Subbbagian';
$this->params['breadcrumbs'][] = ['label' => 'Subbbagians', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="subbbagian-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
