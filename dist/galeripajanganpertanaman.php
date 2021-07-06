<!DOCTYPE html>
<html lang="en">
<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];


$galeri_tanaman_all = query("SELECT * FROM galeri_tanaman WHERE tanaman_id=$id");

//pagination
$jumlah_data = 1;
$total_data = count($galeri_tanaman_all);
$jumlah_pagination = ceil($total_data / $jumlah_data);


echo $jumlah_data;
echo $total_data;
echo $jumlah_pagination;



if (isset($_GET['halaman'])){
	$halaman_aktif = $_GET['halaman'];
  if ($halaman_aktif==0){$halaman_aktif=1;}else{}
} else { $halaman_aktif = 1;}

$i=$halaman_aktif;
echo $halaman_aktif;

$data_awal = ($halaman_aktif * $jumlah_data ) - $jumlah_data;
echo $data_awal;

$galeri_tanamans = query("SELECT * FROM galeri_tanaman WHERE tanaman_id=$id LIMIT $data_awal,$jumlah_data");
//end pagination

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

<div class="container my-4 mx-auto  md:px-10">
  <div class="flex flex-wrap -mx-1 lg:-mx-4 justify-center">
      <!-- Column -->
      <?php foreach ($galeri_tanamans as $galeri_tanaman){ 
        $galeri_pajangan_id = $galeri_tanaman["galeri_pajangan_id"];
        $galeri_pajangan = query("SELECT * FROM galeri_pajangan WHERE galeri_pajangan_id=$galeri_pajangan_id")[0];
        ?>
      <div class="my-1 px-1 w-full md:w-1/2 lg:my-4 lg:px-4 lg:w-1/4">
          <!-- Article -->
          <article class="overflow-hidden rounded-lg shadow-lg">
              <a href="galeripajangan-detailtanaman.php?id=<?php echo $galeri_pajangan_id?>">
                  <img alt="Placeholder" class="block h-auto w-full" src="<?php echo $galeri_pajangan["galeri_foto_url"] ?>">
              <header class="flex bg-green-800 items-center justify-between leading-tight p-2 md:p-4">
                  <h1 class="text-xl text-white text-center font-bold"><?php echo $galeri_pajangan["galeri_foto_judul"] ?></h1>
                </header>
              </a>
          </article>
          <!-- END Article -->
      </div>
      <?php }?>
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
 
				  				<!--Footer-->

                                  <?php include_once 'layout/footer.php';?>
<!--Jquery-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!--SlickJS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js" integrity="sha512-WNZwVebQjhSxEzwbettGuQgWxbpYdoLf7mH+25A7sfQbbxKeS5SQ9QBf97zOY4nOlwtksgDA/czSTmfj4DUEiQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>
