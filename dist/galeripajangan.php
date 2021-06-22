<!DOCTYPE html>
<html lang="en">
<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$galeri_pajangans = query("SELECT * FROM galeri_pajangan");

?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

<!-- galeri pajangan -->
<div class="pt-16"> 
  <div class="grid grid-cols-1 gap-6 sm:grid-cols-3 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3">
    <a href="home.php">
      <button class="bg-green-800 hover:bg-yellow-800 text-white font-bold py-2 px-4 mx-32 mb-10 rounded-full"> Kembali 
      </button>
    </a>
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">  Galeri Pajangan Tanaman </h1>
</div>

 <!--Pagination-->
 <div class="flex flex-col items-center my-7">
  <ul class="flex">
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-600 rounded-lg">
        <a class="flex items-center font-bold" href="#">
            <span class="mx-1">previous</span>
        </a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">1</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">2</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">3</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="flex items-center font-bold" href="#">
            <span class="mx-1">Next</span>
        </a>
    </li>
  </ul>
  </div>

<div class="container my-4 mx-auto  md:px-10">
  <div class="flex flex-wrap -mx-1 lg:-mx-4 justify-center">
      <!-- Column -->
      <?php foreach ($galeri_pajangans as $galeri_pajangan){ 
        ?>
      <div class="my-1 px-1 w-full md:w-1/2 lg:my-4 lg:px-4 lg:w-1/4">
          <!-- Article -->
          <article class="overflow-hidden rounded-lg shadow-lg">
              <a href="galeripajangan-detailtanaman.php?id=<?php echo $galeri_pajangan["galeri_pajangan_id"]?>">
                  <img class="object-fill h-60 w-full" src="<?php echo $galeri_pajangan["galeri_foto_url"] ?>">
              <header class="flex h-16 bg-green-800 items-center justify-center leading-tight p-2 md:p-4">
                  <h1 class="text-l text-white text-center font-bold"><?php echo $galeri_pajangan["galeri_foto_judul"] ?></h1>
                </header>
              </a>
          </article>
          <!-- END Article -->
      </div>
      <?php }?>
  </div>
</div>

 <!--Pagination-->
 <div class="flex flex-col items-center my-7">
  <ul class="flex">
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-600 rounded-lg">
        <a class="flex items-center font-bold" href="#">
            <span class="mx-1">previous</span>
        </a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">1</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">2</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="font-bold" href="#">3</a>
    </li>
    <li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
        <a class="flex items-center font-bold" href="#">
            <span class="mx-1">Next</span>
        </a>
    </li>
  </ul>
  </div>
 
				  				<!--Footer-->


<!--Jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!--SlickJS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>
