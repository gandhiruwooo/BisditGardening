<?php
//Koneksi ke database//
$conn = mysqli_connect("root@localhost", "root","","gardening");

//database query all//
$mitraq = mysqli_query($conn,"SELECT * FROM mitra");
$aktivitas_growthq = mysqli_query($conn,"SELECT * FROM aktivitas_growth");
$alatq = mysqli_query($conn,"SELECT * FROM alat");
$daerahq = mysqli_query($conn,"SELECT * FROM daerah");
$fase_growthq = mysqli_query($conn,"SELECT * FROM fase_growth");
$fase_pertanamanq = mysqli_query($conn,"SELECT * FROM fase_pertanaman");
$fase_pertanaman_alatq = mysqli_query($conn,"SELECT * FROM fase_pertanaman_alat");
$fase_pertanaman_masalahq = mysqli_query($conn,"SELECT * FROM fase_pertanaman_masalah");
$fase_pertanaman_qnaq = mysqli_query($conn,"SELECT * FROM fase_pertanaman_qna");
$foto_tanamanq = mysqli_query($conn,"SELECT * FROM foto_tanaman");
$fungsiq = mysqli_query($conn,"SELECT * FROM fungsi");
$fungsi_pertanamanq = mysqli_query($conn,"SELECT * FROM fungsi_pertanaman");
$galeri_pajanganq = mysqli_query($conn,"SELECT * FROM galeri_pajangan");
$galeri_tanamanq = mysqli_query($conn,"SELECT * FROM galeri_tanaman");
$harga_alatq = mysqli_query($conn,"SELECT * FROM harga_alat");
$harga_tanamanq = mysqli_query($conn,"SELECT * FROM harga_tanaman");
$kategori_alatq = mysqli_query($conn,"SELECT * FROM kategori_alat");
$kategori_growthq = mysqli_query($conn,"SELECT * FROM kategori_growth");
$kategori_tanamanq = mysqli_query($conn,"SELECT * FROM kategori_tanaman");
$kekuranganq = mysqli_query($conn,"SELECT * FROM kekurangan");
$kelebihanq = mysqli_query($conn,"SELECT * FROM kelebihan");
$khasiatq = mysqli_query($conn,"SELECT * FROM khasiat");
$penempatanq = mysqli_query($conn,"SELECT * FROM penempatan");
$tanamanq = mysqli_query($conn,"SELECT * FROM tanaman");
$usiaq = mysqli_query($conn,"SELECT * FROM usia");


function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows =[];
    while( $row = mysqli_fetch_assoc($result) ){
      $rows[] = $row;
    }
    return $rows; 
  }

?>