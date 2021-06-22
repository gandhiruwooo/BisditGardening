<!DOCTYPE html>
<html lang="en">
<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$galeri_pajangan = query("SELECT * FROM galeri_pajangan WHERE galeri_pajangan_id=$id")[0];
$galeri_tanamans = query("SELECT * FROM galeri_tanaman WHERE galeri_pajangan_id=$id");

?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

<!-- galeri pajangan -->
<div class="pt-16 pb-20"> 
  <div class="grid grid-cols-1 gap-6 sm:grid-cols-3 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3">
    <a href="galeripajangan.php">
      <button class="bg-green-800 hover:bg-yellow-800 text-white font-bold py-2 px-4 mx-32 mb-10 rounded-full"> Kembali 
      </button>
    </a>
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2"> Detail Galeri Pajangan </h1>
</div>
<div class="flex items-center justify-center px-10 ">
    <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-2 xl:grid-cols-2">
        <!-- foto -->
        <div class="relative rounded-3xl my-4">
            <div class="mt-5">
                <div class="flex">
                    <img src="<?php echo $galeri_pajangan["galeri_foto_url"]?>" class= "object-fill h-96 w-96" style="border-radius: 5%">
                </div>
            </div>
        </div>  
        <!--list-->
        <div class="grid-rows-3 grid-flow-col mt-10">
        <div class= "relative rounded-3xl my-4">
                <div class="space-x-2">
                    <p class="items-center h-14 px-4 text-xl text-black font-bold"> Keterangan Tanaman dalam Foto</p>
                      <!--list tanaman-->
                </div>
        
        <?php foreach ($galeri_tanamans as $galeri_tanaman){

        if ($galeri_tanaman["tanaman_id"]=="0") {
       ?>
        <a href="<?php echo $galeri_tanaman["sumber_lain"] ?>">
            <div class="relative bg-black rounded-3xl my-1 shadow-xl transition-colors duration-150 hover:bg-green-800">
                <div class="mt-5">
                        <p class="items-center pt-3 h-14 px-4 m-2 text-lg text-gray-50 font-bold my-2">
                        <?php echo $galeri_tanaman["urutan_pajangan"]?>. <?php echo $galeri_tanaman["nama_tanaman"] ?>
                        </p>
                </div>
            </div>  
        </a> 
        <?php } else {
          $tanaman_id = $galeri_tanaman["tanaman_id"];
          
          $tanaman = query("SELECT * FROM tanaman WHERE tanaman_id=$tanaman_id")[0];
          ?>
          
          <a href="detailtanaman.php?id=<?= $galeri_tanaman["tanaman_id"];?>">
            <div class="relative bg-black rounded-3xl my-1 shadow-xl transition-colors duration-150 hover:bg-green-800">
                <div class="mt-5">
                        <p class="items-center pt-3 h-14 px-4 m-2 text-lg text-gray-50 font-bold my-2"><?php echo $galeri_tanaman["urutan_pajangan"]?>. <?php echo $tanaman["tanaman_nama"]?> </p>
                </div>
            </div>  
        </a> 
        <?php }}?>

        </div>
        </div>
    </div>
</div>
</div>
 
<!--Footer-->
<?php include_once 'layout/footer.php';?>

<!--Jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!--SlickJS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>
