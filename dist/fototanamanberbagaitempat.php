<!DOCTYPE html>
<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$foto_tanaman_all = query("SELECT * FROM foto_tanaman WHERE tanaman_id=$id");

//pagination
$jumlah_data = 4;
$total_data = count($foto_tanaman_all);
$jumlah_pagination = ceil($total_data / $jumlah_data);




if (isset($_GET['halaman'])){
	$halaman_aktif = $_GET['halaman'];
  if ($halaman_aktif==0){$halaman_aktif=1;}else{}
} else { $halaman_aktif = 1;}

$i=$halaman_aktif;


$data_awal = ($halaman_aktif * $jumlah_data ) - $jumlah_data;


$foto_tanamans = query("SELECT * FROM foto_tanaman WHERE tanaman_id=$id LIMIT $data_awal,$jumlah_data");
//end pagination
?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

<div class="pt-16"> 
  <div class="grid grid-cols-1 gap-6 sm:grid-cols-3 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3">
    <a href="home.php">
      <button class="bg-green-800 hover:bg-yellow-800 text-white font-bold py-2 px-4 mx-32 mb-10 rounded-full"> Kembali 
      </button>
    </a>
    <h1 class="text-3xl text-center text-green-800 md:text-3xl font-bold mb-2">  Galeri Tanaman </h1>
</div>

		<!--Pagination-->
		<?php if ($total_data<=$jumlah_data){} else{?>
		<?php $i = $halaman_aktif ;?>  
		<div class="flex flex-col items-center my-7">
		<ul class="flex">
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i-1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">previous</span>
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
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Next</span>
		</li></a>
		</ul>
    	</div>
    	<?php }?>
		<!--End Of Pagination-->


  <div class="container my-4 mx-auto  md:px-10 justify-center">
    <div class="flex flex-wrap -mx-1 lg:-mx-4 justify-center">
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

  		<!--Pagination-->
      <?php if ($total_data<=$jumlah_data){} else{?>
		<?php $i = $halaman_aktif ;?>  
		<div class="flex flex-col items-center my-7">
		<ul class="flex">
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i-1?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">previous</span>
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
		<a class="flex items-center font-bold" href="?id=<?= $id?>&halaman=<?=$i?>">	
		<li class="mx-1 px-3 py-2 bg-gray-200 text-green-900 hover:bg-green-900 hover:text-gray-200 rounded-lg">
				<span class="mx-1">Next</span>
		</li></a>
		</ul>
    	</div>
    	<?php }?>
		<!--End Of Pagination-->
  <?php include_once 'layout/footer.php';?>

</body>
</html>
  