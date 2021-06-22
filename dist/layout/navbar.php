<!DOCTYPE html>
<!--Footer-->
       <!-- The navigation menu -->
       <?php 
       $kategori_tanaman1 = $kategori_tanamanq;
       $kategori_alat1 = $kategori_alatq;
       
       
       
       ?>      



       <div class="navbar">
        <a href="home.php">Beranda</a>
        <div class="subnav">
          <button class="subnavbtn">Tanaman <i class="fa fa-caret-down"></i></button>
          <div class="subnav-content">
          <?php foreach ($kategori_tanaman1 as $kategori_tanaman) { ?>
            <a href="caritanaman.php?id=<?= $kategori_tanaman["kategori_tanaman_id"];?>"><?php echo $kategori_tanaman["kategori_tanaman_nama"]; ?></a>
            <?php } ?>
          </div>
        </div>
        <div class="subnav">
          <button class="subnavbtn">Alat Berkebun <i class="fa fa-caret-down"></i></button>
          <div class="subnav-content">
          <?php foreach ($kategori_alat1 as $jenis_alat) { ?>
            <a href="carialat.php?id=<?= $jenis_alat["kategori_alat_id"];?>"><?php echo $jenis_alat["kategori_alat_nama"]; ?></a>
            <?php } ?>
          </div>
        </div>
          <a href="listmitra.php">Mitra</a>
          <!--Search bar-->
          <div class="search-container">
            <form action="/action_page.php">
              <input type="text" placeholder="Cari" name="search">
            </form>
          </div>
      </div> 