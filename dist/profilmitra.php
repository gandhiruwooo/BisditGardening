<!doctype html>
<html>

<head>
<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$mitra = query("SELECT * FROM mitra WHERE mitra_id=$id")[0];

$harga_tanaman_asli = query("SELECT * FROM harga_tanaman WHERE mitra_id=$id");
$harga_alat_asli = query("SELECT * FROM harga_alat WHERE mitra_id=$id");

$harga_tanamans = query("SELECT * FROM harga_tanaman WHERE mitra_id=$id LIMIT 0,4");
$harga_alats = query("SELECT * FROM harga_alat WHERE mitra_id=$id LIMIT 0,4");

$jumlah_tanaman = count($harga_tanaman_asli);
$jumlah_alat = count($harga_alat_asli);
?>



<title>Profil Mitra</title>
</head>
<body>
  
<?php include_once 'layout/navbar.php';?>

   <!--Isi-->
 <div class="container mx-auto my-5 p-5">
    <div class="md:flex no-wrap md:-mx-2 ">
        <!-- Left Side -->
        <div class="w-2/12 px-2">
        <div class="bg-white rounded-3xl my-4 shadow-xl ">
                <div class="image overflow-hidden py-5 px-5">
                    <img class="h-auto w-full mx-auto"
                        src="img\<?php echo $mitra["mitra_foto"]; ?>.jpg"
                        alt="">
                </div>
                <h1 class="text-gray-900 font-bold text-xl text-center leading-8 my-1 "><a href="profilmitra.html"><?php echo $mitra["mitra_nama"]; ?></a></h1>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Contact Us:</h1>
                <h1 class="text-sm text-gray-500 px-2 py-1"><?php echo $mitra["mitra_cp"]; ?> : <?php echo $mitra["mitra_notelp"]; ?></h1>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Kota</h1>
                <h1 class="text-sm text-gray-500 px-2 py-1"><?php echo $mitra["mitra_kota"]; ?> </h1>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Provinsi</h1>
                <h1 class="text-sm text-gray-500 px-2 py-1"><?php echo $mitra["mitra_provinsi"]; ?></h1>
                <?php if (empty($mitra["mitra_ig"]=="-")){} else { ?>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Instagram</h1>

                <a href="<?php echo $mitra["mitra_igurl"]; ?>">
                <h1 class="text-sm text-blue-500 px-2 py-1"><?php echo $mitra["mitra_ig"]; ?></h1>
                </a>
                <?php }?>
                <?php if (empty($mitra["mitra_ecom"]=="-")){} else { ?>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Toko Online</h1>
                <a href="<?php echo $mitra["mitra_ecom"]; ?>">
                <h1 class="text-sm text-blue-500 px-2 py-1"><?php echo $mitra["mitra_ecomurl"]; ?></h1>
                </a>
                <?php }?>
                <h1 class="text-sm text-gray-500 font-bold px-2 py-1">Maps</h1>
                <div class="py-4 px-4">
                <iframe class="w-full shadow-lg"
                src="<?php echo $mitra["lokasi_url"]; ?>"
                loading="lazy"></iframe>
               </div>
                <div class="my-4"></div>
            </div>
            
      </div>
          <!-- End of profile card -->
        <!-- Right Side -->
        <div class="w-full md:w-9/12 mx-2">
            <!-- Profile tab -->
            <!-- About Section -->
            <div class="bg-white p-3 shadow-sm rounded-sm">
              <h1 class="text-green-900 font-bold text-xl text-center leading-8 my-1 ">Tanaman Yang Tersedia</h1>
              <!--Card Tanaman-->
              <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
                <?php 
                foreach ($harga_tanamans as $harga_tanaman){
                  $tanaman_id = $harga_tanaman["tanaman_id"];
                  $tanamans = query("SELECT * FROM tanaman WHERE tanaman_id=$tanaman_id");
                  foreach ($tanamans as $tanaman){
                    $kategori_tanaman_id = $tanaman["kategori_tanaman_id"];
                    $kategori_tanamans = query("SELECT * FROM kategori_tanaman WHERE kategori_tanaman_id=$kategori_tanaman_id")[0]; 
                    $foto_tanamans = query("SELECT * FROM foto_tanaman WHERE tanaman_id=$tanaman_id")[0];
                ?>
                <a href="detailtanaman.php?id=<?= $tanaman["tanaman_id"];?>">
                <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl transition-colors duration-150 hover:bg-green-100">
                    <div class="mt-8">
                        <div class="flex space-x-2">
                            <img src="<?php echo $foto_tanamans["foto_url"]; ?>" 
                            class="object-contain md:object-cover h-60 w-full"style="border-radius: 5%"/>
                        </div>
                        <p class="text-xl font-semibold my-2"><?php echo $tanaman["tanaman_nama"]; ?></p>
                        <div class="flex space-x-2 text-black-400 text-sm">
                            <!-- svg -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                            <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                            </svg>
                             <p><?php echo $harga_tanaman["harga"]; ?></p> 
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
                <?php }}?>
            </div>
                <?php if($jumlah_tanaman > 4){?>
                <a class="text-center block w-full text-blue-800 text-sm font-semibold rounded-lg hover:bg-gray-100 focus:outline-none focus:shadow-outline focus:bg-gray-100 hover:shadow-xs p-3 my-4" href="tanamanmitra.php?id=<?php echo $id?>">Cari Tanaman Selengkapnya</a>
                <?php } ?>
              <!-- End Of Card Tanaman-->
            </div>
             
            <div class="bg-white p-3 shadow-sm rounded-sm">
            <?php if(empty($harga_alats)){}else{ ?> 
              <h1 class="text-green-900 font-bold text-xl text-center leading-8 my-1 ">Alat Berkebun Yang Tersedia</h1>
              <!--Card Alat Berkebun-->
                    
              <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
                <?php 
                foreach ($harga_alats as $harga_alat){
                  $alat_id = $harga_alat["alat_id"];
                  $alats = query("SELECT * FROM alat WHERE alat_id=$alat_id");
                  foreach ($alats as $alat){
                    $kategori_alat_id = $alat["kategori_alat_id"];
                    $kategori_alats = query("SELECT * FROM kategori_alat WHERE kategori_alat_id=$kategori_alat_id")[0];
                ?>
                <div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl transition-colors duration-150 hover:bg-green-100">
			          <a href="detailalatkebun.php?id=<?= $alat["alat_id"];?>">
                    <div class="mt-8">
                      <div class="flex space-x-2">
                        <img src="<?php echo $alat["alat_gambar"] ?>" class="object-contain md:object-cover h-60 w-full" style="border-radius: 5%" />
                      </div>
                      <p class="text-xl font-semibold my-2"><a href="detailalatkebun.html"><?php echo $alat["alat_nama"]; ?></a></p>
                        <div class="flex space-x-2 text-black-400 text-sm">
                          <!-- svg -->
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                            fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                            <path
                              d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                          </svg>
                          <p><?php echo $harga_alat["harga"]; ?></p>
                        </div>
                        <div class="flex space-x-2 text-black-400 text-sm my-3">
                          <!-- svg -->
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                            fill="currentColor" class="bi bi-pin-angle-fill"
                            viewBox="0 0 16 16">
                            <path
                              d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z" />
                          </svg>
                          <p><?php echo $kategori_alats["kategori_alat_nama"]; ?></p>
                        </div>
                        <div class="flex space-x-2 text-black-400 text-sm my-3"></div>

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
                  </a>
                  </div>
                  <?php }}?>
              </div>
              <?php if($jumlah_alat <= 4){ }else{ ?>
              <a class="text-center block w-full text-blue-800 text-sm font-semibold rounded-lg hover:bg-gray-100 focus:outline-none focus:shadow-outline focus:bg-gray-100 hover:shadow-xs p-3 my-4" href="alatmitra.php?id=<?php echo $id?>">Cari Alat Berkebun Selengkapnya</a>
                    <?php }}?>

              <!-- End Of Card Tanaman-->
            </div>  
            </div>
      </div>
  </div>
   <!--Footer-->
   <?php include_once 'layout/footer.php';?>
</body>
</html>