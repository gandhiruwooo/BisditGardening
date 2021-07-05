<!doctype html>
<html>
<head>
<?php include_once 'layout/header.php';
require 'layout/function.php';?>

<title>List Mitra</title>
</head>
<body>
  
<?php include_once 'layout/navbar.php';?>

<!--List Mitra-->
    <h1 class=" text-center text-green-900 text-3xl title-font font-medium mb-1 py-1 pt-16"><b>Daftar Mitra</b></h1>
  <div class="container mx-auto my-5 p-5">
    <div class=" md:flex no-wrap md:-mx-2 ">
        <?php foreach ($mitraq as $mitra) { ?>
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
        <?php } ?>
    </div>
  </div>        

  <?php include_once 'layout/footer.php';?>
</body>
</html>