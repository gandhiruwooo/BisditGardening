<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

if(isset($_GET["indoor"])){
  $indoor = $_GET["indoor"];
}else{$indoor = "";}



if(isset($_GET["name"])){
  $name = $_GET["name"];
}else{$name = "";}



if(isset($_GET["daerah"])){
  $daerah = $_GET["daerah"];
}else{$daerah = "";}


if(isset($_GET["penempatan"])){
  $penempatan = $_GET["penempatan"];
}else{$penempatan = "";}



$tanaman_all = query("SELECT * FROM tanaman  WHERE kategori_tanaman_id=$id AND indoorflag LIKE '%$indoor%' AND tanaman_nama LIKE '%$name%' AND daerah_id LIKE '%$daerah%' AND penempatan_id LIKE '%$penempatan%'");
$kategori_tanamans = query("SELECT * FROM kategori_tanaman WHERE kategori_tanaman_id=$id")[0];
$daerahs = query("SELECT * FROM daerah");
$penempatans = query("SELECT * FROM penempatan");



//pagination
$jumlah_data = 8;
$total_data = count($tanaman_all);
$jumlah_pagination = ceil($total_data / $jumlah_data);




if (isset($_GET['halaman'])){
	$halaman_aktif = $_GET['halaman'];
  if ($halaman_aktif==0){$halaman_aktif=1;}else{}
} else { $halaman_aktif = 1;}

$i=$halaman_aktif;


$data_awal = ($halaman_aktif * $jumlah_data ) - $jumlah_data;


$tanamans = query("SELECT * FROM tanaman WHERE kategori_tanaman_id=$id AND indoorflag LIKE '%$indoor%' AND tanaman_nama LIKE '%$name%' AND daerah_id LIKE '%$daerah%' AND penempatan_id LIKE '%$penempatan%' LIMIT $data_awal,$jumlah_data");

//end pagination
?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>
  <!-- Search Filter -->
  <div class="container h-500 mx-auto flex justify-center items-center p-2 md:pt-16">
    <form class="border border-gray-100 p-6 grid grid-cols-1 gap-6 bg-white shadow-lg rounded-lg" action="caritanaman.php?id=<?php $id;?>">
      <div class="flex flex-col md:flex-row">
        <div class="">
        <input type="hidden" name="id" value="<?php echo $id ?>">
          <select name="indoor" class="border p-2 rounded">
            <option value="">Cari Indoor atau Outdoor</option>
            <option value="1">Tanaman Indoor</option>
            <option value="0">Tanaman Outdoor</option>
            <option value="2">Tanaman Indoor & Outdoor</option>
          </select>
        </div>
        <div class="">
          <select name="daerah" class="border p-2 rounded">
          <option value="">Cari Daerah </option>
            <?php foreach ($daerahs as $daerah) { ?>
            <option value="<?php echo $daerah["daerah_id"]?>"><?php echo $daerah["daerah_nama"]?></option>
            <?php } ?>
          </select>
        </div>
        <div class="">
          <select name="penempatan" class="border p-2 rounded">
          <option value="">Cari Penempatan </option>
            <?php foreach ($penempatans as $penempatan) { ?>
            <option value="<?php echo $penempatan["penempatan_id"]?>"><?php echo $penempatan["penempatan_nama"]?></option>
            <?php } ?>
          </select>
        </div>
      </div>


      <div class="grid grid-cols-1 md:grid-cols-1 gap-4">
        <div class="grid grid-cols-1 gap-2 border border-gray-200 p-2 rounded">
          <div class="flex border rounded bg-gray-300 items-center p-2 ">
            <input type="text" name="name" placeholder="Enter text here..."
                 class="bg-gray-300 max-w-full focus:outline-none text-gray-700"/>
          </div>
        </div>
      </div>
      <div class="flex justify-center"><button type="submit" class="p-2 border w-1/4 rounded-md bg-green-900 text-white">Cari</button></div>
    </form>
  </div>


<!--Judul-->
<h1 class=" text-center text-green-900 text-3xl title-font font-medium mb-1 py-2 pt-10"><b><?php echo $kategori_tanamans["kategori_tanaman_nama"] ?></b></h1>

		<!--Pagination-->
    <?php if ($total_data<=$jumlah_data){} else{?>
		<?php $i = $halaman_aktif ;?>  
		<div class="flex flex-col items-center my-7">
		<ul class="flex">
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i-1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Sebelumnya</span>
		</li>
		</a>
		<?php for($i=1 ; $i <= $jumlah_pagination; $i++):?>

		<?php if($halaman_aktif==$i) : ?>
		<a class="font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">
			<li class="mx-1 px-3 py-2 bg-green-900 text-gray-200 rounded-lg">
			<?php echo "$i" ;?>
			</li>
		</a>
		<?php else :?>
		<a class="font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">
			<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
			<?php echo "$i" ;?>
			</li>
		</a>
		<?php endif; ?>
		<?php endfor;?>
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$halaman_aktif+1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Selanjutnya</span>
		</li></a>
		</ul>
    	</div>
    <?php }?>
		<!--End Of Pagination-->

<!--hasil pencarian-->
<div class="flex items-center justify-center">
  <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
          <!-- 1 card -->
          <?php foreach ($tanamans as $tanaman) { 
            $tanaman_id = $tanaman["tanaman_id"];
            $foto_tanaman = query("SELECT * FROM foto_tanaman WHERE tanaman_id = $tanaman_id")[0];
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
                      <p><?php echo $tanaman["rerata_harga"]; ?></p>
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

		<!--Pagination-->
    <?php if ($total_data<=$jumlah_data){} else{?>
		<?php $i = $halaman_aktif ;?>  
		<div class="flex flex-col items-center my-7">
		<ul class="flex">
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i-1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Sebelumnya</span>
		</li>
		</a>
		<?php for($i=1 ; $i <= $jumlah_pagination; $i++):?>

		<?php if($halaman_aktif==$i) : ?>
		<a class="font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">
			<li class="mx-1 px-3 py-2 bg-green-900 text-gray-200 rounded-lg">
			<?php echo "$i" ;?>
			</li>
		</a>
		<?php else :?>
		<a class="font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">
			<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
			<?php echo "$i" ;?>
			</li>
		</a>
		<?php endif; ?>
		<?php endfor;?>
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$halaman_aktif+1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Selanjutnya</span>
		</li></a>
		</ul>
    	</div>
    <?php }?>
		<!--End Of Pagination-->
<!--Footer-->
				  				<!--Footer-->
								  <?php include_once 'layout/footer.php';?>
</body>
