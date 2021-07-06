<!DOCTYPE html>
<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$tanamans = query("SELECT * FROM tanaman WHERE tanaman_id=$id")[0];
$foto_tanamans = query("SELECT * FROM foto_tanaman WHERE tanaman_id=$id");

$kategori_tanaman_id = $tanamans["kategori_tanaman_id"];
$penempatan_id = $tanamans["penempatan_id"];
$daerah_id = $tanamans["daerah_id"];
$kategori_growth_id = $tanamans["kategori_growth_id"];

$kategori_tanamans = query("SELECT * FROM kategori_tanaman WHERE kategori_tanaman_id=$kategori_tanaman_id")[0];

$penempatans = query("SELECT * FROM penempatan WHERE penempatan_id=$penempatan_id")[0];
$daerahs = query("SELECT * FROM daerah WHERE daerah_id=$daerah_id")[0];

$fase_pertanamans = query("SELECT * FROM fase_pertanaman WHERE kategori_growth_id=$kategori_growth_id")[0];
$fase_pertanaman_id = $fase_pertanamans["fase_pertanaman_id"];
$fase_growth_id = $fase_pertanamans["fase_growth_id"];

$usias = query("SELECT * FROM usia WHERE tanaman_id=$id");

$kelebihans = query("SELECT * FROM kelebihan WHERE tanaman_id=$id");
$kekurangans = query("SELECT * FROM kekurangan WHERE tanaman_id=$id");
$khasiats = query("SELECT * FROM khasiat WHERE tanaman_id=$id");

$harga_tanamans = query("SELECT * FROM harga_tanaman WHERE tanaman_id=$id");

$fungsi_pertanamans = query("SELECT * FROM fungsi_pertanaman WHERE tanaman_id=$id");

?>
<title>Detail Tanaman <?php echo $tanamans["tanaman_nama"] ?></title>
<style>
    /*each image is referenced twice in the HTML, but each image only needs to be updated in the CSS*/
    .image1 {
      content: url("<?php echo $foto_tanamans[0]["foto_url"]; ?>")
    }
    /* style carousel 2 */
    .carousel-open:checked+.carousel-item {
      position: static;
      opacity: 100;
    }

    .carousel-item {
      -webkit-transition: opacity 0.6s ease-out;
      transition: opacity 0.6s ease-out;
    }

    #carousel-1:checked~.control-1,
    #carousel-2:checked~.control-2,
    #carousel-3:checked~.control-3 {
      display: block;
    }

    .carousel-indicators {
      list-style: none;
      margin: 0;
      padding: 0;
      position: absolute;
      bottom: 2%;
      left: 0;
      right: 0;
      text-align: center;
      z-index: 10;
    }

    #carousel-1:checked~.control-1~.carousel-indicators li:nth-child(1) .carousel-bullet,
    #carousel-2:checked~.control-2~.carousel-indicators li:nth-child(2) .carousel-bullet,
    #carousel-3:checked~.control-3~.carousel-indicators li:nth-child(3) .carousel-bullet {
      color: #2b6cb0;
      /*Set to match the Tailwind colour you want the active one to be */
    }

    .content {
      display: none;
    }

    .content-active {
      display: block;
    }
</style>

</head>

<body>

<?php include_once 'layout/navbar.php';?>
  
  <div class="container text-center justify-items-center mx-auto">
    <div class="md:grid grid-cols-12 gap-2">
      <div class="md:col-start-2 col-end-3 flex justify-center py-16">
        <div class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-white text-black">
        <a href="https://twitter.com/share?ref_src=twsrc%5Etfw" class="twitter-share-button" data-show-count="false">Tweet</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            <em class="sm:text-4xl">&nbsp;</em>
          </a>
        </div>
      </div>

      <!-- PUNYA TITAN -->
      <div class="md:col-start-4 col-end-6 flex justify-center py-16">
          <div class="object-contain h-60 w-60 image1 rounded-lg border-green-600 border-opacity-50 border-2 border-solid">
          </div>
      </div>

      <div class="col-start-7 col-end-12 md:flex">
        <header>
          <div class="md:flex justify-center lg:py-16 ">
            <div class="p-8  my-auto ">
              <div class="text-left"><span class="text-gray-600 text-xl"><?php echo $kategori_tanamans["kategori_tanaman_nama"]; ?></span>
              <span class="text-gray-600 text-xl">
              <?php
              if ($tanamans["indoorflag"]==0){
                echo "Outdoor";
              } elseif ($tanamans["indoorflag"]==1){
                echo "indoor";
              }
                elseif ($tanamans["indoorflag"]==2){
                  echo "Indoor dan Outdoor";
              }
              ?> 
              </span>
            </div>
              <h1 class="text-black-100 text-2xl text-left font-bold"><?php echo $tanamans["tanaman_nama"]; ?></h1>
              
              <?php if (empty($tanamans["rerata_harga"])){} else { 
              ?>
              <p class=" text-gray-600 text-2xl text-left"><?php echo $tanamans["rerata_harga"]; ?> </p>
              <p class=" text-left"><?php echo $tanamans["ket_harga"]; ?> </p>
              <?php }?>
              <div class='px-5 py-3'>
                <h3 class="font-bold text-xs text-center">FUNGSI TANAMAN</h3>
                <!-- This is the tags container -->
                <div class='my-3 flex flex-wrap -m-1 justify-center'>
                  <?php foreach ($fungsi_pertanamans as $fungsi_pertanaman){ 
                    $fungsi_id = $fungsi_pertanaman["fungsi_id"][0];
                    $fungsis = query("SELECT * FROM fungsi WHERE fungsi_id=$fungsi_id")[0];
                    ?>
                  <span
                    class="m-1 bg-green-100 hover:bg-gray-300 rounded-full px-2 font-bold text-sm text-center leading-loose cursor-pointer"><?php echo $fungsis["fungsi_nama"]; ?></span>
                  <?php }?>  
                </div>
              </div>
            </div>
        </header>
      </div>
    </div>

    <div class="text-center mb-5">
      <h1 class="text-lg text-center text-green-800 md:text-3xl font-bold mb-2">Galeri Tanaman</h1>
    </div>

    <div class="container my-4 mx-auto md:px-10 justify-center">
      <div class="flex flex-wrap -mx-1 lg:-mx-4 justify-center">
          <?php foreach ($foto_tanamans as $foto_tanaman) { ?>
          <!-- Column -->
          <div class="my-1 px-1 w-full md:w-1/2 lg:my-4 lg:px-4 lg:w-1/4">
            <!-- Article -->
            <article class="overflow-hidden rounded-lg shadow-lg border-green-600 border-opacity-50 border-2 border-solid">
                    <img class="object-cover md:object-cover h-60 w-full" src="<?php echo $foto_tanaman["foto_url"]; ?>">
                <header class="flex h-16 bg-green-800 items-center justify-between leading-tight p-2 md:p-4">
                    <h1 class="text-base md:text-base text-white text-center font-bold"><?php echo $foto_tanaman["foto_desc"]; ?></h1>
                  </header>
            </article>
          </div>
          <?php }?>

      </div>
    </div>
    
    <div class="bg-gradient-to-tl to-blue-500 text-white font-semibold flex flex-col">
      <div class="flex flex-row-reverse flex-wrap m-auto">
        <a href="fototanamanberbagaitempat.php?id=<?php echo $id?>">
          <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl transition-colors duration-150 hover:bg-yellow-800">
              <div class="mt-8">
                  <div class="flex">
                      <p class="inline-flex items-center h-10 px-10 m-2 text-lg text-gray-50 font-bold">Lihat Gambar Lainnya</p>
                  </div>
              </div>
          </div>  
          </a>
      </div>
    </div>

    <!-- PUNYA TITAN -->

    <!-- PUNYA GIBE -->
    <!-- NavTab -->
    <div class="tab-header my-20 mx-auto flex text-center justify-center">
      <a
        class="sm:px-6 py-3 w-1/2 sm:w-auto justify-center sm:justify-start border-b-2 title-font font-medium inline-flex items-center leading-none border-gray-200 cursor-pointer hover-tab active-tab text-green-500 hover:bg-gray-100 transition-colors duration-150 md:text-lg border-green-500 tracking-wider rounded-t">
        Perawatan </a>
      <a
        class="sm:px-6 py-3 w-1/2 sm:w-auto justify-center sm:justify-start border-b-2 title-font font-medium inline-flex items-center leading-none cursor-pointer hover-tab text-green-500 hover:bg-gray-100 transition-colors duration-150 md:text-lg border-green-500 tracking-wider rounded-t">
        Penanaman </a>
      <a
        class="sm:px-6 py-3 w-1/2 sm:w-auto justify-center sm:justify-start border-b-2 title-font font-medium inline-flex items-center leading-none border-gray-200 cursor-pointer hover-tab text-green-500 hover:bg-gray-100 transition-colors duration-150 md:text-lg border-green-500 tracking-wider rounded-t">
        Pertumbuhan </a>
    </div>
    <!-- End Navtab -->
    <!-- content Start -->
    <div class="konten">
      <div class="perawatan content content-active">
      <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Perawatan</h1>
        <div class="py-12 bg-white">
          <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-10">
            </div>
            <div class="mt-10">
              <dl class="space-y-10 md:space-y-0 md:grid md:grid-cols-2 md:gap-x-8 ">
                <div class="relative">
                  <dt>
                    <div class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-white text-black">
                      <i class="fas fa-tree sm:text-4xl "></i>
                    </div>
                    <p
                      class="text-left ml-16 text-lg items-center justify-center leading-6 font-extrabold text-gray-900 sm:text-2xl">
                      Pemupukan</p>
                  </dt>
                  <dd class="text-left mt-2 ml-16 font-extrabold text-blue-500 h-36">
                    <br>
                    
                    <?php echo $tanamans["jenis_pupuk_1"]; ?> : <?php echo $tanamans["frek_pemupukan_1"]; ?> 
                    <br>
                    <br>
                    <?php if(empty($tanamans["jenis_pupuk_2"])){} else { ?>
                    <?php echo $tanamans["jenis_pupuk_2"]; ?> : <?php echo $tanamans["frek_pemupukan_2"]; ?> 
                    <?php }?>
                    <br>

                    <!-- <br>
              Pupuk Daun : 1 kali/Minggu<br>
              <br>
              Pupuk Akar : 1 Kali/3 Bulan<br>
              <br>
              <i class="fas fa-cloud-rain text-black sm:text-3xl"></i>&nbsp &nbsp 2 Kali/Minggu -->
                  </dd>
                  <dt>

                    <div class="bg-green-100 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md">
                      <h4 class="font-semibold text-lg mb-1">Kesimpulan</h4>
                      <p class="leading-tight text-justify">
                      <?php echo $tanamans["kesimpulan_pemupukan"]; ?>
                      </p>
                    </div>
                    </dd>
                </div>

                <div class="relative">
                  <dt>
                    <div class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-white text-black">
                      <i class="fas fa-tint sm:text-4xl"></i>
                    </div>
                    <p
                      class="text-left ml-16 text-lg leading-6 font-extrabold text-gray-900 sm:text-2xl">
                      Penyiraman</p>
                  </dt>
                  <dd class="mt-2 ml-16 text-left font-extrabold text-blue-500 h-36">
                  <br>
                  <i class="far fa-sun sm:text-3xl"></i>&nbsp &nbsp<?php echo $tanamans["frek_penyiraman_cerah"]; ?>
                  <br>
                  <br>
                  <?php if(empty($tanamans["frek_penyiraman_hujan"])){} else { ?>
                  <i class="fas fa-cloud-rain sm:text-2xl">&nbsp &nbsp</i><?php echo $tanamans["frek_penyiraman_hujan"]; ?>
                  <?php } ?></dd>
                  <dt>
                    <div class="bg-green-100 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md">
                      <h3 class="font-semibold text-lg mb-1">Kesimpulan</h3>
                      <p class="leading-tight text-justify">
                      <?php echo $tanamans["kesimpulan_penyiraman"]; ?>.
                      </p>
                    </div>
                    </dd>
                  </dt>
                </div>
              </dl>
            </div>
          </div>
        </div>
      </div>
      <!-- EndPerawatan -->
      <!--Frekuensi Penanaman End-->
      <div class="penanaman content">
      <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Penanaman</h1>
        <div class="py-12 bg-white">
          <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-10">
            </div>
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
              <div class="mt-10">
                <dl class="md:grid md:grid-cols-2 md:gap-x-8">

                  <div class="relative">
                    <dt>
                      <div class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-white text-black">
                        <!-- Heroicon name: outline/globe-alt -->
                        <i class="fas fa-thermometer-three-quarters sm:text-4xl"></i>
                      </div>
                      <p class="text-left ml-16 text-lg leading-6 font-extrabold text-gray-900 sm:text-2xl">Penempatan Tanaman</p>
                    </dt>
                    <dd class="text-left mt-2 ml-10 font-extrabold text-blue-500">
                      <i class="far fa-sun text-white sm:text-2xl"></i><?php echo $penempatans["penempatan_nama"]; ?><br>
                      <!-- <br>
                      Menghadap Matahari -->
                    </dd>
                    <dt>
                      <div class="bg-green-100 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md">
                        <h3 class="font-semibold text-lg mb-1">Kesimpulan</h3>
                        <p class="leading-tight text-justify">
                        <?php echo $penempatans["penempatan_desc"]; ?>
                        </p>
                      </div>
                      </dd>
                  </div>

                  <!-- Tambah daerah ideal -->
                  <div class="relative">
                    <dt>
                      <div class="absolute flex items-center justify-center h-12 w-12 rounded-md bg-white text-black">
                        <i class="fas fa-mountain sm:text-4xl "></i>
                      </div>
                      <p
                        class="text-left ml-16 text-lg items-center justify-center leading-6 font-extrabold text-gray-900 sm:text-2xl">
                        Daerah Penanaman</p>
                    </dt>
                    <dd class="mt-2 ml-10 font-extrabold text-blue-500 text-left">
                      <i class="far fa-sun text-white sm:text-2xl"></i><?php echo $daerahs["daerah_nama"]; ?><br>
                      <!-- <br>
                  Dataran Tinggi
                  <br> -->
                    </dd>
                    <dt>
                      <div class="bg-green-100 col-start-6 col-end-10 p-4 rounded-xl my-4 mr-auto shadow-md">
                        <h3 class="font-semibold text-lg mb-1">Kesimpulan</h3>
                        <p class="leading-tight text-justify">
                        <?php echo $daerahs["daerah_desc"]; ?>
                        </p>
                      </div>
                      </dd>
                  </div>
                </dl>
              </div>
              <div class="flex justify-center mx-auto mt-20 mb-10">
                <div class="relative">
                  <div class="flex mx-auto justify-center">
                    <div class="mr-10">
                      <img src="/BisditGardening2021/TailwindCSS/dist/img/Plant height 1.svg" alt="" class="h-auto">
                    </div>
                    <div class="text-left items-stretch self-center justify-center">
                      <p class="text-lg items-center justify-center font-extrabold text-gray-900 sm:text-2xl">
                        Teknik Menanam</p>
                      <p class="text-white font-extrabold text-blue-500"><?php echo $tanamans["teknik_menanam"]; ?></p>
                    </div>
                  </div>
                  </dd>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- PUNYA GIBE -->
      <!-- Pertumbuhan Tanaman -->
      <div class="pertumbuhan content">
      <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Usia Pertumbuhan Tanaman</h1>
        <div class="shadow-lg pb-5 px-5 rounded-lg">
          <div class="mx-auto text-center">
            <div class="text-center mb-10">
              <!-- <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Usia Pertumbuhan Tanaman</h1> -->
            </div>
          </div>
          <div class="mx-auto flex justify-between">
            <?php foreach ($usias as $usia){?>
            <div class="card w-4/5 mr-2">
              <img src="<?php echo $usia["foto_url"]; ?>" class="object-contain md:object-cover h-60 w-full rounded-lg shadow-lg border-2 border-black" alt="">
              <div class="caption">
                <h1 class="text-xl font-bold"><?php echo $usia["usia_jenis"]; ?></h1>
                <h1 class="text-xl text-center text-blue-400 font-bold "><?php echo $usia["usia_angka"]; ?></h1>
              </div>
            </div>
            <?php }?>
          </div>
        </div>

      </div>
    </div>
    </div>
    <!-- end content -->

    <!-- End Pertumbuhan Tanaman -->
    <div class="text-center mb-10 mt-10">
      <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">
        Sudah punya tanaman ini? Cek pertumbuhan tanaman Anda!
      </h1>
    </div>
    <div class="mb-10 bg-gradient-to-tl to-blue-500 text-white font-semibold flex flex-col">
      <div class="flex flex-row-reverse flex-wrap m-auto">
        <a href="growthprogress.php?id=<?= $kategori_growth_id?>&fase=<?= $fase_growth_id?>&tanamanid=<?= $id?>">
          <div class="relative bg-green-800 rounded-3xl w-34 my-4 shadow-xl transition-colors duration-150 hover:bg-yellow-800">
              <div class="mt-8">
                  <div class="flex">
                      <p class="inline-flex items-center h-14 px-10 m-2 text-lg text-gray-50 font-bold">Progress Pertumbuhan Tanaman</p>
                  </div>
              </div>
          </div>  
          </a>
      </div>
    </div>

    <!-- PUNYA RENDRA -->
    <div class="lg:p-50 lg:pt-20 lg:pb-10 p-10 mt-4">
      <div class="text-center mb-10">
        <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Waktu Ideal untuk Menanam
        </h1>

      </div>
      <div class="grid md:grid-cols-4 grid-cols-3 lg:grid-cols-6 m-5 mb-10">
      <div class="
        <?php
              if ($tanamans["bulan_1"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">JAN</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_2"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">FEB</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_3"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">MAR</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_4"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">APR</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_5"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">MEI</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_6"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">JUN</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_7"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">JUL</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_8"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">AGU</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_9"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">SEP</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_10"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">OKT</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_11"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">NOV</h2>
          </div>
        </div>
        <div class="
        <?php
              if ($tanamans["bulan_12"]<=0){
                echo "bg-pink-200";
              } else{
                echo "bg-green-500";
              }
        ?> 
        overflow-hidden m-1 p-3 rounded">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-center text-lg h-2 mb-8">DES</h2>
          </div>
        </div>
      </div>
      <div class="w-5 h-5 rounded bg-green-500 ml-10 inline-block"></div>
      <span class="ml-3">Waktu Ideal</span>
    </div>

    <!-- Kelebihan Kekurangan -->
    <div class="lg:p-50 lg:pb-10 lg:pt-10 pb-10 pt-10">
      <div class="grid md:grid-cols-2 m-5 mb-5">
        <div class="bg-green-100 overflow-hidden m-5 p-5 rounded shadow-lg">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-xl h-2 mb-8 text-green-800">Kelebihan</h2><br>
            <?php foreach ($kelebihans as $kelebihan) { ?>
            <div class="mb-4">
              <div class="pb-6 md:pb-0 flex flex-col">
                <div>
                    <!-- <label class="bg-white input-field inline-flex items-baseline border-none shadow-md bg-white p-4 rounded"> -->
                    <ul class="list-disc">
                      <li ><p class="flex-none text-dusty-blue-darker select-none leading-none text-green-600 font-bold">
                      <?php echo $kelebihan["kelebihan"]; ?>
                      </p></li>
                    </ul>
                    <!-- </label> -->
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
        <div class="bg-pink-200 overflow-hidden m-5 p-5 rounded shadow-lg">
          <div class="m-2 text-justify text-sm">
            <h2 class="font-bold text-xl h-2 mb-8 text-red-800">Kekurangan</h2><br>
            <?php foreach ($kekurangans as $kekurangan) { ?>
            <div class="mb-4">
              <div class="pb-6 md:pb-0 flex flex-col">
                <div>
                  <ul class="list-disc">
                    <li><p class="flex-none text-dusty-blue-darker select-none leading-none text-red-600 font-bold">
                        <?php echo $kekurangan["kekurangan"]; ?>
                    </p></li>
                  </ul>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>

<!-- Khasiat -->

<?php
if (empty($khasiats)){} else{?>
<div class="lg:p-80 lg:pb-10 lg:pt-10 pb-10 pt-10">
    <div class="bg-orange-200 overflow-hidden m-5 p-5 rounded shadow-lg">
      <div class="m-2 text-justify text-sm">
        <h2 class="font-bold text-xl h-2 mb-8 text-orange-800">Khasiat</h2><br>
        <?php foreach ($khasiats as $khasiat) { ?>
        <div class="mb-4">
          <div class="pb-6 md:pb-0 flex flex-col">
            <div>
              <ul class="list-disc">
                <li><p class="flex-none text-dusty-blue-darker select-none leading-none text-orange-600 font-bold">
                    <?php echo $khasiat["khasiat"]; ?>
                </p></li>
              </ul>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php }?>

    



    <!-- Link ke mitra -->
    <?php if (empty($harga_tanamans)){}else {
      ?>
    <div class="p-5">
      <div class="pt-12 pb-20">
        <div class="text-center mb-1 p-3">
          <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mt-10">Produk Ini Tersedia Di</h1>
        </div>
        <div class="flex justify-center">
          <!-- <div class="grid grid-cols-2"> -->
                <?php foreach ($harga_tanamans as $harga_tanaman) {
                  
                  $mitra_id = $harga_tanaman["mitra_id"];
                  $mitra = query("SELECT * FROM mitra WHERE mitra_id=$mitra_id")[0];
                ?>
        <div class="w-3/12 px-6">
            <div class="bg-white rounded-3xl my-4 shadow-xl ">
                <div class="image overflow-hidden py-5 px-5">
                    <img class="h-auto w-full mx-auto"
                        src="img\<?php echo $mitra["mitra_foto"]; ?>.jpg"
                        alt="">
                </div>
                <h1 class="text-gray-900 font-bold text-xl text-center leading-8 my-1 "><a href="profilmitra.php?id=<?= $mitra["mitra_id"];?>"><?php echo $mitra["mitra_nama"]; ?></a></h1>
                <div class="my-4"></div>
                <a class="text-center block w-full text-blue-800 text-sm font-semibold rounded-lg hover:bg-gray-100 focus:outline-none focus:shadow-outline focus:bg-gray-100 hover:shadow-xs p-3 my-4" href="profilmitra.php?id=<?= $mitra["mitra_id"];?>">Cari Info Selengkapnya</a>
            </div>
        </div>
              <?php }?>
          <!-- </div>   -->
        </div>
  </div>
  </div> <?php } ?>


  <!-- PUNYA RENDRA -->
  <!--Footer-->
  				<!--Footer-->
          <?php include_once 'layout/footer.php';?>
  <script>
    //JS to switch slides and replace text in bar//
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("description");
      var captionText = document.getElementById("caption");
      if (n > slides.length) {
        slideIndex = 1
      }
      if (n < 1) {
        slideIndex = slides.length
      }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" opacity-100", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " opacity-100";
      captionText.innerHTML = dots[slideIndex - 1].alt;
    }
  </script>
  <script>
    let tabHeader = document.getElementsByClassName("tab-header")[0];

    let headIsi = document.getElementsByClassName("konten")[0];
    let konten = headIsi.getElementsByClassName("content");

    let tabsPane = tabHeader.getElementsByTagName("a");
    for (let i = 0; i < tabsPane.length; i++) {
      tabsPane[i].addEventListener("click", function () {
        tabHeader.getElementsByClassName("active-tab")[0].classList.remove("active-tab");
        tabsPane[i].classList.add("active-tab");
        headIsi.getElementsByClassName("content-active")[0].classList.remove("content-active");
        konten[i].classList.add("content-active")
      });

    }
  </script>
</body>

</html>