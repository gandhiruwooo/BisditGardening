<!doctype html>
<html>

<head>
<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$alats = query("SELECT * FROM alat WHERE alat_id=$id")[0];

$kategori_alat_ids = $alats["kategori_alat_id"];

$alatss = query("SELECT * FROM alat WHERE kategori_alat_id=$kategori_alat_ids LIMIT 0,4");

$kategori_alats = query("SELECT * FROM kategori_alat WHERE kategori_alat_id=$kategori_alat_ids")[0];

$harga_alats = query("SELECT * FROM harga_alat WHERE alat_id=$id");



?>



<title>Profil Mitra</title>
</head>
<body>
  
<?php include_once 'layout/navbar.php';?>

  <section class="text-gray-600 body-font overflow-hidden">
    <div class="container px-2 py-24 mx-auto">
      <div class="lg:w-4/5 mx-auto flex flex-wrap justify-center">
        <img alt="ecommerce" width="350" height="250" class="object-cover object-center rounded-xl border-green-600 border-opacity-50 border-2 border-solid" src="<?php echo $alats["alat_gambar"]; ?>" />
        <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
          <h2 class="text-lg title-font text-gray-500 tracking-widest"><?php echo $kategori_alats["kategori_alat_nama"]; ?></h2>
          <h1 class="text-gray-900 text-3xl title-font font-medium mb-1"><b><?php echo $alats["alat_nama"]; ?></b></h1>
          <p class="leading-relaxed text-lg"><?php echo $alats["alat_desc"]; ?></p>
          <div class="py-6 flex flex-col justify-center sm:py-8">
            <div class="grid lg:grid-cols-2 md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-4 px-4">
              <!-- START SMALL CARD ROUNDED -->
              <?php foreach ($harga_alats as $harga_alat) { 
                  $mitra_id = $harga_alat["mitra_id"];
                  $mitras = query("SELECT * FROM mitra WHERE mitra_id=$mitra_id");
                  foreach ($mitras as $mitra) {                 
                ?>
              <a href="profilmitra.php?id=<?= $mitra["mitra_id"];?>">
              <div class="bg-gray-100 border-green-600 dark:bg-gray-800 bg-opacity-95 border-opacity-60  | p-4 border-solid  rounded-2xl border-2 | flex justify-around cursor-pointer | hover:bg-green-400 dark:hover:bg-green-600 hover:border-transparent | transition-colors duration-500">
                <img class="w-16 h-16 object-cover" src="img\<?php echo $mitra["mitra_foto"]; ?>.jpg" alt="" />
                <div class="flex flex-col justify-center">
                  
                  <p class="text-gray-900 dark:text-gray-300 font-semibold"><?php echo $mitra["mitra_nama"]?></p>
                  <p class="text-black dark:text-gray-100 text-justify font-semibold"><?php echo $harga_alat["harga"]?></p>
                </div>
              </div>
                  </a>
              <!-- END SMALL CARD ROUNDED -->
              <?php }} ?>  

          </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <h1 class=" text-center text-green-800 text-3xl title-font font-medium mb-1 py-1"><b>Alat Sejenis</b></h1>
    <div class="flex items-center justify-center">
      <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
        <?php foreach ($alatss as $alat) {
          if ($alat["alat_id"]==$id){}else{
          ?>
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl">
            <div class="mt-8">
              <div class="flex space-x-2">
                <img src="<?php echo $alat["alat_gambar"]?>" class="object-contain md:object-cover h-60 w-full" style="border-radius: 5%" />
              </div>
              <p class="text-xl font-semibold my-2"><a href="detailalatkebun.html"><?php echo $alat["alat_nama"]?></a></p>
                <div class="flex space-x-2 text-black-400 text-sm">
                </div>
                <div class="flex space-x-2 text-black-400 text-sm my-3">
                  <!-- svg -->
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                    fill="currentColor" class="bi bi-pin-angle-fill"
                    viewBox="0 0 16 16">
                    <path
                      d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z" />
                  </svg>
                  <p><?php echo $kategori_alats["kategori_alat_nama"]?></p>
                </div>
                <div class="flex space-x-2 text-black-400 text-sm my-3"></div>
                <button class="inline-flex text-white font-semibold bg-green-500 py-1 px-2 focus:outline-none hover:bg-green-600 rounded text-med tex" onclick="document.location='detailalatkebun.php?id=<?= $alat['alat_id'];?>'">Detail</button>
                <br></br>
                <div class="border-t-2"></div>
    
                <div class="flex justify-between">
                  <div class="my-2">
                    <div class="flex space-x-2">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="currentColor" class="bi bi-share"
                        viewBox="0 0 16 16">
                        <path
                          d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z" />
                      </svg>
                      <svg xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="currentColor" class="bi bi-heart"
                        viewBox="0 0 16 16">
                        <path
                          d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                      </svg>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        <?php }} ?>
        </div>
      </div>  
  </section>

  				<!--Footer-->
          <?php include_once 'layout/footer.php';?>
</body> 