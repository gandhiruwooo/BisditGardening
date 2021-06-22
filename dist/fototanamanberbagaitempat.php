<!DOCTYPE html>
<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$foto_tanamans = query("SELECT * FROM foto_tanaman WHERE tanaman_id=$id");

?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

<div class="pt-16"> 
  <div class="grid grid-cols-1 gap-6 sm:grid-cols-3 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3">
    <a href="home.html">
      <button class="bg-green-800 hover:bg-yellow-800 text-white font-bold py-2 px-4 mx-32 mb-10 rounded-full"> Kembali 
      </button>
    </a>
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">  Galeri Tanaman </h1>
</div>


  <div class="container my-4 mx-auto  md:px-10">
    <div class="flex flex-wrap -mx-1 lg:-mx-4">
        <!-- Column -->
        <?php foreach ($foto_tanamans as $foto_tanaman) {?>
        <div class="my-1 px-1 w-full md:w-1/2 lg:my-4 lg:px-4 lg:w-1/4">
          <!-- Article -->
          <article class="overflow-hidden rounded-lg shadow-lg">
                  <img src="<?php echo $foto_tanaman["foto_url"] ?>" class="block h-80 w-full image1">
              <header class="flex bg-green-800 items-center justify-between leading-tight p-2 md:p-4">
                  <h1 class="text-xl text-white text-center font-bold"><?php echo $foto_tanaman["foto_desc"] ?></h1>
                </header>
              </a>
          </article>
        </div>
        <?php } ?>

    </div>
  </div>
  <?php include_once 'layout/footer.php';?>

</body>
</html>
  