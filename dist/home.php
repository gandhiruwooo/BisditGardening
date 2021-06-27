<!DOCTYPE html>
<html lang="en">
<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$tanaman_ids = array("1","2","3","4");
$galeri_pajangan_id = 1;
$galeri_pajangan = query("SELECT * FROM galeri_pajangan WHERE galeri_pajangan_id=$galeri_pajangan_id")[0];
$galeri_tanamans = query("SELECT * FROM galeri_tanaman WHERE galeri_pajangan_id=$galeri_pajangan_id");
?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

    <!-- temukan tanaman terbaik -->
    <div class="bg-cover bg-center bg-opacity-70 py-96 md:py-24 " style="background-image:url(img/plant.jpg)" pt-96>
        <div class="container px-6 mx-auto ">
            <div class="text-center max-w-2xl mx-auto ">
        <h1 class="text-5xl text-white md:text-3xl font-bold mb-2 py-24">TEMUKAN TANAMAN TERBAIK YANG KAMU INGINKAN</h1>
            </div>
        <div class="pt-2 grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4 flex items-center justify-center">
        <div class="flex">
        <a class="inline-flex items-center h-14 px-14 m-2 text-lg font-bold text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline  hover:bg-white hover:text-green-800" href="caritanaman.php?id=1">TANAMAN HIAS</a>
        </div>
        <div class="flex">
        <a class="inline-flex items-center h-14 px-12 m-2 text-lg font-bold text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline  hover:bg-white hover:text-green-800" href="caritanaman.php?id=2">TANAMAN BUAH</a>
        </div>
        <div class="flex">
        <a class="inline-flex items-center h-14 px-12 m-2 text-lg font-bold text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline  hover:bg-white hover:text-green-800" href="caritanaman.php?id=3">TANAMAN SAYUR</a>
        </div>
        <div class="flex">
        <a class="inline-flex items-center h-14 px-24 m-2 text-lg font-bold text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline  hover:bg-white hover:text-green-800" href="caritanaman.php?id=4"> TOGA</a>
        </div>
    </div>
    </div>
    </div>



<!--tanaman terlaris--> 
<h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2 py-8">Telusuri Tanaman Terpopuler</h1>
    <div class="flex items-center justify-center">
      <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
      <?php foreach ($tanaman_ids as $tanaman_id) { 
            $tanaman = query("SELECT * FROM tanaman WHERE tanaman_id=$tanaman_id")[0];
            $foto_tanaman = query("SELECT * FROM foto_tanaman WHERE tanaman_id = $tanaman_id")[0];
            $kategori_tanaman_id = $tanaman["kategori_tanaman_id"];
            $kategori_tanamans = query("SELECT * FROM kategori_tanaman WHERE kategori_tanaman_id=$kategori_tanaman_id")[0];
            ?>
            <a href="detailtanaman.php?id=<?= $tanaman["tanaman_id"];?>">
          <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl transition-colors duration-150 hover:bg-green-100">
              <div class="mt-8">
                  <div class="flex space-x-2">
                      <img src="<?php echo $foto_tanaman["foto_url"]; ?>" 
                      class="object-contain md:object-cover h-60 w-full" style="border-radius: 5%"/>
                  </div>
                  <p class="text-xl font-semibold my-2"><?php echo $tanaman["tanaman_nama"]; ?></p>
                  <div class="flex space-x-2 text-black-400 text-sm">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                      <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                      <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p><?php echo $kategori_tanamans["kategori_tanaman_nama"]; ?></p> 
                  </div>
                  <div class="flex space-x-2 text-black-400 text-sm my-3">
                      <!-- svg -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
                      <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
                      </svg> 
                       <p><?php echo $tanaman["tinggi_maksimal"]; ?></p> 
                  </div>
    
                  <div class="border-t-2"></div>
    
                  <div class="flex justify-between">
                      <div class="my-2">
                          <div class="flex space-x-2">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
                                  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                                </svg>
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                </svg>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          </a>
          <?php } ?>

      </div>
    </div>
    
<!-- galeri pajangan -->
<div class="pt-16 pb-20"> 
<h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Galeri Pajangan</h1>
<div class="flex items-center justify-center px-10">
    <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-2 xl:grid-cols-2">
        <!-- foto -->
        <div class="relative rounded-3xl my-4">
            <div class="mt-5">
                <div class="flex">
                    <img src="<?php echo $galeri_pajangan["galeri_foto_url"]?>" class= "w-auto" style="border-radius: 5%">
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
        <div class="pt-16">
            <!--tanaman lainnya-->
            <a href="galeripajangan.php">
                <div class="relative bg-black rounded-3xl my-4 shadow-xl transition-colors duration-150 hover:bg-green-800">
                    <div class="mt-5">
                            <p class="items-center pt-4 h-16 px-2 m-2 text-lg text-gray-50 font-bold my-2"> Lihat Galeri Pajangan Lainnya</p>
                    </div>
                </div>
            </a> 
            </div>
        </div>

        </div>
        </div>
    </div>
</div>
</div>
<!-- telusuri alat berkebun-->
<div class="container pt-16 pb-10">
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Cari Alat Berkebun</h1>
    <div class="pt-6 flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
            <?php foreach ($kategori_alatq as $kategori_alat) { ?>
            <a href="carialat.php?id=<?php echo $kategori_alat["kategori_alat_id"]?>">
                    <div class="flex">
                        <p class="inline-flex text-center items-center h-16 px-28 m-auto text-lg font-bold text-white transition-colors duration-150 bg-green-800 rounded-lg focus:shadow-outline  hover:bg-yellow-800"> <?php echo $kategori_alat["kategori_alat_nama"]?> </p>
                    </div> 
            </a> 
            <?php } ?>
        </div>
    </div>
</div>
<!-- telusuri mitra-->
<div class="pt-12 pb-20">
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">Telusuri UMKM Berkebun</h1>
    <div class="flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
            <?php foreach ($mitraq as $mitra) {?>
            <a href="profilmitra.php?id=<?php echo $mitra["mitra_id"]?>">
            <div class="relative bg-white rounded-3xl w-40 my-4 shadow-xl">
                <div class="mt-8">
                    <div class="flex space-x-2">
                        <img src="img/<?php echo $mitra["mitra_foto"] ?>.jpg" class= "w-auto" style="border-radius: 5%">

                    </div>
                </div>
            </div>  
            </a>
            <?php }?>
        </div>
    </div>
</div>
 
<?php include_once 'layout/footer.php';?>

<!--Jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!--SlickJS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>
