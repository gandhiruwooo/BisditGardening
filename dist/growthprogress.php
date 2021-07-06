<!DOCTYPE html>
<html lang="en">
<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];
$fase = $_GET["fase"];
$tanamanid= $_GET["tanamanid"];



$fase_pertanaman_utama = query("SELECT * FROM fase_pertanaman WHERE kategori_growth_id=$id AND fase_growth_id=$fase ")[0];
$fase_pertanaman_utama_id = $fase_pertanaman_utama["fase_pertanaman_id"];

$fase_pertanamans = query("SELECT * FROM fase_pertanaman WHERE kategori_growth_id=$id");

$kategori_growth = query("SELECT * FROM kategori_growth WHERE kategori_growth_id=$id")[0];

$fase_growth_utama = query("SELECT * FROM fase_growth WHERE fase_growth_id=$fase")[0];

$fase_pertanaman_masalahs = query("SELECT * FROM fase_pertanaman_masalah WHERE fase_pertanaman_id=$fase_pertanaman_utama_id");
$fase_pertanaman_qnas = query("SELECT * FROM fase_pertanaman_qna WHERE fase_pertanaman_id=$fase_pertanaman_utama_id");

$aktivitas_growths = query("SELECT * FROM aktivitas_growth WHERE fase_pertanaman_id=$fase_pertanaman_utama_id");

$fase_pertanaman_alats = query("SELECT * FROM fase_pertanaman_alat WHERE fase_pertanaman_id = $fase_pertanaman_utama_id");

?>
<title>Cari Tanaman</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

<section class="text-gray-600 body-font">
	<h1 class="text-4xl font-bold title-font mt-20 text-green-800 text-center">Progress Pertumbuhan <?php echo $kategori_growth["kategori_growth_nama"]; ?></h1>
	<div class="container px-5 py-20 mx-auto flex flex-wrap flex-col">
		<div class="flex mx-auto flex-wrap mb-20">
			<?php foreach ($fase_pertanamans as $fase_pertanaman) {
				$fase_growth_id = $fase_pertanaman["fase_growth_id"];
				$fase_growth = query("SELECT * FROM fase_growth WHERE fase_growth_id=$fase_growth_id")[0];
				?>
			<a href="growthprogress.php?id=<?= $id?>&fase=<?= $fase_growth_id?>&tanamanid=<?=$tanamanid?>"
				class="text-lg sm:px-6 py-3 w-1/2 sm:w-auto justify-center sm:justify-start border-b-2 title-font font-medium 
				<?php
              	if ($fase_pertanaman["fase_pertanaman_id"]==$fase_pertanaman_utama["fase_pertanaman_id"]){
                echo "bg-gray-100 ";
              	} else{
              	}?>
				inline-flex items-center leading-none border-green-500 text-green-500 tracking-wider rounded-t">
				<?php echo $fase_growth["fase_growth_nama"]; ?> </a>
			<?php }?>
		</div>

		<div class="flex flex-col text-center w-full pb-2">
			<h1 class="text-3xl font-bold title-font mb-4 text-green-800 text-center"><?php echo $fase_growth_utama["fase_growth_nama"]; ?></h1>
			<p class="lg:w-2/3 mx-auto leading-relaxed text-xl"><?php echo $fase_growth_utama["fase_growth_desc"]; ?></p>
		</div>

		<div class="pt-10">
			<div class="mx-auto max-w-6xl">
				<div class="p-2 rounded">
					<div class="flex flex-col md:flex-row">
	
						<div class="bg-white mx-auto">
							<h1 class="text-3xl font-bold title-font mb-4 text-green-800 text-center py-4"> Kegiatan </h1>
							
							<?php foreach ($aktivitas_growths as $aktivitas_growth) { ?>
							<div class="mb-4">
							<div class="flex items-center justify-between bg-green-900 pl-3 pr-2 py-3 w-full rounded text-white font-bold text-lg">
								<?php echo $aktivitas_growth["aktivitas_urutan"]; ?>. <?php echo $aktivitas_growth["aktivitas_nama"]; ?>
								<span class="h-6 w-6 flex items-center justify-center text-teal-500"> </span>
							</div>
							<div class="p-3">
								<img class="xl:w-1/4 lg:w-1/3 md:w-1/2 w-2/3 block mx-auto my-5 object-cover object-center rounded" alt="hero" src="<?php echo $aktivitas_growth["aktivitas_foto_url"]; ?>" />
								<p class="text-gray-600 text-xl mb-3"><?php echo $aktivitas_growth["aktivitas_desc"]; ?></p>
							

							
							</div>
							</div>	
							<?php } ?>					
						</div>
					</div>
				</div>
			</div>

			<div class="flex flex-col">
				<div class="relative py-3 sm:max-w-xl sm:mx-auto flex flex-col">
					<div class="p-3 mx-auto">
						<a class="text-3xl font-bold text-green-800">Tingkatan</a>
					</div>
					<div class="w-30 h-30 border rounded-full border-grey-900 shadow">
						<img src="https://img.icons8.com/plasticine/200/000000/user-male.png" />
					</div>
						<div class="mt-2 mx-auto">
							<p class="font-bold text-gray-800 text-cente text-2xl"><?php echo $fase_pertanaman_utama["kesulitan"]; ?></p>
						</div>
					</div>
			</div>
			<p class="text-xl text-center leading-relaxed xl:w-2/4 lg:w-3/4 mx-auto"><?php echo $fase_pertanaman_utama["kesulitan_desc"]; ?></p>


			<?php
		if (empty($fase_pertanaman_masalahs)){} else{?>	
		<div class="container px-5 py-16 mx-auto">
			<div class="text-center mb-5">
				<h1 class="text-3xl font-bold title-font mb-4 text-green-800 text-center">Masalah Seputar
				<?php echo $fase_growth_utama["fase_growth_nama"]; ?></h1>
				<p class="text-xl leading-relaxed xl:w-2/4 lg:w-3/4 mx-auto">Masalah yang sering dialami oleh sebagian besar
					pelaku saat melakukan tahap <?php echo $fase_growth_utama["fase_growth_nama"]; ?> tanaman</p>
			</div>
			<div class="grid grid-cols-2 lg:w-4/5 sm:mx-auto sm:mb-2 mx-4 px-4">
					
				  <?php foreach ($fase_pertanaman_masalahs as $fase_pertanaman_masalah){?>
					<details class="grid mb-4 px-4">
						<summary class="text-xl font-semibold bg-gray-200 rounded-md py-2 px-4"><?php echo $fase_pertanaman_masalah["masalah"]; ?>
						</summary>
						<span class="px-4 py-2">
							<ul>
								<li> <p class="text-xl font-bold"> Penyebab : </p> 
									<p class="text-xl"><?php echo $fase_pertanaman_masalah["penyebab"]; ?></p>
								</li>
								<li> <p class="text-xl font-bold"> Solusi: </p> 
									<p class="text-xl"><?php echo $fase_pertanaman_masalah["solusi"]; ?></p>
								</li>
							</ul>
						</span>
					</details>
				  <?php }?>
			</div>
		</div>
		<?php }?>
		
		<?php
		if (empty($fase_pertanaman_qnas)){} else{?>
		<div class="container px-5 pb-8 mx-auto">
			<div class="text-center mb-5">
				<h1 class="text-3xl font-bold title-font mb-4 text-green-800 text-center">Pertanyaan Seputar
				<?php echo $fase_growth_utama["fase_growth_nama"]; ?></h1>
				<p class="text-xl leading-relaxed xl:w-2/4 lg:w-3/4 mx-auto">Pertanyaan yang sering diajukan oleh sebagian
					besar pelaku saat melakukan tahap <?php echo $fase_growth_utama["fase_growth_nama"]; ?> tanaman</p>
			</div>
			<div class="grid grid-cols-2 lg:w-4/5 sm:mx-auto sm:mb-2 mx-4 px-4">
					<?php foreach ($fase_pertanaman_qnas as $fase_pertanaman_qna) {?>
					<details class="grid mb-4 px-4">
						<summary class="text-xl font-semibold bg-gray-200 rounded-md py-2 px-4"><?php echo $fase_pertanaman_qna["pertanyaan"]; ?>
						</summary>
						<span class="px-4 py-2">
									<p class="text-xl"><?php echo $fase_pertanaman_qna["jawaban"]; ?></p>
						</span>
					</details>
					<?php } ?>
			</div>
		</div>
		


		<?php }?>
				<?php if (empty($fase_pertanaman_alats)){} else {?>
				<h1 class="text-2xl font-bold title-font text-green-800 text-center">Alat Yang Dibutuhkan</h1>
				<div class="flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
				<?php
					foreach ($fase_pertanaman_alats as $fase_pertanaman_alat){
						$alat_id = $fase_pertanaman_alat["alat_id"];
						$alat = query("SELECT * FROM alat WHERE alat_id=$alat_id")[0];
					?>		
				
				<div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl transition-colors duration-150 hover:bg-green-100">
			<a href="detailalatkebun.php?id=<?= $alat["alat_id"];?>">
				<div class="mt-8">
					<div class="flex space-x-2">
						<img src="<?php echo $alat["alat_gambar"]; ?>" class="object-contain md:object-cover h-60 w-full" style="border-radius: 5%" />
					</div>
						<p class="text-xl font-semibold my-2"><a href="detailalatkebun.php?id=<?= $alat["alat_id"];?>"><?php echo $alat["alat_nama"]; ?></a></p>
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
							<p><?php 
							$kategori_alat_id = $alat["kategori_alat_id"];
							$kategori_alat = query("SELECT * FROM kategori_alat WHERE kategori_alat_id = $kategori_alat_id")[0];
							echo $kategori_alat["kategori_alat_nama"]; ?></p>
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
					</div>
				

				<?php 
				$galeri_tanaman = query("SELECT * FROM galeri_tanaman WHERE tanaman_id = $tanamanid");
				if(empty($galeri_tanaman)){} else {
				if($fase=="4"){?>
		<div class="px-5 mt-10 mb-20 bg-gradient-to-tl to-blue-500 text-white font-semibold flex flex-col">
			<h1 class="text-2xl font-bold title-font mb-4 text-green-800 text-center">Cari Tahu Referensi Koleksi Pajangan Tanaman</h1>
			<div class="flex flex-row-reverse flex-wrap m-auto">
				<button class="rounded px-3 py-2 m-1 bg-green-900 text-white"
				onclick="document.location='galeripajanganpertanaman.php?id=<?=$tanamanid?>'">
				Referensi Koleksi Tanaman
				</button>
			</div>
		</div>
		<?php } else {}}?>	
</section>
    
				  				<!--Footer-->
								  <?php include_once 'layout/footer.php';?>
			</body>