# Create Database

- Download ERD melalui link berikut : https://elen.nurulfikri.ac.id/pluginfile.php/17607/mod_resource/content/1/erd_kepegawaian.mwb
- Buka file tersebut dengan menggunakan MySQL Workbench
- Cari nama Schema dbkemenkumham dan ubah namanya
- Klik kanan Schema dbkemenkumham dan klik Edit Schema... 
- Ubah menjadi nama Schema dbkepegawaianstt
- Aktifkan mysql
- Pada toolbar pilih Database -> Forward Engineer...
- Kemudian Next sampai berhasil diimport kedalam database
- Database dbkepegawaianstt berhasil dibuat

# Create Yii2 Basic

- Download Yii2 Basic melalui link berikut : https://github.com/yiisoft/yii2/releases/download/2.0.18/yii-basic-app-2.0.18.tgz
- Extract file yii-basic-app-2.0.18.tgz
- Masuk folder yii-basic-app-2.0.18
- Cut folder basic ke htdocs atau /var/www/html
- Rename folder basic menjadi kepegawaianstt
- Jika menggunakan linux maka ubah Permissionnya dengan cara :
    - Klik kanan tempat kosong 
    - Pilih Open in Terminal
    - sudo chmod 777 -R kepegawaianstt

# Setting Connect Database

- Buka folder kepegawaianstt dengan menggunakan Text Editor supaya mudah
- Buka file kepegawaianstt/config/db.php
- Pada baris ke 5 seperti berikut :
```
'dsn' => 'mysql:host=localhost;dbname=yii2basic',
```
- Ubah dbname=yii2basic menjadi dbname=dbkepegawaianstt seperti berikut
```
'dsn' => 'mysql:host=localhost;dbname=dbkepegawaianstt',
```
- Save file tersebut

# Setting cookieValidationKey

- Buka file kepegawaianstt/config/web.php
- Pada baris ke 17 seperti berikut :
```
'cookieValidationKey' => '',
```
- Ubah '', menjadi 'isinya bebas', contoh seperti berikut
```
'cookieValidationKey' => '1',
```
- Save file tersebut

# Setting urlManager

- Buka file kepegawaianstt/config/web.php
- Perhatikan baris 46 sampai 53 seperti berikut
```
/*
'urlManager' => [
    'enablePrettyUrl' => true,
    'showScriptName' => false,
    'rules' => [
    ],
],
*/
```
- Hapus tanda /* pada baris 46 dan hapus tanda */ pada baris 53 seperti berikut
```
'urlManager' => [
    'enablePrettyUrl' => true,
    'showScriptName' => false,
    'rules' => [
    ],
],
```
- Pada baris 49 seperti berikut 
```
'showScriptName' => false,
```
- Ubah false menjadi true seperti berikut
```
'showScriptName' => true,
```
- Save file tersebut

# Create Model

- Buka URL : http://localhost/kepegawaianstt/web/index.php/gii
- Pilih Model Generator
- Pada field Table Name masukkan table agama
- Otomatis field Model Class Name akan terisi dengan nama Agama
- Kemudian scroll ke paling bawah dan klik tombol Preview
- Scroll lagi ke paling bawah dan klik tombol Generate
- Model Agama berhasil dibuat
- Lakukan hal yang sama terhadap table berikut secara berurutan :
    - bagian
    - subbbagian
    - gol
    - pegawai

# Create CRUD

- Buka URL : http://localhost/kepegawaianstt/web/index.php/gii
- Pilih CRUD Generator
- Field Model class isinya app\models\Agama
- Field Search Model class isinya app\models\AgamaSearch
- Field Controller class isinya app\controllers\AgamaController
- Kemudian scroll ke paling bawah dan klik tombol Preview
- Scroll lagi ke paling bawah dan klik tombol Generate
- CRUD Agama berhasil dibuat
- Lakukan hal yang sama terhadap table berikut secara berurutan :
    - bagian
    - subbbagian
    - gol
    - pegawai

# Setting Navbar

- Buka file kepegawaianstt/views/layouts/main.php
- Pada baris ke 35 seperti berikut :
```
'class' => 'navbar-inverse navbar-fixed-top',
```
- Ubah kode tersebut menjadi komentar seperti berikut 
```
// 'class' => 'navbar-inverse navbar-fixed-top',
```
- Pada baris 42 dan 43 seperti berikut :
```
['label' => 'About', 'url' => ['/site/about']],
['label' => 'Contact', 'url' => ['/site/contact']],
```
- Tambahkan baris baru antara baris tersebut sehingga baris 43 kosong seperti berikut :
```
['label' => 'About', 'url' => ['/site/about']],

['label' => 'Contact', 'url' => ['/site/contact']],
```
- Pada baris 43 yang kosong tambahkan kode berikut :
```
['label' => 'Master Data',
    'items' => [
        ['label' => 'Pegawai', 'url' => ['/pegawai']],
        ['label' => 'Agama', 'url' => ['/agama']],
        ['label' => 'Bagian', 'url' => ['/bagian']],
        ['label' => 'Sub Bagian', 'url' => ['/subbbagian']],
        ['label' => 'Gol', 'url' => ['/gol']],
    ],
],
```
- Sehingga terlihat seperti berikut :
```
['label' => 'About', 'url' => ['/site/about']],
['label' => 'Master Data',
    'items' => [
        ['label' => 'Pegawai', 'url' => ['/pegawai']],
        ['label' => 'Agama', 'url' => ['/agama']],
        ['label' => 'Bagian', 'url' => ['/bagian']],
        ['label' => 'Sub Bagian', 'url' => ['/subbbagian']],
        ['label' => 'Gol', 'url' => ['/gol']],
    ],
],
['label' => 'Contact', 'url' => ['/site/contact']],
```
- Save file tersebut

# Setting Bootstrap

- Buka URL : https://bootswatch.com/3/
- Cari Themes yang diinginkan
- Jika sudah Klik tanda panah bawah disamping tombol Download Themes yang dipilih
- Kemudian Pilih bootstrap.css
- Tekan CTRL + A pada kodenya
- Tekan CTRL + C untuk menyalin kodenya
- Buka URL : http://localhost/kepegawaianstt/web/
- Klik kanan pada area kosong
- Pilih View Page Source
- Tekan CTRL + F dan isi bootstrap.css
- Contoh kodenya seperti berikut
```
<link href="/kepegawaianstt/web/assets/9dd03638/css/bootstrap.css" rel="stylesheet">
```
- Antara kata assets/ dan /css dapat dilihat nama folder 9dd03638
- Buka folder kepegawaianstt/web/assets
- Kemudian cari folder 9dd03638
- Kemudian buka file 9dd03638/css/bootstrap.css
- Tekan CTRL + A pada kodenya
- Tekan CTRL + V untuk diganti dengan kode bootstrap.css sesuai Themes yang baru
- Save file tersebut

# Setting attributeLabels()

- Buka file kepegawaianstt/models/Agama.php
- Cari fungsi berikut :
```
public function attributeLabels()
{
    ...
}
```
- Fungsi diatas digunakan untuk menampilkan label pada web
- Contoh :
```
public function attributeLabels()
{
    return [
        'id' => 'ID',
        'nama' => 'Nama',
    ];
}
```
- Pada kode diatas 'nama' adalah kolom dan 'Nama' adalah tampilan di web
- Supaya memudahkan user maka 'Nama' diganti menjadi 'Agama' seperti berikut :
```
public function attributeLabels()
{
    return [
        'id' => 'ID',
        'nama' => 'Agama',
    ];
}
```
- Save file tersebut
- Contoh diatas merupakan cara mengganti label kolom table yang akan ditampilkan di web

# Create Dummy Data

- Buka URL berikut :
    - http://localhost/kepegawaianstt/web/index.php/agama
    - http://localhost/kepegawaianstt/web/index.php/bagian
    - http://localhost/kepegawaianstt/web/index.php/subbbagian
    - http://localhost/kepegawaianstt/web/index.php/gol
    - http://localhost/kepegawaianstt/web/index.php/pegawai
- Jika tidak dapat diakses maka ulangi langkah sebelum-sebelumnya
- Jika seluruh URL dapat diakses maka coba membuat Dummy Data pada masing-masing table