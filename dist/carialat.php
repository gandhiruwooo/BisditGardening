<html lang="en">

<head>

<?php include_once 'layout/header.php';
require 'layout/function.php';

$id = $_GET["id"];

$alats = query("SELECT * FROM alat WHERE kategori_alat_id=$id");
$kategori_alats = query("SELECT * FROM kategori_alat WHERE kategori_alat_id=$id")[0];

?>
<title>Cari Alat</title>

</head>

<body>

<?php include_once 'layout/navbar.php';?>

  <!-- Search Filter -->
<div class="container h-500 mx-auto flex justify-center items-center p-2 md:pt-16">
	<div class="border border-gray-100 p-6 grid grid-cols-1 gap-6 bg-white shadow-lg rounded-lg">
		<div class="flex flex-col md:flex-row">
			<div class="pt-6 md:pt-0 md:pl-6">
				<select class="border p-2 rounded">
					<option>Mitra 1</option>
					<option>Mitra 2</option>
					<option>Mitra 3</option>
					<option>Mitra 4</option>
				</select>
			</div>
			<div class="pt-6 md:pt-0 md:pl-6">
				<select class="border p-2 rounded">
					<option>&#60; Rp 50.000,00</option>
					<option>Rp 50.000,00 - Rp 150.000,00</option>
					<option>&#62; Rp 150.000,00</option>
				</select>
			</div>
		</div>
		<div class="grid grid-cols-1 md:grid-cols-1 gap-4">
			<div class="grid grid-cols-1 gap-2 border border-gray-200 p-2 rounded">
				<div class="flex border rounded bg-gray-300 items-center p-2 ">
					<input type="text" placeholder="Enter text here..."
						   class="bg-gray-300 max-w-full focus:outline-none text-gray-700"/>
				</div>
			</div>
		</div>
		<div class="flex justify-center"><button class="p-2 border w-1/4 rounded-md bg-green-900 text-white">Search</button></div>
	</div>
</div>

    <!--daftar alat berkebun-->
      <h1 class=" text-center text-gray-900 text-3xl title-font font-medium mb-1 py-2 pt-10"><b>Daftar <?php echo $kategori_alats["kategori_alat_nama"]; ?></b></h1>
      <div class="flex items-center justify-center">
        <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4">
		<?php foreach ($alats as $alat) { ?>
			
			<div class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4 shadow-xl transition-colors duration-150 hover:bg-green-100">
			<a href="detailalatkebun.php?id=<?= $alat["alat_id"];?>">
				<div class="mt-8">
					<div class="flex space-x-2">
						<img src="<?php echo $alat["alat_gambar"]; ?>" class="object-contain md:object-cover h-60 w-full" style="border-radius: 5%" />
					</div>
						<p class="text-xl font-semibold my-2"><a href="detailalatkebun.php?id=<?= $alat["alat_id"];?>"><?php echo $alat["alat_nama"]; ?></a></p>
						<div class="flex space-x-2 text-black-400 text-sm">
							<!-- svg -->
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
								<path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
								<path
									d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
							</svg>
							<p>Rp 99.000 - 109.000</p>
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
			
        <?php } ?>

          </div>
        </div>  
		<?php include_once 'layout/footer.php';?>
</body>