-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2021 pada 07.16
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gardening`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_growth`
--

CREATE TABLE `aktivitas_growth` (
  `fase_pertanaman_id` int(11) NOT NULL,
  `aktivitas_urutan` int(11) NOT NULL,
  `aktivitas_nama` varchar(64) NOT NULL,
  `aktivitas_desc` varchar(512) NOT NULL,
  `aktivitas_foto_url` varchar(256) NOT NULL,
  `aktivitas_src_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aktivitas_growth`
--

INSERT INTO `aktivitas_growth` (`fase_pertanaman_id`, `aktivitas_urutan`, `aktivitas_nama`, `aktivitas_desc`, `aktivitas_foto_url`, `aktivitas_src_url`) VALUES
(1, 1, 'Pembuatan Bedeng Lahan Semai', 'Bedeng lahan semai disesuaikan dengan kebutuhan. Lalu, gemburkan lahan bedeng tersebut dengan penambahan pupuk kandang. Rapikan tanah bedeng tersebut.', 'https://cdn.discordapp.com/attachments/852888070911033395/854986766934999051/Screen_Shot_2021-06-17_at_14.31.37.png', 'http://cybex.pertanian.go.id/mobile/artikel/92678/BUDIDAYA-TANAMAN-SELEDRI-KHASIAT-DAN-EFEK-FARMAKOLOGISNYA/'),
(1, 2, 'Taburkan Benih Seledri', 'Taburkan benih seledri di tanah persemaian (bedeng) secara merata dan upayakan tidak menumpuk pada satu tempat.', 'https://abahtani.com/wp-content/uploads/2019/02/Penanaman-Seledri-Secara-Generatif-1024x768.jpg', 'http://cybex.pertanian.go.id/mobile/artikel/92678/BUDIDAYA-TANAMAN-SELEDRI-KHASIAT-DAN-EFEK-FARMAKOLOGISNYA/'),
(1, 3, 'Tutup Benih-Benih Seledri', 'Tutup benih-benih seledri dengan tanah yang dicampur dengan pupuk kandang dan serbuk gergaji dengan perbandingan 1 : 1 : 1', 'https://abahtani.com/wp-content/uploads/2019/02/Penyemaian-Seledri-1024x768.jpg', 'http://cybex.pertanian.go.id/mobile/artikel/92678/BUDIDAYA-TANAMAN-SELEDRI-KHASIAT-DAN-EFEK-FARMAKOLOGISNYA/'),
(1, 4, 'Siram Media Lahan', 'Media lahan disiram dan ditutup lagi dengan menggunakan lembaran karung agar kondisi tanahnya menjadi lembab dan mempercepat pertumbuhan kecambah.', 'https://3.bp.blogspot.com/-Ib2aCovGbUM/WqxulKlxH4I/AAAAAAAAABs/DEoha2r7zDw8RNeRq6EuXo94yAfgwNvbgCLcBGAs/s1600/1.png', 'http://cybex.pertanian.go.id/mobile/artikel/92678/BUDIDAYA-TANAMAN-SELEDRI-KHASIAT-DAN-EFEK-FARMAKOLOGISNYA/'),
(2, 1, 'Olah Tanah dengan Dibajak', 'Bajak tanah menggunakan cangkul atau alat lain serupa sedalam 30 cm. Tanah dibajak untuk menjadikan tanah gembur dan subur. Agar tanah dapat gembur, diamkan selama 15 hari dan usahakan terpapar sinar matahari secara langsung.', 'https://ruangide.id/wp-content/uploads/2020/07/agriculture-backyard-blur-close-up-2962301.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(2, 2, 'Pengecekan pH Tanah', 'Setelah menunggu 15 hari, lakukan pengecekan pH tanah.Jika pH tanah kurang dari 6,5, maka bisa ditambahkan kapur dolomit agar pH tanah menjadi netral.', 'http://www.meteran.id/wp-content/uploads/2017/02/ph-meter-tanah-digital-300x533.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(2, 3, 'Buat Bedengan', 'Buat bedengan dengan ukuran menyesuaikan luas lahan. Beri jarak antar bedengan. Di antara jarak antar bedengan tersebut, buat parit sebagai drainase apabila ada air yang tergenang ketika hujan datang.', 'https://kutanam.com/wp-content/uploads/2019/09/image005-2.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(2, 3, 'Lakukan Pemupukan Awal', 'Pemupukan awal berguna untuk meningkatkan unsur hara tanah. Disarankan beri pupuk kandang atau kompos. Setelah itu tutup kembali dengan tanah agar tidak terkikis oleh air dikala hujan datang. Selanjutnya, biarkan bedengan selama 3 hingga 4 hari agar pupuk dapat menyatu.', 'https://kutanam.com/wp-content/uploads/2019/09/image007-1.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(3, 1, 'Buat Lubang Tempat Tanaman Seledri', 'Buat lubang sebagai media tanam terlebih dahulu. Beri jarak antar lubang yang cukup.', 'https://budidayakita.com/wp-content/uploads/2016/10/panduan-lengkap-5-langkah-cara-menanam-seledri-600x400.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(3, 2, 'Masukkan Tanaman Seledri ke dalam Lubang', 'Masukan tanaman ke lubang tanam. Kedalaman lubang disarankan tidak terlalu dalam, tetapi tidak juga terlalu dangkal.', 'https://blogpictures.99.co/cara-menanam-pohon-seledri.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(3, 3, 'Siram Tanaman Seledri', 'Begitu bibit selesai dipindahkan, bibit harus langsung disiram dengan air bersih hingga kondisi sekitar lubang tanam lembab.', 'https://www.cendananews.com/wp-content/uploads/2019/11/wastiah.jpg?v=1574092412', 'https://kutanam.com/cara-menanam-seledri/'),
(4, 1, 'Penyiraman Tanaman', 'Di awal masa pertumbuhan, penyiraman dilakukan 1-2 kali sehari, berikutnya dikurangi menjadi 2-3 kali seminggu tergantung dari cuaca. Tanah tidak boleh kekeringan atau tergenang air (becek).', 'https://www.cendananews.com/wp-content/uploads/2019/11/wastiah.jpg?v=1574092412', 'http://jambi.litbang.pertanian.go.id/ind/images/PDF/leafletseledri09.pdf'),
(4, 2, 'Pemupukan Tanaman', 'Lakukan pemupukan secara teratur dengan dosis yang dianjurkan, apabila kalian menggunakan pupuk organik cair, maka lakukan dengan terjadwal, biasanya pupuk ini memiliki efek sebagai perangsang daun agar daun seledri dapat tumbuh lebih sehat dan lebih lebat.', 'https://kutanam.com/wp-content/uploads/2019/09/image007-1.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(4, 3, 'Pengendalian Hama dan Penyakit', 'Berikan obat pengusir hama, seperti Curacron, Trigard atau Winder 25 SP untuk mengusir hama tersebut. Penyakit cacar coklat juga bisa diatasi dengan Kocide 77 WPs.', 'https://v-images2.antarafoto.com/menyemprot-seledri-lc8ekf-pso.jpg', 'http://cybex.pertanian.go.id/mobile/artikel/92678/BUDIDAYA-TANAMAN-SELEDRI-KHASIAT-DAN-EFEK-FARMAKOLOGISNYA/'),
(4, 4, 'Pemanenan Tanaman Seledri', 'Panen dengan memotong pangkal dasar batang seledri.', 'https://bibitbunga.com/wp-content/uploads/2016/03/Panen-seledri.jpg', 'https://kutanam.com/cara-menanam-seledri/'),
(5, 1, 'Mengumpulkan Biji', 'Belilah beberapa apel yang sudah masak lalu anda dapat memakan atau memotongnya untuk mencapai bagian inti. Keluarkan biji dengan hati-hati dari inti apel', 'https://awsimages.detik.net.id/community/media/visual/2017/07/25/56270174-eae7-4d31-a4a1-e19a3caf5778.jpg?a=1', 'https://id.wikihow.com/Menanam-Biji-Apel'),
(5, 2, 'Mengeringkan Biji', 'Setelah mengumpulkan biji dari beberapa apel, masukkan biji ke dalam semangkuk air. Pilihlah biji yang tenggelam dan taruh biji yang tersebut di atas serbet kertas dan biarkan mengering selama tiga sampai empat minggu.', 'https://sehatqcontent.s3.amazonaws.com/content/article/Main/8366-20200730-Penyakit-Biji-Apel-Beracun-FA%201.jpg', 'https://id.wikihow.com/Menanam-Biji-Apel'),
(5, 3, 'Membuat Biji Berkecambah', 'Bungkus biji tadi menggunakan tisu basah dan masukkan ke dalam wadah yang tertutup rapat. Kemudian letakkan benih ke dalam lemari es atau kulkas dengan suhu 4,4 – 10 derajat C selama 8 minggu', 'https://bibitbunga.com/wp-content/uploads/2015/10/biji-apel-yang-telah-disemaikan.jpg', 'https://bibitbunga.com/cara-menanam-apel-dari-biji/'),
(6, 1, 'Penyiapan Media Tanam (Pot)', 'Siapkan wadah berupa pot berukuran kecil. Kemudian isi dengan tanah dengan pH netral. Tidak perlu menambahkan tanah tersebut dengan campuran pupuk untuk awal penanaman.', 'https://1.bp.blogspot.com/-Y8H6-Zp94cE/XmtspqOF8AI/AAAAAAAAIbE/PDhgseCcCgAd1s3uDW09D7KPJOhaDZxrACLcBGAsYHQ/s1600/cara-menetralkan-ph-tanah.jpg', 'https://bibitbunga.com/cara-menanam-apel-dari-biji//'),
(6, 2, 'Perawatan Tanaman', 'Buat cekungan pada tanah 2 atau 3 kali lebih besar dari pada ukuran biji. Letakkan benih biji tersebut pada cekungan tanah dengan hati-hati, lalu tutupi kembali dengan tanah. Tempatkan pada suhu kamar dan berikan paparan sinar matahari secara langsung.\nTepuk-tepuk tanah dengan lembut. Kemudian, sirami dengan air agar tanahnya tetap lembab. Lakukan sampai tanaman setinggi 25 cm', 'https://bibitbunga.com/wp-content/uploads/2015/10/apel-pada-polybag.jpg', 'https://bibitbunga.com/cara-menanam-apel-dari-biji/'),
(7, 1, 'Penanaman di Lahan', 'Tanam pada lahan yang lembab dengan pH yang netral serta yang dapat terkena sinar matahari langsung.\nSiram pohon kecil Anda sebanyak 10 sampai 12 hari. Namun ketika sudah tumbuh besar, bisa dikurangi penyiramannya.', 'https://bibitbunga.com/wp-content/uploads/2015/10/pohon-apel-pada-lahan.jpg', 'https://bibitbunga.com/cara-menanam-apel-dari-biji/'),
(8, 1, 'Penyiraman Tanaman', 'Penyiraman dilakukan seintensif mungkin dan di sesuaikan dengan kondisi cuaca Untuk awal masa tanam maka penyiraman harus di lakukan sesering mungkin jika musim hujan tidak turun. Namun, jangan sampai air menggenang, karena dapat memicu timbulnya busuk akar.', 'https://ilmubudidaya.com/wp-content/uploads/2018/01/images-16-3-300x163.jpg', 'https://ilmubudidaya.com/cara-menanam-apel-malang'),
(8, 2, 'Pemupukan Tanaman', 'Pemupukan dapat di lakukan menggunakan pupuk organik dan pupuk anorganik. Untuk pemberian pupuk dapat diberikan pada tahun kedua setelah tanam. Komposisi pupuk yang diberikan seperti di bawah ini.\n- Pupuk kandang 15-30 kg , 100 gram urea, TSP 50 gram dan ZK 20 gram.\n- Untuk tahun ketiga, keempat dan kelima setelah tanam dosis pupuk yang diberikan 40 kg pupuk kandang, 150 gram urea, 60 gram TSP dan 40 gram ZK.', 'http://resepmakanan-id.com/wp-content/uploads/2021/02/6c174f68-66c5-492f-9d7f-16ea6509f044-mobile.jpg', 'https://ilmubudidaya.com/cara-menanam-apel-malang'),
(8, 3, 'Pemangkasan Batang dan Penjarangan Buah', 'Pemangkasan dilakukan pada cabang dan dahan yang mati.Hal ini dilakukan agar tanaman dapat menghasilkan tunas baru yang lebih produktif lalu dilakukan penjarangan buah agar buah yang dihasilkan lebih besar besar dan berkualitas baik. Penjarangan dilakukan dengan cara membuang buah yang berukuram kecil dan tidak sehat.', 'https://ilmubudidaya.com/wp-content/uploads/2018/01/images-9-11-300x185.jpg', 'https://ilmubudidaya.com/cara-menanam-apel-malangg'),
(9, 1, 'Penyiapan Benih', 'Ambil biji tomat yang sudah tua kemudian rendam dalam air, pilih biji yang tenggelam dan keringkan.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(9, 2, 'Penyemaian Benih', 'Taburkan benih tomat di tanah persemaian (bedeng) secara merata dan jangan sampai menumpuk kemudian siram secukupnya.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(10, 1, 'Pengolahan Tanah', 'Bajak tanah menggunakan cangkul hingga tanah menjadi gembur.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(10, 2, 'Pemupukan Tanaman', 'Berikan pupuk organik seperti pupuk kompos/kandang.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(11, 1, 'Pemindahan Bibit', 'Cabut bibit dari media semai kemudian pindahkan ke pot/polybag yang baru perlahan.', 'https://bibitbunga.com/cara-menanam-tomat-dalam-pot-atau-polybag/', 'a'),
(11, 2, 'Penyiraman Tanaman', 'Pada beberapa hari pertama, lakukan penyiraman rutin untuk menghindari kekurangan air pada tomat. Setelah itu penyiraman dapat dilakukan 2 hari sekali atau sesuai kebutuhan.', 'https://bibitbunga.com/cara-menanam-tomat-dalam-pot-atau-polybag/', 'a'),
(11, 3, 'Pemupukan Tanaman', 'Seminggu setelah dipindahkan, beri pupuk kompos sebanyak satu genggam untuk satu pot/polybag.', 'https://bibitbunga.com/cara-menanam-tomat-dalam-pot-atau-polybag/', 'a'),
(12, 1, 'Penyiraman Tanaman', 'Penyiraman hendaknya disesuaikan dengan kondisi cuaca. Kelebihan air dalam budidaya tomat membuat pertumbuhan vegetatif (daun dan batang) yang subur tetapi akan menghambat fase generatif. Sebaliknya, kekurangan air yang berkepanjangan bisa menyebabkan pecah-pecah pada buah tomat yang dihasilkan. Kekeringan yang panjang bisa menyebabkan kerontokan bunga.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(12, 2, 'Pemupukan Tanaman', 'Pada budidaya tomat organik, semprotkan pupuk organik cair saat tanaman akan berbunga dan berbuah (fase generatif). Penyemprotan bisa dilakukan setiap minggu. Harus diperhatikan, pupuk organik cair harus diencerkan terlebih dahulu, konsentrasi pupuk organik cair tidak boleh melebihi 2%. Selain itu, kita bisa menambahkan pupuk kandang atau kompos setelah tanaman berumur 2-3 minggu dengan dosis satu gengam tangan per tanaman.\nUntuk budidaya tomat non-organik, pada usia satu minggu berikan campuran urea dan KC', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(12, 3, 'Penyiangan Tanaman', 'Penyiangan dilakukan 3-4 kali selama musim tanam. Penyiangan bertujuan untuk mengangkat gulma yang ada di areal tanam. Pertumbuhan gulma akan menganggu tanaman, karena tanaman harus bersaing dalam mendapatkan nutrisi. Selain itu gulma juga mengundang hama dan penyakit yang bisa menyerang tanaman utama.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(12, 4, 'Pemangkasan Tanaman', 'Pemangkasan pada tanaman tomat dilakukan setiap minggu. Pemangkasan tunas yang tumbuh pada ketiak daun harus segera agar tidak tumbuh menjadi batang. Pemangkasan tunas muda bisa dilakukan dengan tangan. Namun apabila batang sudah terlalu keras, sebaiknya gunakan pisau atau gunting. Untuk mengatur ketinggian tanaman tomat, ujung tanaman bisa dipotong. Pemotongan ujung tanaman dilakukan setelah terlihat jumlah dompolan buah sekitar 5-7 buah.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(12, 5, 'Pemasangan Lenjeran', 'Pemasangan lenjeran atau ajir bertujuan sebagai tempat mengikatkan tanaman agar tidak roboh. Lenjeran dibuat dari bambu sepanjang 1,5-2 meter. Lenjeran ditancapkan pada jarak sekitar 10-20 cm dari tanaman. Lenjeran bisa dibiarkan tegak mandiri atau ujungnya diikatkan dengan lenjeran lain yang berdekatan.', 'https://www.agronet.co.id/detail/budi-daya/pertanian/4396-Menanam-Tomat-Dari-Bibit-Hingga-Panen', 'a'),
(13, 1, 'Memilih Biji Cabai', 'Pilih cabe yang sudah tua atau kering lalu diambil benih/bijinya lalu cuci bersih kemudian keringkan.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(13, 2, 'Merendam Biji Cabai', 'Rendam biji cabai dengan Pupuk Organik Cair yang telah dicampur dengan 1 liter air selama 2-3 jam.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(13, 3, 'Penyemaian Benih', 'Semai biji cabai pada media yang telah disiapkan, bisa menggunakan bedengan atau polybag.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(14, 1, 'Penyiapan Tempat Penanaman', 'Siapkan pot/polybag dan berikan lubang pada bagian bawahnya untuk saluran drainase.', 'https://alamtani.com/cara-menanam-cabe/', 'a'),
(14, 2, 'Penyiapan Media Tanam', 'Siapkan media tanam yang akan digunakan. Media tanam bisa berupa tanah, kompos, pupuk kandang, sekam padi,dll.', 'https://alamtani.com/cara-menanam-cabe/', 'a'),
(15, 1, 'Penyiraman Bibit', 'Siram bibit terlebih dahulu supaya bibit mudah untuk dipindahkan.', 'https://ilmubudidaya.com/cara-menanam-cabe-dalam-pot#:~:text=9%20Cara%20Menanam%20Cabe%20dalam%20Pot%20%28Panduan%20Lengkap%29,serta%20bubuk%20kalsiu%20%28kapur%20dulomit%29.%20More%20items...%20', 'a'),
(15, 2, 'Pemindahan Bibit', 'Gali lubang pada tiap pot dan kemudian tanam bibit cabai pada lubang tersebut.', '9 Cara Menanam Cabe dalam Pot (Panduan Lengkap) - IlmuBudidaya.comhttps://ilmubudidaya.com/cara-menanam-cabe-dalam-pot#:~:text=9%20Cara%20Menanam%20Cabe%20dalam%20Pot%20%28Panduan%20Lengkap%29,serta%20bubuk%20kalsiu%20%28kapur%20dulomit%29.%20More%20items.', 'a'),
(15, 3, 'Penyiraman dan Penyulaman', 'Lakukan penyiraman dan penyulaman pada seminggu pertama. Ganti tanaman yang pertumbuhannya tidak normal.', '9 Cara Menanam Cabe dalam Pot (Panduan Lengkap) - IlmuBudidaya.com', 'a'),
(16, 1, 'Penyiraman', 'Kebutuhan air menjadi hal yang penting. Sebaiknya tanaman cabai disiram sekurang-kurangnya 3 hari sekali. Apabila matahari terik, siram tanaman setiap hari supaya tanaman tidak kering.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(16, 2, 'Pemupukan', 'Salah satu perawatan yang penting pada masa awal tanam adalah pemupukan setelah 7 HST. Untuk menunjang pertumbuhan pada tanaman cabe, berikan Pupuk Organik Cair dengan takaran dosis 5 ml/pot yang diaplikasikan setiap satu minggu sekali dengan cara disemprot secara merata.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(16, 3, 'Penyiangan', 'Jika tanaman cabe terlihat subur setelah masa tanam, maka dapat dipastikan juga sekitar tanaman akan ditumbuhi rerumputan liar yang tentu mengganggu pertumbuhan tanaman cabe.Lakukan penyiangan dengan rutin dengan membersihkan rumput ataupun tanaman pengganggu seperti gulma yang akan dapat mengambil nutrisi dari tanah untuk tanaman cabe tersebut.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(16, 4, 'Pengajiran', 'Pengajiran adalah memberikan penopang dari bambu disebelah tanaman cabe. Hal ini bertujuan untuk menopang pohon cabe agar tidak patah karena batang pohon cabe masih sangat rentan dan agar bisa tumbuh tegak dan baik.', 'https://gdm.id/cara-menanam-cabe-di-pot/', 'a'),
(17, 1, 'Mempersiapkan Benih', 'Benih daun bawang dapat berasal dari biji atau dari tunas anakan (stek tunas). Tunas anakan diperoleh dengan cara memisahkan anakan yang sehat dan bagus pertumbuhannya dari induknya.', 'https://justlivingagoodlife.com/wp-content/uploads/2019/03/Leek-Seeds.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(17, 2, 'Mempersipakan Media Semai', 'Media semai berupa campuran pupuk kandang dan tanah (1:1) yang telah digemburkan.', 'https://cf.shopee.co.id/file/3186806d23b9a9243a4f2045a7b060db', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(17, 3, 'Penyemaian', 'Biji disebar secara merata kemudian ditutup dengan lapisan tanah tipis (dengan ketebalan 0,5-1 cm) dan disiram secukupnya.', 'https://www.seedparade.co.uk/news/wp-content/uploads/2012/10/01-Leek-seedlings.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(18, 1, 'Penyiapan Lahan', 'Lahan dicangkul dengan kedalamam 30-40 cm kemudian ditambahkan pupuk kandang.', 'https://www.allotment-garden.org/garden-diary/wp-content/uploads/2019/02/Leek-Trench.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(18, 2, 'Pembuatan Drainase', 'Siapkan saluran drainase karena daun bawang tidak menyukai genangan air.', 'https://kabartani.com/wp-content/uploads/2019/08/Cara-budidaya-bawang-daun-Kabartani.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(19, 1, 'Penanaman', 'Buat lubang tanam kecil dan bibit/tunas anakan ditanam dengan posisi tegak lurus.', 'https://opimedia.azureedge.net/-/media/images/men/editorial/articles/magazine-articles/2014/12-01/growing-and-cooking-leeks-and-winter-squashes/leek-seedlings-in-ground-jpg.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(19, 2, 'Timbun dan Siram Tanaman', 'Tanaman daun bawang yang sudah dipindahkan ditimbun dengan tanah kembali dan disiram.', 'https://fruitslaborious.files.wordpress.com/2011/04/leeks-2.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(20, 1, 'Penyiangan', 'Penyiangan terhadap gulma dapat dilakukan bersamaan dengan pendangiran untuk menggemburkan tanah yang mungkin mengalami pemadatan.', 'https://img.alicdn.com/i3/3713342683/O1CN01sF4dC91xHUXGOkv3y-1878526418.jpg_460x460q90.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(20, 2, 'Penyiraman', 'Penyiraman harus dilakukan terutama bila daun bawang ditanam pada musim kemarau, sedangkan apabila ditanam dimusim penghujan drainase harus diperhatikan dengan baik agar tidak terjadi genangan air di lahan.', 'https://cdn.discordapp.com/attachments/852886402815361066/855689061687361576/man-watering-shoots-leeks-vegetable-garden-can-legs-visible-gardener-leek-130032521.jpeg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(20, 3, 'Pemupukan', 'Lakukan pemupukan selama 3 minggu sekali dengan pupuk kandang maupun pupuk urea.', 'https://mosamandiri.co.id/wp-content/uploads/2017/12/Agritech-untuk-budidaya-bawang-merah.jpg', 'https://www.merdeka.com/jabar/cara-menanam-daun-bawang-di-rumah-cepat-dan-mudah-dilakukan-kln.html?page=all'),
(20, 4, 'Panen', 'Pemanenan dilakukan dengan mencabut seluruh bagian tanaman termasuk akar, buang akar dan daun yang busuk atau layu.', 'https://i.ytimg.com/vi/PoHWkEvjlQM/maxresdefault.jpg', 'http://hortikultura.litbang.pertanian.go.id/teknologi-detail-41.html'),
(21, 1, 'Pemilihan Benih', 'Memilih benih bisa dilakukan dengan membeli langsung di toko ataupun menumbuhkan dari biji. Jika ingin menumbuhkan dari biji, pilih biji yang berkualitas baik.', '√ Cara Menanam Mentimun Yang Baik dan Benar Beserta Manfaatnya! (bertani.co.id)', ''),
(21, 2, 'Penanaman Benih', 'Penanaman benih dapat dilakukan pada pot/polybag.', '√ Cara Menanam Mentimun Yang Baik dan Benar Beserta Manfaatnya! (bertani.co.id)', 'a'),
(22, 1, 'Pengolahan Tanah', 'Pada awalnya tanah diolah terlebih dahulu dengan cara yang umum yaitu pergantian tanah dan penyeimbangan nutrisi.', '10 Cara Budidaya Labu Siam yang Baik dan Benar (bungabunga.co.id)', 'a'),
(23, 1, 'Pemindahan Bibit', 'Siapkan sebuah pot berukuran besar lalu isi dengan tanah yang bagus. Buatlah lubang sebesar 40 cm x 40 cm dengan kedalaman sekitar 20 cm. Selanjutnya pindahkan bibit ke dalam lubang tersebut. Dalam memindahkan bibit ini, lakukan secara hati-hati agar akar tanaman tidak rusak. Kemudian tutup lubang menggunakan tanah.', 'Cara Menanam Labu Siam Di Dalam Pot (bibitbunga.com)', 'a'),
(23, 2, 'Penyiraman', 'Setelah itu siram dengan air secukupnya.', 'Cara Menanam Labu Siam Di Dalam Pot (bibitbunga.com)', 'a'),
(24, 1, 'Penyiraman', 'Lakukan penyiraman secara teratur yaitu sebanyak dua kali sehari, secukupnya saja jangan berlebihan.', 'Cara Menanam Budidaya Mentimun Di Dalam Pot atau Polybag Dengan Mudah | FaunaDanFlora.Com', 'a'),
(24, 2, 'Penyulaman', 'Lakukan penyulaman pada tanaman mentimun yang tumbuh tidak normal atau mati dan diganti dengan tanaman yang baru.', 'Cara Menanam Budidaya Mentimun Di Dalam Pot atau Polybag Dengan Mudah | FaunaDanFlora.Com', 'a'),
(24, 3, 'Pemupukan', 'Lakukan pemupukan pada tanaman mentimun 15-20 hari setelah tanam menggunakan pupuk urea atau pupuk lainnya.', 'Cara Menanam Budidaya Mentimun Di Dalam Pot atau Polybag Dengan Mudah | FaunaDanFlora.Com', 'a'),
(24, 4, 'Penyiangan', 'Lakukan penyiangan pada gulma yang tumbuh disekitar tanaman di pot/polybag.', 'Cara Menanam Budidaya Mentimun Di Dalam Pot atau Polybag Dengan Mudah | FaunaDanFlora.Com', 'a'),
(24, 5, 'Pengajiran', 'Pemasangan ajir dilakukan saat tanaman berukuran sekitar 2-3 cm di atas permukaan tanah. Ajir tersebut dapat dibuat dari bambu atau kayu kecil dengan panjang sekitar 1,5-2 meter.', 'Cara Menanam Budidaya Mentimun Di Dalam Pot atau Polybag Dengan Mudah | FaunaDanFlora.Com', 'a'),
(25, 1, 'Penyiapan Lahan', 'Penanaman sebaiknya di lahan datar dan juga berlokasi di lahan terbuka, lahan yang sudah dibersihkan dilanjutkan dengan pengelolahan tanah dengan mencangkul dengan kedalaman 30-40 cm sampai sturktur tanah gambur dan diamkan selama 15 hari.', 'https://i2.wp.com/hamparan.net/wp-content/uploads/2017/10/persiapan-lahan-cara-menanam-lidah-buaya.jpg?w=667&ssl=1', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya'),
(26, 2, 'Pemindahan Tanaman Anakan dari Tanaman Indukan', 'Pembibitan dilakukan dengan cara vegetatif, dengan cara mengambil tanaman anakan dari tanaman indukan.', 'https://kutanam.com/wp-content/uploads/2019/09/image003.jpg', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya'),
(27, 3, 'Pemupukan', 'Pemupukan dilakukan pada saat tanaman memiliki umur 3-4 bulan dengan pemberian pupuknya berjenis pupuk urea, pupuk KCL, dan pupuk TSP.', 'https://budidayalidahbuaya1.files.wordpress.com/2012/04/cara-bercocok-tanam1.jpg', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya'),
(27, 3, 'Pembubunan', 'Pada saat tanaman berumur 3 bulan dilakukan pembubunan dengan cara meninggikan dan memadatkan disekeliling batang.', 'https://kangtani.com/wp-content/uploads/2019/07/pembumbunan-lidah-buaya.jpg', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya'),
(27, 3, 'Penyobekan', 'Pada usia 5-6 bulan dilakukan penyobekan karena dipastikan tanaman anakan telah muncul dan dapat dijadikan bibit.', 'https://kangtani.com/wp-content/uploads/2019/07/penyobekan-aloe-vera.jpg', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya'),
(28, 4, 'Panen', 'Panen dapat dilakukan apabila tanaman telah menginjak usia 1 tahun dan setelahnya dapat dilakuka panen terus-menerus selama 7-8 bulan', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya', 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat`
--

CREATE TABLE `alat` (
  `alat_id` int(11) NOT NULL,
  `alat_nama` varchar(30) NOT NULL,
  `alat_desc` varchar(256) NOT NULL,
  `alat_gambar` varchar(256) NOT NULL,
  `alat_src_url` varchar(256) NOT NULL,
  `kategori_alat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alat`
--

INSERT INTO `alat` (`alat_id`, `alat_nama`, `alat_desc`, `alat_gambar`, `alat_src_url`, `kategori_alat_id`) VALUES
(1, 'Polybag', 'Kantong plastik berbentuk segi empat yang digunakan sebagai wadah pengganti pot dalam menanam tanaman.', 'https://gardening.id/wp-content/uploads/2019/03/menanam-di-polybag.jpg', 'https://gardening.id/cara-menanam-di-polybag/', 1),
(2, 'Pupuk NPK', 'Vitamin tanaman yang dapat berbentuk padat maupun cair dengan kandungan utama nitrogen, kalium, dan fosfor.', 'https://petrosida-gresik.com/sites/default/files/npk%20plus.jpg', 'https://www.99.co/blog/indonesia/manfaat-pupuk-npk/', 1),
(3, 'Sekam', 'Media tanam yang berasal dari limbah pagi sebagai sumber nutrisi tambahan bagi tanaman.', 'https://cdn.popmama.com/content-images/post/20201021/img-21102020-190538-800-x-400-piksel-fb033fe9bf28752698cdabe9c4df0315.jpg', 'https://www.popmama.com/life/home-and-living/bella-lesmana/manfaat-penggunaan-sekam-bakar-sebagai-media-tanam/5', 3),
(4, 'Pot', 'Wadah tanaman sebagai solusi berkebun tanpa menggunakan lahan yang luas.', 'https://blogpictures.99.co/pot-plastik.jpg', 'https://www.99.co/blog/indonesia/jenis-pot-tanaman-dan-karakternya/', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerah`
--

CREATE TABLE `daerah` (
  `daerah_id` int(11) NOT NULL,
  `daerah_nama` varchar(64) NOT NULL,
  `daerah_desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daerah`
--

INSERT INTO `daerah` (`daerah_id`, `daerah_nama`, `daerah_desc`) VALUES
(1, 'Dataran tinggi', 'desc1'),
(2, 'Dataran rendah', 'desc2'),
(3, 'Dataran tinggi dan rendah', 'desc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fase_growth`
--

CREATE TABLE `fase_growth` (
  `fase_growth_id` int(11) NOT NULL,
  `fase_growth_nama` varchar(64) NOT NULL,
  `fase_growth_desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fase_growth`
--

INSERT INTO `fase_growth` (`fase_growth_id`, `fase_growth_nama`, `fase_growth_desc`) VALUES
(1, 'Pembibitan', 'Pembibitan merupakan proses penanaman dimulai dari biji hingga muncul tunas dan tumbuh menjadi sebuah tanaman untuk mendapatkan calon individu baru, teknik pembibitan dapat dilakukan secara generatif maupun vegetatif. Pembibitan secara generatif dilakukan '),
(2, 'Penyiapan Lahan', 'Penyiapan lahan merupakan faktor penting dalam memulai budidaya tanaman dikarenakan penyiapan lahan yang bagus berpengaruh besar terhadap produktivitas tanaman. Tujuannya untuk mengatur kondisi lahan budidaya tanaman sesuai dengan kondisi yang dibutuhkan t'),
(3, 'Penanaman', 'Penanaman adalah proses, cara, perbuatan menanam, menanami atau menanamkan atau merupakan kegiatan memindahkan bibit dari tempat penyemaian ke lahan pertanaman untuk di dapatkan hasil produk dari tanaman yang dibudidayakan.'),
(4, 'Perawatan', 'Perawatan tanaman adalah proses merawat tanaman yang hidup, menyulam tanaman yang mati, membersihkan gulma dan atau tanaman pengganggu yang tumbuh disekeliling tanaman agar pertumbuhan tanaman dapat berlangsung dengan baik.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fase_pertanaman`
--

CREATE TABLE `fase_pertanaman` (
  `fase_pertanaman_id` int(11) NOT NULL,
  `kesulitan` varchar(256) NOT NULL,
  `kesulitan_desc` varchar(256) NOT NULL,
  `kategori_growth_id` int(11) NOT NULL,
  `fase_growth_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fase_pertanaman`
--

INSERT INTO `fase_pertanaman` (`fase_pertanaman_id`, `kesulitan`, `kesulitan_desc`, `kategori_growth_id`, `fase_growth_id`) VALUES
(1, 'Mudah', 'Memerlukan sedikit usaha jika melakukan penyemaian menggunakan bedengan. Namun, penyemaian bisa dilakukan pada peti atau wadah kecil.', 3, 1),
(2, 'Menengah', 'Olah tanah perlu dengan cara dibajak dengan menggunakan cangkul. Selain itu, perlu dipastikan pH tanah yang sesuai, hingga pembuatan bedengan.', 3, 2),
(3, 'Menengah', 'Proses ini harus dilakukan dengan penuh kehati-hatian, apabila di lakukan secara terburu-buru maka tanaman seledri tidak akan tumbuh.', 3, 3),
(4, 'Sulit', 'Penyiraman dilakukan setiap hari tetapi jangan sampai tanaman rusak dan jangan sampai daunnya terkena tanah yang tercampur dengan air sewaktu menyiram. Pemupukan perlu dilakukan secara teratur dengan dosis yang dianjurkan. Pengendalian hama dan penyakit de', 3, 4),
(5, 'Mudah', 'Anda hanya perlu mencari bibit yang sesuai dan membiarkannya selama beberapa hari', 5, 1),
(6, 'Menengah', 'Anda perlu melakukan perawatan bibit tanaman sampai dapat dipindahkan', 5, 2),
(7, 'Sulit', 'Menyiapkan lahan untuk', 5, 3),
(8, 'Sulit', 'Anda perlu memperhatikan keadaan apel agar dapat bertumbuh dengan baik dan menghasilkan buah yang maksimal', 5, 4),
(9, 'Mudah', 'Anda cukup menyeleksi biji yang bentuknya bagus dan tidak.', 4, 1),
(10, 'Mudah', 'Anda cukup menggemburkan tanah serta memberi air dan pupuk.', 4, 2),
(11, 'Sulit', 'Saat awal dipindahkan, tanaman tomat membutuhkan air dan pupuk yang cukup. Selain itu, tanaman juga rentan terkena hama dan penyakit.', 4, 3),
(12, 'Sulit', 'Tanaman tomat cukup sensitif dan perlu perawatan yang intensif. Tanaman ini sangat rentan terhadap hama dan penyakit, terutama yang ditanam di dataran rendah.', 4, 4),
(13, 'Mudah', 'Anda hanya perlu memilih biji yang bagus dan menyemaikannya.', 11, 1),
(14, 'Mudah', 'Anda hanya perlu menyiapkan media tanam.', 11, 2),
(15, 'Menengah', 'Pada awal pemindahan tanaman cabai harus diperhatikan dengan baik.', 11, 3),
(16, 'Sulit', 'Pada masa pertumbuhan, tanaman ini rawan terkena hama dan penyakit.', 11, 4),
(17, 'Mudah', 'Anda bisa melakukannya secara generatif (dengan menggunakan biji tanaman) maupun vegetatif (menggunakan anakan tanaman). Penyemaian bibit bisa dengan menyimpannya di dalam gelas berisi air atau dengan menggunakan polybag.', 16, 1),
(18, 'Mudah', 'Media tanam dapat berupa pot atau polybag. Bahkan, Anda juga bisa menggunakan botol, kaleng, hingga ember. Lalu, Anda hanya perlu menyiapkan tanah yang gembur, sumbur, dan memiliki kandungan unsur hara yang melimpah.', 16, 2),
(19, 'Menengah', 'Tahap ini harus benar-benar dilakukan secara hati-hati dengan memastikan akar bibit tidak ada yang rusak atau putus sebelum memasukkannya ke dalam tanah.', 16, 3),
(20, 'Sulit', 'Penyiraman harus cukup, media tanam tidak boleh sampai kering, namun juga tidak boleh terlalu lembap karena justru dapat berpotensi menimbulkan jamur dan bakteri. Rumput yang tumbuh di sekitar media tanam harus dicabut secara rutin, dan perlu tangani hama ', 16, 4),
(21, 'Mudah', 'Anda cukup memilih benih yang bagus.', 10, 1),
(22, 'Mudah', 'Anda cukup menyiapkan media tanam.', 10, 2),
(23, 'Menengah', 'Diperlukan perawatan yang cukup pada awal penanaman.', 10, 3),
(24, 'Sulit', 'Tanaman merambat sehingga diperlukan perawatan yang cukup banyak.', 10, 4),
(25, 'Mudah', 'Anda harus mencari lahan datar dan berlokasi di lahan terbuka.', 6, 1),
(26, 'Sulit', 'Anda harus melakukan pengambilan dengan cara mencongkel dan memisahkan tanaman anakan dari tanaman induk hingga akar diusahakan tidak sampai putus', 6, 2),
(27, 'Menengah', 'Pada saat penanaman usahakan berhati-hati agar batang tidak patah.', 6, 3),
(28, 'Mudah', 'Pada saat perawatan diberikan pupuk kompos dan pupuk kandang agar memperbaiki sturktur tanah.', 6, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fase_pertanaman_alat`
--

CREATE TABLE `fase_pertanaman_alat` (
  `fase_pertanaman_id` int(11) NOT NULL,
  `alat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fase_pertanaman_masalah`
--

CREATE TABLE `fase_pertanaman_masalah` (
  `fase_pertanaman_id` int(11) NOT NULL,
  `masalah` varchar(64) NOT NULL,
  `penyebab` varchar(256) NOT NULL,
  `solusi` varchar(256) NOT NULL,
  `masalah_desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fase_pertanaman_masalah`
--

INSERT INTO `fase_pertanaman_masalah` (`fase_pertanaman_id`, `masalah`, `penyebab`, `solusi`, `masalah_desc`) VALUES
(5, 'masalah1', 'penyebab1', 'solusi1', 'a'),
(5, 'masalah2', 'penyebab2', 'solusi2', 'a'),
(5, 'masalah3', 'penyebab3', 'solusi3', 'a'),
(5, 'masalah4', 'penyebab4', 'solusi4', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fase_pertanaman_qna`
--

CREATE TABLE `fase_pertanaman_qna` (
  `fase_pertanaman_id` int(11) NOT NULL,
  `pertanyaan` varchar(256) NOT NULL,
  `jawaban` varchar(256) NOT NULL,
  `pertanyaan_src` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fase_pertanaman_qna`
--

INSERT INTO `fase_pertanaman_qna` (`fase_pertanaman_id`, `pertanyaan`, `jawaban`, `pertanyaan_src`) VALUES
(5, 'pertanyaan1', 'jawaban1', 'a'),
(5, 'pertanyaan2', 'jawaban2', 'a'),
(5, 'pertanyaan3', 'jawaban3', 'a'),
(5, 'pertanyaan4', 'jawaban4', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_tanaman`
--

CREATE TABLE `foto_tanaman` (
  `foto_id` int(11) NOT NULL,
  `tanaman_id` int(11) NOT NULL,
  `foto_url` varchar(256) NOT NULL,
  `foto_desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto_tanaman`
--

INSERT INTO `foto_tanaman` (`foto_id`, `tanaman_id`, `foto_url`, `foto_desc`) VALUES
(1, 1, 'https://s.kaskus.id/r480x480/images/fjb/2015/12/03/kebunbibit___tanaman_hias_daun_suplir_blimbing_cristet_4639734_1449150553.jpg', 'BIbit Tanaman Suplir'),
(2, 1, 'https://f1-styx.imgix.net/article/2019/09/01111822/tanaman-pakis-suplir-atau-maidenhair-fern-dalam-pot.jpg', 'Tanaman Suplir Sudah Panen'),
(3, 2, 'https://www.giromagi.com/prodotti/src/mammillaria_fraileana_sb1263_(south_of_todos_santos)_98901.jpg', 'Bibit Tanaman Mammillaria Fraileana'),
(4, 2, 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Mammillaria-fraileana_HBG_59973_Jun_PICT2757.jpg', 'Tanaman Mammillaria Fraileana Sudah Dewasa/Panen'),
(5, 3, 'https://media.karousell.com/media/photos/products/2019/03/08/bibit_lidah_buaya_1552008944_c48824da_progressive.jpg', 'Bibit Tanaman Lidah Buaya'),
(6, 3, 'https://1.bp.blogspot.com/-I1wFMS2NEuM/X-s_zg6ivAI/AAAAAAACLHI/UisLrYLDyas6V24kIH5_Q4doi8kp7MBQwCLcBGAsYHQ/s600/menanam-lidah-buaya-di-pot.jpg', 'Tanaman Lidah Buaya Sudah Dewasa'),
(7, 4, 'https://s.kaskus.id/r480x480/images/fjb/2015/12/14/kebunbibit_tanaman_kaktus_dan_sukulen_donkey_tail_4639734_1450108341.jpg', 'Bibit Tanaman Donkey Tail'),
(8, 4, 'https://bibitbunga.com/wp-content/uploads/2013/01/donkey-tail.jpg', 'Tanaman Donkey Tail Panen'),
(9, 5, 'https://bibitbunga.com/wp-content/uploads/2016/03/vft-remaja-perbandingan-koin.jpg', 'Benih Tanaman Venus Flaytrap'),
(10, 5, 'https://bibitbunga.com/wp-content/uploads/2016/03/venus-flytrap.jpg', 'Tanaman Venus Flaytrap Dewasa'),
(11, 6, 'https://i0.wp.com/bgipin.com/wp-content/uploads/2020/05/Pemilihan-Bibit-Bunga-Matahari.jpg?w=640&ssl=1', 'Bibit Bunga Matahari'),
(12, 6, 'https://i2.wp.com/f1-styx.imgix.net/article/2020/12/29124328/sekumpulan-bunga-matahari-di-kebun-rumah.jpg?fit=696%2C464&ssl=1', 'Bunga Matahari Dewasa'),
(13, 7, 'https://bibitbungatulip.files.wordpress.com/2017/03/jual-benih-lavender.jpg', 'Benih Bunga Lavender'),
(14, 7, 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1549947515/grj14alppvyifyirxuwy.jpg', 'Bunga Lavender Dewasa'),
(15, 8, 'https://kelurahan-tawangrejo.madiunkota.go.id/wp-content/uploads/2020/12/20201228_102607.jpg', 'Bibit Bunga Mawar'),
(16, 8, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2018/08/18/2438890756.jpg', 'Bunga Mawar Panen'),
(17, 9, 'https://img.biggo.com.tw/190x,sCS-PVLp3keZd7dS0DB_9kehepjoBvmpwf2wT2Bn6weg/https://id-live-01.slatic.net/p/ddeda6461305eb933df652ad6a637db1.jpg', 'Bibit Tanaman Agave Kishokan'),
(18, 9, 'http://4.bp.blogspot.com/-EyxbUL_6094/TWErJZLiWGI/AAAAAAAAABU/EFW_kAmdAbc/s1600/agave.jpg', 'Tanaman Agave Kishokan Panen'),
(19, 10, 'https://img.pikbest.com/01/75/09/01mpIkbEsTt9Z.jpg-0.jpg!bw700', 'Bibit Tanaman Astrophytum Asterias'),
(20, 10, 'https://img.farmforage.com/img/agro-2019/osobennosti-uhoda-za-rasteniem-astrofitumom-v-domashnih-usloviyah.jpg', 'Tanaman Astrophytum Asterias Panen'),
(21, 11, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFRYYGRgaGBgaGBgaGBgYGBgYGBgZHB0aGRgcIS4lHB4rHxgYJjgmLC8xNTU1GiU7QDszPy40NTEBDAwMEA8QHhISHjQrJCs0NDE0NDQ0NDE0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/x', 'Tanaman Giok Dewasa/Panen'),
(22, 11, 'https://images.tokopedia.net/img/cache/200-square/product-1/2019/8/23/40225422/40225422_b08238c3-4854-40ee-828f-ebb81aad0155_612_449.jpg.webp?ect=4g', 'Tanaman Sukulen Giok Berbibit'),
(23, 12, 'https://akcdn.detik.net.id/community/media/visual/2020/07/20/kaktus-haworthia-zebra_169.jpeg?w=620', 'Tanaman Sukulen Zebra'),
(24, 12, 'https://s0.bukalapak.com/img/05604645251/large/data.jpeg', 'Bibit Tanaman Sukulen Zebra'),
(25, 13, 'https://cdn.idntimes.com/content-images/post/20200618/f23dfba87cf5f797d652012595a11ba7-5991aec94dd4f664e696303a0bc69aa8.jpg', 'Tanaman Sukulen Ruby Ball Cactus Siap Panen'),
(26, 13, 'https://www.thespruce.com/thmb/q68KNT_a-g3bTHaIHvkd4CzJVlE=/1909x1431/filters:no_upscale():max_bytes(150000):strip_icc()/grow-grafted-ruby-ball-cactus-1902604-closeup-3bf08efc24f14ffcae2c81e21424d09a.jpg', 'Tanaman Sukulen Ruby Ball Cactus Siap Panen'),
(27, 14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlONfluv_GzJVU6jfsftnxVifklTrxw8a7vQ&usqp=CAU', 'Tanaman Sukulen Lidah Mertua Panen'),
(28, 14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpPNzcTEVvazBZlNo8-sx7Dy9T7JRXZTA9GQ&usqp=CAU', 'Bibit Tanaman Sukulen Lidah Mertua'),
(29, 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe983TGsKtGqaTeUS0wx8NX68xLE2y2Kgw3A&usqp=CAU', 'Bonsai Juniper Dewasa/Panen'),
(30, 15, 'https://cf.shopee.co.id/file/18e2aa51dc9364f498660e6714f474a4', 'Bonsai Juniper Bibit'),
(31, 16, 'https://cf.shopee.co.id/file/1af8401d81de3fce11fb58b627150184', 'Bonsai Bougenville Bibit'),
(32, 16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMKiS-Ze-AIzACeM0Gb2ZNOx5pMGlFaAu1jQ&usqp=CAU', 'Bonsai Bougenville Dewasa/Panen'),
(33, 17, 'https://cf.shopee.co.id/file/04f3412e3fed002a5e73c68de9f819b0', 'Bonsai Beringin Bibit'),
(34, 17, 'https://bibitonline.com/wp-content/uploads/Bonsai-Beringin.jpeg', 'Bonsai Beringin Dewasa/Panen'),
(35, 18, 'https://www.harapanrakyat.com/wp-content/uploads/2020/09/Tanaman-Hias-Janda-Bolong-Tengah-Populer.jpg', 'Variegated Monstera Dewasa/Panen'),
(36, 18, 'https://images.tokopedia.net/img/cache/700/product-1/2020/5/5/2636067/2636067_9b6440e0-7052-4090-a0b6-2b4e9b7db0aa_1280_1280.jpg', 'Variegated Monstera Bibit'),
(37, 19, 'https://s2.inkuiri.net/i/large/https%2Fs3.bukalapak.com%2Fimg%2F3540294356%2Flarge%2Ftemp_162758514_1.png', 'Pilea Peperomioides Bibit'),
(38, 19, 'https://my-test-11.slatic.net/p/838db170f06e3c6a71000eba3b81552f.jpg', 'Pilea Peperomioides Dewasa/Panen'),
(39, 20, 'https://ae01.alicdn.com/kf/HTB1tKfALFXXXXXhapXXq6xXFXXXN/400-Paling-Langka-Chocolate-Cosmos-benih-perennial-bunga-taman-bunga-Cantik.jpg_Q90.jpg_.webp', 'Cosmos Cokelat Panen'),
(40, 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmRR9x1I_f23eRXDGwVP0yc6Pa1elAlYtq3g&usqp=CAU', 'Cosmos Cokelat Berbunga'),
(41, 21, 'https://cf.shopee.co.id/file/c7b4dc2a813cccad6c2b9f6f07b18694', 'Bibit Tradescantia Pallida'),
(42, 21, 'http://i.ebayimg.com/images/g/RUAAAOSwqkRcFNtW/s-l500.jpg', 'Tradescantia Pallida Dewasa'),
(43, 22, 'https://images.tokopedia.net/img/cache/500-square/product-1/2020/9/14/inv/inv_65b140e8-680b-4306-89b0-6bb9b167ee26_618_618.jpg?ect=4g', 'Bibit English Ivy'),
(44, 22, 'https://asset.kompas.com/crops/OqYmA0eWKESlZ-24rQn9fHs5LIc=/0x36:1000x703/750x500/data/photo/2020/02/21/5e4f98f2bd6fb.jpg', 'English Ivy Dewasa'),
(45, 23, 'https://cf.shopee.co.id/file/2c1d5ff2e2cd67edede1a92013ddb5d1', 'Bibit Bougenville'),
(46, 23, 'https://blogpictures.99.co/mitos-bunga-bougenville-1.jpg', 'Bougenville Berbunga'),
(47, 24, 'https://bibitbunga.com/wp-content/uploads/2016/05/menyemai-biji-petunia.jpg', 'Bibit Petunia'),
(48, 24, 'https://images.tokopedia.net/img/cache/700/product-1/2020/7/18/8456827/8456827_4ed26fa5-426c-4b20-87b1-f2a4bc6868d3_1560_1560.jpg', 'Petunia Berbunga'),
(49, 25, 'https://images.tokopedia.net/img/cache/500-square/product-1/2018/2/1/0/0_b826720e-9070-4a1a-ab3d-76261be77a8e_799_1212.jpg.webp', 'Bibit Spider Plant'),
(50, 25, 'https://cdn.shoplightspeed.com/shops/611765/files/18176153/1024x1024x1/hb-spider-plant-10.jpg', 'Spider Plant Dewasa'),
(51, 26, 'https://id-test-11.slatic.net/p/c5ec8acda109177f69fa1b40954ce1e3.jpg', 'Bibit Monstera Deliciosa'),
(52, 26, 'https://images.tokopedia.net/img/cache/700/product-1/2020/9/24/inv/inv_ca765e22-27b4-4208-9aeb-e69b60b446fb_576_575.jpg', 'Monstera Deliciosa'),
(53, 27, 'https://s1.bukalapak.com/img/68849720102/large/data.jpeg', 'Bibit Silver Hair'),
(54, 27, 'https://cf.shopee.co.id/file/26d79110d4d19f7803388383f9ab9b59', 'Silver Hair Dewasa'),
(55, 28, 'https://s1.bukalapak.com/img/60666980891/large/data.jpeg', 'Bibit Asparagus Fern'),
(56, 28, 'https://id-test-11.slatic.net/p/7594c67ebbc5a6e078a41478c4d76acf.jpg', 'Asparagus Fern Dewasa'),
(57, 29, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/3/2/032de1f6-52f9-4850-9d64-bcf4b5ab9a08.jpg.webp', 'Bibit Pegagan Air'),
(58, 29, 'https://borneo24.com/wp-content/uploads/2021/03/tanaman_hias_air_PEGAGAN_.jpg', 'Pegagan Air Dewasa'),
(59, 30, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/7/12/8dca30a8-9f68-419b-9ac6-6aaf43c9f7e0.jpg.webp', 'Bibit Melati Air'),
(60, 30, 'https://s0.bukalapak.com/img/5921657423/large/melati_air_2.jpg', 'Melati Air Berbunga'),
(61, 31, 'https://bibitbunga.com/wp-content/uploads/2015/10/media-tanam-anggre.jpg', 'Bibit Anggrek Bulan'),
(62, 31, 'https://i0.wp.com/workamerica.co/wp-content/uploads/2019/12/Anggrek-Bulan-1.jpg', 'Anggrek bulan berbunga'),
(63, 32, 'orxideyamiltoniyauxodvdomashnixusloviyax_4532605F.jpg (700×525) (blabto.com)', 'Bibit Anggrek Miltonia'),
(64, 32, 'https://blabto.com/img/orxideyamiltoniyauxodvdomashnixusloviyax_7E0A6A8E.jpg', 'Anggrek Miltonia berbunga'),
(65, 33, 'anggrek-hitam-3a.jpg (221×336) (pertanian.go.id)', 'Bibit Anggrek Hitam'),
(66, 33, 'anggrek-h-atas.jpg (255×198) (wordpress.com)', 'Anggrek Hitam berbunga'),
(67, 34, 'stek-batang-tanaman-kamboja.jpg (620×468) (bibitbunga.com)', 'Stek batang Bunga Kamboja'),
(68, 34, 'https://ilmubudidaya.com/wp-content/uploads/2017/06/bunga-kamboja-300x238.jpg', 'Bunga Kamboja berbunga'),
(69, 35, 'https://2.bp.blogspot.com/-4MrPfJvbvEI/VQjZMuYr3LI/AAAAAAAABJI/HMRWH5x4rzI/s1600/DSC02569.JPG', 'Tunas Bunga Pansy'),
(70, 35, 'https://ratufloristjakarta.com/wp-content/uploads/Bunga-pansy.jpg', 'Bunga Pansy berbunga'),
(71, 36, 'https://mybotanyland.com/wp-content/uploads/2020/06/Lili-Paris-3-416x416.jpg', 'Bibit Bunga Lili Paris'),
(72, 36, 'https://makassar.terkini.id/wp-content/uploads/2020/11/terkiniid_lili-paris-gantung-600x385.jpg', 'Bunga Lili Paris sebagai hiasan rumah'),
(73, 36, 'cara-memperbanyak-lili-paris.jpg (640×427) (99.co)', 'Penanaman Bunga Lili Paris di Pot'),
(74, 37, 'https://i2.wp.com/gdm.id/wp-content/uploads/2020/08/perbanyakan-anakan-1024x600.jpg', 'Bibit Bunga Gelombang Cinta'),
(75, 37, 'https://bibitbunga.com/wp-content/uploads/2015/09/bunga-anthurium-di-simpan-pada-tempat-teduh.jpg', 'Bunga Gelombang Cinta dewasa di pekarangan rumah'),
(76, 38, 'https://media.karousell.com/media/photos/products/2020/11/26/tanaman_kuping_gajah_1606396224_ef3fa585_progressive.jpg', 'Bibit tanaman Kuping Gajah'),
(77, 38, 'https://i1.wp.com/f1-styx.imgix.net/article/2018/12/21174158/1-9-2013-farrell-10.jpg?resize=1000%2C664&ssl=1', 'Tanaman Kuping gajah di pekarangan rumah'),
(78, 39, 'tanaman-puring-768x576.jpg (768×576) (paktanidigital.com)', 'Tanaman Daun Puring di Pekarangan'),
(79, 39, 'cara-menanam-bunga-puring.2.jpg (1152×675) (wp.com)', 'Bibit tanaman Daun Puring'),
(80, 40, 'https://i2.wp.com/dayaternak.com/wp-content/uploads/2020/03/penanaman-ulang-tanduk-rusa.jpg', 'Bibit tanaman tanduk rusa yang menempel di pohon'),
(81, 40, 'https://i2.wp.com/dayaternak.com/wp-content/uploads/2020/03/bibit-paku-tanduk-rusa.jpg', 'Tanaman tanduk rusa yang ditempel di dinding'),
(82, 41, 'https://www.lpmdinamika.co/wp-content/uploads/2015/02/pohon-apel.jpg', 'Pohon Apel yang Buahnya Mulai Matang'),
(83, 41, 'https://storage.googleapis.com/allindonesiatoursim/2017/08/Kebun-apel.jpg', 'Pekarangan Apel yang Memasuki Masa Berbuah'),
(124, 62, 'https://images.tokopedia.net/img/cache/700/product-1/2019/2/23/5173209/5173209_54d54203-e75b-48b0-9031-d2928e8af0c6.jpg', 'Tanaman Seledri yang Siap Dipanen'),
(125, 62, 'https://www.lovethegarden.com/sites/default/files/content/articles/UK_celery-growing.jpg', 'Tanaman Seledri pada Lahan Terbuka'),
(126, 63, 'https://blogpictures.99.co/cara-menanam-daung-bawang.jpg', 'Menanam Daun Bawang pada Pot'),
(127, 63, 'https://blogpictures.99.co/cara-menanam-daun-bawang-2.jpg', 'Daun Bawang yang Dipanen'),
(132, 66, 'https://paktanidigital.com/artikel/wp-content/uploads/2020/04/onion-3540502_1920-1-768x512.jpg', 'Bawang Bombay yang Siap Dipanen'),
(133, 66, 'https://paktanidigital.com/artikel/wp-content/uploads/2020/04/onion-3706937_1920-768x512.jpg', 'Bawang Bombay pada Lahan Tanam'),
(134, 66, 'https://blog.elevenia.co.id/wp-content/uploads/2020/06/4620-tanaman-bawang-bombay.jpg', 'Penanaman Bawang Bombay pada Pot'),
(135, 66, 'https://blog.elevenia.co.id/wp-content/uploads/2020/06/4620-bawang-bombay-polybag.jpg', 'Bibit Bawang Bombay'),
(136, 67, 'https://www.99.co/blog/indonesia/wp-content/uploads/2017/11/Bawang-Putih-Header.jpg', 'Penanaman Bawang Putih'),
(137, 67, 'https://kabartani.com/wp-content/uploads/2018/10/6-Kunci-Sukses-Budidaya-Bawang-Putih-Produksi-Tinggi-dan-Ramah-Lingkungan-kabartani.jpg', 'Tahap Panen Bawang Putih'),
(138, 67, 'https://i2.wp.com/gdm.id/wp-content/uploads/2019/04/cara-menanam-bawang-putih-1152x675.jpg', 'Bawang Putih Siap Panen'),
(146, 71, '191123112118-582.jpg (600×450) (agronet.co.id)', 'Bibit Tanaman Tomat'),
(147, 71, '5f0e0f0e72c36.jpg (750×500) (kompas.com)', 'Tanaman Tomat Berbunga'),
(148, 71, '-_191123111351-629.jpg (645×372) (agronet.co.id)', 'Tanaman Tomat yang Siap Panen'),
(149, 72, 'Cara-menyemai-benih-cabe.jpg (750×563) (zapwp.com)', 'Bibit Tanaman Cabai'),
(150, 72, 'penanaman-cabe-rawit.jpg (849×540) (ukmkreatif.com)', 'Tanaman Cabai Berbunga'),
(151, 72, 'https://gardening.id/wp-content/uploads/2019/05/menanam-cabai-2.jpg ', 'Tanaman Cabai yang Siap Panen'),
(152, 73, 'bibit-timun.jpg (661×446) (bibitbunga.com)', 'Bibit Tanaman Timun'),
(153, 73, 'pickle-1522464_640.jpg (239×320) (bp.blogspot.com)', 'Tanaman Timun berbunga'),
(154, 73, 'timun-dalam-pot.jpg (653×537) (bibitbunga.com)', 'Tanaman Timun yang Siap Panen'),
(155, 74, 'Tunas-labu-siam.jpg (674×476) (bibitbunga.com)', 'Bibit Tanaman Labu Siam'),
(156, 74, 'https://nimadesriandani.files.wordpress.com/2013/08/bunga-labu-siam-putih.jpg?w=448&h=&zoom=2', 'Tanaman Labu Siam Berbunga'),
(157, 74, 'Panen-labu-siam.jpg (672×487) (bibitbunga.com)', 'Tanaman Labu Siam yang Siap Panen'),
(158, 75, 'benih-paprika-yang-telah-berubah-menjadi-bibit.jpg (694×515) (bibitbunga.com)', 'Bibit Paprika'),
(159, 75, 'paprika-saat-berbunga.jpg (320×219) (bp.blogspot.com)', 'Tanaman Paprika Berbunga'),
(160, 75, 'https://www.99.co/blog/indonesia/wp-content/uploads/2021/04/gardenerspathcom.jpg', 'Tanaman Paprika yang Siap Panen'),
(161, 76, 'https://tabloidsinartani.com/uploads/news/images/inline/200601184404-420.jpg', 'Bibit Rosemary'),
(162, 76, 'https://i0.wp.com/trikmerawat.com/wp-content/uploads/2020/01/rosemary-flowers-blue-violet.jpg', 'Tanaman Rosemary yang Siap Panen'),
(163, 77, 'sirih-dengan-stek-300x236.jpg (300×236) (ilmubudidaya.com)', 'BIbit Sirih Merah'),
(164, 77, 'Panen-Tanaman-Sirih-Merah.jpg (632×500) (anekabudidaya.com)', 'Tanaman Sirih Merah yang Siap Panen'),
(165, 78, 'https://www.kangican.com/wp-content/uploads/2019/09/Tanaman-Temulawak.png', 'BIbit Temulawak'),
(166, 78, 'https://3.bp.blogspot.com/-Yu0qM9XbzJE/Uz5UvCqY88I/AAAAAAAAArk/zHZYdiCYZXo/s1600/images.jpg', 'Tanaman Temulawak yang Siap Panen'),
(167, 79, 'hipwee-1536493613-217-871112.jpg (696×522)', 'BIbit Jahe'),
(168, 79, 'gambar-tanaman-jahe.jpg (730×420) (paktanidigital.com)', 'Tanaman Jahe yang Siap Panen'),
(169, 80, 'popmamacom.jpg (600×315) (99.co)', 'Bibit Kunyit'),
(170, 80, 'abahtanicom-768x360.jpg (768×360) (99.co)', 'Tanaman Kunyit yang siap panen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fungsi`
--

CREATE TABLE `fungsi` (
  `fungsi_id` int(11) NOT NULL,
  `fungsi_nama` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fungsi`
--

INSERT INTO `fungsi` (`fungsi_id`, `fungsi_nama`) VALUES
(1, 'Kesehatan'),
(2, 'Hadiah'),
(3, 'Ruang Sempit'),
(4, 'Pekarangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fungsi_pertanaman`
--

CREATE TABLE `fungsi_pertanaman` (
  `fungsi_id` int(11) NOT NULL,
  `tanaman_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fungsi_pertanaman`
--

INSERT INTO `fungsi_pertanaman` (`fungsi_id`, `tanaman_id`) VALUES
(1, 62),
(4, 62),
(1, 71),
(4, 71),
(1, 72),
(4, 72),
(4, 73),
(4, 74),
(4, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 41),
(4, 41),
(1, 11),
(2, 11),
(3, 11),
(1, 12),
(2, 12),
(3, 12),
(1, 13),
(2, 13),
(3, 13),
(1, 14),
(2, 14),
(3, 14),
(1, 15),
(4, 15),
(1, 16),
(4, 16),
(1, 17),
(4, 17),
(2, 18),
(2, 19),
(4, 20),
(1, 20),
(4, 21),
(3, 22),
(4, 22),
(4, 23),
(2, 24),
(3, 24),
(4, 24),
(2, 25),
(3, 25),
(4, 25),
(2, 26),
(3, 26),
(3, 27),
(4, 27),
(2, 28),
(3, 28),
(4, 28),
(1, 29),
(3, 29),
(4, 29),
(4, 30),
(4, 63),
(4, 66),
(4, 67),
(2, 6),
(4, 6),
(2, 7),
(4, 7),
(2, 8),
(4, 8),
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_pajangan`
--

CREATE TABLE `galeri_pajangan` (
  `galeri_pajangan_id` int(11) NOT NULL,
  `galeri_foto_url` varchar(256) NOT NULL,
  `galeri_foto_judul` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri_pajangan`
--

INSERT INTO `galeri_pajangan` (`galeri_pajangan_id`, `galeri_foto_url`, `galeri_foto_judul`) VALUES
(1, 'https://cdn.discordapp.com/attachments/852888070911033395/854928767897829406/1.jpg', 'Pajangan Tanaman Seledri'),
(2, 'https://cdn.discordapp.com/attachments/852888070911033395/854930228823195668/2.jpeg', 'Display Tanaman Sayuran'),
(3, 'https://media.discordapp.net/attachments/852886402815361066/855106741695152138/WhatsApp_Image_2021-06-17_at_10.27.54_PM.jpeg?width=491&height=613', 'Display Tanaman Sukulen'),
(4, 'https://media.discordapp.net/attachments/852886402815361066/855110735977644042/WhatsApp_Image_2021-06-17_at_10.44.21_PM.jpeg?width=686&height=670', 'Display Tanaman Langka dan Sukulen'),
(5, 'https://cdn.discordapp.com/attachments/852886402815361066/856117037214334997/bisdiet2.png', 'Display Tanaman Apel dan Pir'),
(6, 'https://cdn.discordapp.com/attachments/852886402815361066/856109190632439818/bisdiet1.png', 'Display Tanaman Durian dan Nangka'),
(7, 'https://cdn.discordapp.com/attachments/852886402815361066/855348187337719828/673698.jpg', 'Display Tanaman Tomat dan Paprika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_tanaman`
--

CREATE TABLE `galeri_tanaman` (
  `galeri_pajangan_id` int(11) NOT NULL,
  `urutan_pajangan` int(11) NOT NULL,
  `tanaman_id` int(11) NOT NULL,
  `nama_tanaman` varchar(64) NOT NULL,
  `sumber_lain` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri_tanaman`
--

INSERT INTO `galeri_tanaman` (`galeri_pajangan_id`, `urutan_pajangan`, `tanaman_id`, `nama_tanaman`, `sumber_lain`) VALUES
(1, 1, 72, '', ''),
(1, 2, 0, 'Kemangi', 'http://cybex.pertanian.go.id/mobile/artikel/77742/Budidaya-Kemangi/'),
(1, 3, 62, '', ''),
(2, 1, 63, '', ''),
(2, 2, 70, '', ''),
(2, 3, 65, '', ''),
(2, 4, 0, 'Kangkung', 'http://cybex.pertanian.go.id/mobile/artikel/94695/BUDIDAYA-TANAMAN-KANGKUNG/'),
(3, 1, 11, '', ''),
(3, 2, 0, '', 'https://www.casaindonesia.com/article/read/8/2019/1159/Cara-Merawat-Monstera-21-Inspirasi-Aksesori-Interior'),
(3, 3, 14, '', ''),
(4, 1, 0, '', 'https://succulentpedia.blogspot.com/2019/12/tips-merawat-echeveria.html'),
(4, 2, 19, '', ''),
(4, 3, 0, '', 'https://www.neisha-diva.com/2020/02/cara-menanam-sirih-belanda-alias-njoy.html'),
(4, 4, 0, '', 'https://id.haenselblatt.com/burro-s-tail-care-how-grow-burro-s-tail-plant'),
(4, 5, 0, '', 'https://id.insterne.com/cara-menumbuhkan-dan-merawat-tanaman-crassula/'),
(5, 1, 41, '', ''),
(5, 2, 0, 'Pir', 'https://www.agronet.co.id/detail/budi-daya/pertanian/3638-Mudahnya-Menanam-Buah-Pir-dalam-Pot'),
(6, 1, 50, '', ''),
(6, 2, 49, '', ''),
(7, 1, 75, '', ''),
(7, 2, 71, '', ''),
(7, 3, 0, 'Terong', 'https://kutanam.com/cara-menanam-terong-menggunaan-polybag/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_alat`
--

CREATE TABLE `harga_alat` (
  `mitra_id` int(11) NOT NULL,
  `alat_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `link_ecom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `harga_alat`
--

INSERT INTO `harga_alat` (`mitra_id`, `alat_id`, `harga`, `link_ecom`) VALUES
(1, 1, 13500, 'https://www.tokopedia.com/tamankuid/polibag-polybag-tanaman-berbagai-ukuran-untuk-bibit-tanaman-50-x-50'),
(1, 2, 7900, 'https://www.tokopedia.com/tamankuid/pupuk-npk-phonska-plus-15-15-15-pupuk-daun-dan-bunga-repack-400gr'),
(1, 3, 9850, 'https://www.tokopedia.com/tamankuid/media-tanam-sekam-bakar-arang-sekam-siap-pakai'),
(1, 4, 13000, 'https://www.tokopedia.com/tamankuid/pot-plastik-warna-hitam-ukuran-30-cm-pot-tanaman-hitam-sa30-tebal'),
(3, 2, 4000, 'facebook.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_tanaman`
--

CREATE TABLE `harga_tanaman` (
  `mitra_id` int(11) NOT NULL,
  `tanaman_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `harga_tanaman`
--

INSERT INTO `harga_tanaman` (`mitra_id`, `tanaman_id`, `harga`) VALUES
(1, 72, 13000),
(1, 77, 32500),
(1, 76, 18000),
(1, 62, 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_alat`
--

CREATE TABLE `kategori_alat` (
  `kategori_alat_id` int(11) NOT NULL,
  `kategori_alat_nama` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_alat`
--

INSERT INTO `kategori_alat` (`kategori_alat_id`, `kategori_alat_nama`) VALUES
(1, 'Pupuk'),
(2, 'Pot'),
(3, 'Media Tanam'),
(4, 'Alat Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_growth`
--

CREATE TABLE `kategori_growth` (
  `kategori_growth_id` int(11) NOT NULL,
  `kategori_growth_nama` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_growth`
--

INSERT INTO `kategori_growth` (`kategori_growth_id`, `kategori_growth_nama`) VALUES
(1, 'Tanaman Hias Kaktus'),
(2, 'Mawar'),
(3, 'Sayuran seledri'),
(4, 'Sayuran tomat'),
(5, 'Apel'),
(6, 'Sukulen'),
(7, 'Bonsai'),
(8, 'Tanaman Hias Langka'),
(9, 'Tanaman Obat Rimpang'),
(10, 'Sayuran Buah'),
(11, 'Sayuran Cabai'),
(12, 'Tanaman Obat Daun'),
(13, 'Tanaman Hias Berbunga'),
(14, 'Tanaman Hias Tidak Berbunga'),
(15, 'Tanaman Hias Daun'),
(16, 'Sayuran Bawang-Bawangan'),
(17, 'Tanaman Hias Gantung'),
(18, 'Tanaman Hias Air'),
(19, 'Tanaman Hias Rambat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_tanaman`
--

CREATE TABLE `kategori_tanaman` (
  `kategori_tanaman_id` int(11) NOT NULL,
  `kategori_tanaman_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_tanaman`
--

INSERT INTO `kategori_tanaman` (`kategori_tanaman_id`, `kategori_tanaman_nama`) VALUES
(1, 'Tanaman Hias'),
(2, 'Tanaman Buah'),
(3, 'Tanaman Sayur'),
(4, 'Tanaman TOGA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kekurangan`
--

CREATE TABLE `kekurangan` (
  `tanaman_id` int(11) NOT NULL,
  `kekurangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kekurangan`
--

INSERT INTO `kekurangan` (`tanaman_id`, `kekurangan`) VALUES
(1, 'Harus memperhatikan batang karena batang mudah patah'),
(1, 'Daun sering rontok apabila kering'),
(2, 'Jangan sampai terlalu banyak terkena sinar matahari karena tanaman dapat menjadi kuning'),
(2, 'Mudah kering apabila penyiraman dilakukan tidak sesuai ketentuan'),
(3, 'Tanaman mudah kering'),
(3, 'Pada gel topikal lidah buaya diharapkan untuk tidak dimakan karena mengandung zat lain bahkan dapat menjadi racun'),
(4, 'Daun mudah rontok jika dipegang'),
(4, 'Batang manik-manik sangat rapuh bila ada sentuhan'),
(5, 'Tanaman sulit dicari'),
(5, 'Lumayan susah untuk dikembangbiakan'),
(6, 'Bunganya akan mekar secara pediodik atau musiman'),
(6, 'Apabila kekeringan dapat menyebabkan tanaman mati'),
(7, 'Penyiraman usahakan tidak terlalu sering karena akan menyebabkan kebusukan bunga'),
(7, 'Pada minyak lavender diharapkan tidak terkena mata karena menyebabkan iritas dan rasa bakar'),
(8, 'Memiliki duri yang apabila terkena sentuhan dapat menyebabkan luka'),
(8, 'Bunga ini membutuhkan tempat khusus karena rentan terkena hama'),
(9, 'Memiliki sebuah duri sehingga dapat menyebabkan luka apabila terkena sentuhan'),
(9, 'Jangan terlalu sering untuk menyiram air karena sudah memiliki cadangan air pada dasarnya tanaman ini hidup di daerah kering'),
(10, 'Jika kekurangan air maka tanaman dapat membusuk'),
(10, 'Apabila pot terlalu basah maka dapat membuat tanaman mati'),
(11, 'Akar dapat membusuk karena tanah terlalu basah'),
(11, 'Rentan rusak jka terdapat pada suhu dingin'),
(12, 'Pencahayaan terbaik menghadap selatan-tenggara'),
(12, 'Suhu optimal 10 derajat'),
(13, 'Terlalu banyak air dapat membuatnya membusuk'),
(13, 'Bergantung makanan pada kaktus bawah'),
(14, 'Akar dapat membusuk jika disiram secara terus-menerus'),
(14, 'Dapat terserang gulma'),
(15, 'Rutin mengganti pot bonsai'),
(15, 'Perlu rutin memangkas batang'),
(16, 'Mudah terkena hama jika tanah lembab'),
(16, 'Akar mudah membusuk jika tanah lembab'),
(17, 'Cara merawat tergolong sulit'),
(17, 'Perawatan harus dilakukan secara rutin dan bertahap'),
(17, 'Proses pembentukan bonsai beringin membutuhkan waktu yang lama'),
(18, 'Rentan pembusukan akar'),
(18, 'Getah atau cairan yang keluar dari jaringan tanaman dapat menyebabkan iritasi pada kulit'),
(19, 'Perlu sering-sering merotasi tanaman agar tumbuh seimbang'),
(19, 'Terlalu banyak air akan menyebabkan tanaman membusuk'),
(20, 'Tanaman sulit ditemukan'),
(20, 'Saat cosmos terlalu basah dapat terserang hama'),
(21, 'Khasiatnya belum terbukti'),
(21, 'Tidak bisa diletakkan di ruangan teduh atau di dalam ruangan'),
(22, 'Getah dapat menyebabkan iritasi'),
(22, 'Jika menempel di dinding dapat merusak dinding tersebut'),
(23, 'Batang berduri'),
(23, 'Memerlukan pemangkasan berkala'),
(24, 'Rentan terhadap pembusukan akar'),
(24, 'Rentan terhadap badai hujan'),
(25, 'Rentan terhadap suhu panas'),
(25, 'Sebagian besar bunga mati di awal pertumbuhannya'),
(26, 'Harga relatif mahal'),
(26, 'Daun beracun'),
(27, 'Jika daun terlalu panjang akan mengganggu lingkungan'),
(27, 'Daun yang terkena infeksi nematoda harus dipangkas'),
(28, 'Daun dapat menyebabkan iritasi kulit'),
(28, 'Dapat menyebabkan ruam pada kulit'),
(29, 'Beberapa khasiatnya belum terbukti'),
(29, 'Memiliki bunga yang kecil dan tidak mencolok'),
(30, 'Tidak mengeluarkan aroma harum'),
(30, 'Cepat mati jika terlambat diberi air atau kekurangan air'),
(31, 'dari pemilihan pupuk harus sesuai untuk bunga anggrek, karena jika salah memilih pupuk anggrek tersebut akan layu walaupun disiram dengan air sebanyak apapun'),
(31, 'kelebihan terkena sinar matahari juga bisa membuat tanaman anggrek layu dan sulit untuk tumbuh'),
(31, 'Anggrek bulan tidak bisa terkena sinar matahari langsung sehingga membutuhkan naungan'),
(32, 'Budidaya Anggrek Miltonia agak rumit'),
(32, 'Bunga gampang terbakar jika terkena matahari langsung'),
(33, 'Harganya mahal'),
(33, 'Termasuk bunga yang langka'),
(34, 'Mudah terserang hama tanaman'),
(34, 'Daun akan menguning dan batang lemas jika terlalu banyak air'),
(35, 'Bunga pansy akan gagal berbunga apabila kurang mendapat penyinaran'),
(35, 'Cara hidup yang sukar serta penanganan yang sulit menjadi alasan utama mengapa populasi bunga pansy ini masih kurang di Indonesia'),
(36, 'Lili paris sangat sensitif terhadap kandungan fluoride dalam air keran'),
(36, 'Tidak bisa tumbuh di suhu yang ekstrem'),
(37, 'Membutuhkan perawatan khusus'),
(37, 'Memerlukan biaya yang banyak untuk merawat'),
(38, 'Tidak tahan suhu dingin'),
(38, 'Hanya menggosok daunnya saja bisa menyebabkan sensasi terbakar atau gatal'),
(38, 'Daun kuping gajah bisa menyebabkan dinding saluran pernapasan membengkak dan tertutup jalan udara'),
(39, 'Walau mudah dibudidayakan membutuhkan waktu yang lama serta tempat yang luas untuk budidaya secara masal'),
(39, 'Membutuhkan perawatan tertentu karena puring juga rentan terhadap stress/rontok/layu hingga kematian'),
(39, 'Membutuhkan waktu yang lama untuk mendapatkan sebuah varian baru mulai dari penyerbukan,penyemaian hingga pembesaran'),
(39, 'Tidak setiap silangan menghasilkan varian yang sesuai dengan yang kita harapkan baik bentuk dan corak warna daunnya'),
(40, 'Butuh tanaman lain sebagai inang untuk tumbuh'),
(40, 'cepat mengering jika kekurangan air'),
(41, 'Sangat bergantung terhadap kualitas lahan tanam'),
(41, 'Infeksi penyakit dapat menurunkan kualitas buah'),
(62, 'Mudah terserang hama dan penyakit'),
(62, 'Rentan rusak jika tidak ditanam di tanah yang mengandung garam natrium, kalsium, dan unsur boron'),
(63, 'Anakan bawang daun tidak terlalu banyak jika ditanam di dataran rendah'),
(63, 'Benih bawang yang berasal dari biji mempunyai waktu panen yang lebih lama'),
(66, 'Tanaman ini tidak menyukai tanah dengan air yang terlampau banyak, tetapi juga tidak dapat hidup dengan baik jika kekurangan air'),
(66, 'Mudah terserang jamur jika tanah becek'),
(67, 'Benih bawang putih harus mendapatkan perlakuan khusus agar tidak rusak dan bisa dipanen'),
(67, 'Kualifikasi tanah cukup rumit'),
(71, 'Rentan hama dan penyakit'),
(71, 'Mudah membusuk jika terlalu banyak air'),
(72, 'Rentan hama dan penyakit'),
(72, 'Rentan kering saat baru dipindahkan'),
(73, 'Memerlukan media untuk merambat'),
(73, 'Membutuhkan ketelatenan dan harus sering mengecek tanaman dan media tanam'),
(74, 'Membutuhkan media untuk merambat'),
(74, 'Rawan hama dan penyakit'),
(75, 'Mudah roboh saat sudah tinggi sehingga membutuhkan penyangga'),
(75, 'Mudah terserang penyakit jika curah hujan tinggi'),
(76, 'Cepat layu dan kering jika media tanamnya selalu basah'),
(76, 'Mudah stres saat dipindahkan ke media tanam baru'),
(77, 'Mudah membusuk jika terlalu banyak air'),
(77, 'Jika terlalu panas, dapat menyebabkan tanaman kering'),
(78, 'Rawan hama dan penyakit'),
(78, 'Mudah busuk jika terlalu banyak air'),
(79, 'Rawan penyakit'),
(79, 'Hanya bisa menggunakan pupuk organik karena merupakan tanaman obat'),
(80, 'Rimpang mudah busuk jika terlalu banyak air'),
(80, 'Hanya bisa menggunakan pupuk organik karena merupakan tanaman obat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelebihan`
--

CREATE TABLE `kelebihan` (
  `tanaman_id` int(11) NOT NULL,
  `kelebihan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelebihan`
--

INSERT INTO `kelebihan` (`tanaman_id`, `kelebihan`) VALUES
(1, 'Sebagai dekorosi rumah'),
(1, 'Kontras Anatara warna daun dan batang menjadi daya tarik tersendiri'),
(2, 'Tanaman yang mudah dirawat'),
(2, 'Dapat menjadi pemanis meja kerja'),
(3, 'Memiliki banyak manfaat seperti pembuatan minuman,dodol, jelly, dan keripik mentah'),
(3, 'Merupakan tanaman yang dapat bertahan di kering karena memiliki cadangan air'),
(3, 'Kaya akan kandungan seperti enzim dan asam amino'),
(4, 'Merupakan tanaman menghasilkan tunas yang banyak'),
(4, 'Batang manik-maniknya memberikan kesan pemanis'),
(5, 'Tanaman ini dilengkapi dengan jebakan yang akan menutup ketika ada serangga hinggap'),
(5, 'Getah yang dihasilkan dapat dijadikan pemanis'),
(6, 'Bunga matahari memiliki pesona keindahan yang mempalingkan perhatian banyak orang'),
(6, 'Banyak istilah berbeda yang merujuk bunga matahari di setiap negara'),
(7, 'Biasanya bunga lavender digunakan seperti bumbu masakan atau minyak essensial'),
(7, 'Jumlah bunga memiliki 25 - 30 Spesies'),
(8, 'Memiliki 300 spesies bunga'),
(8, 'Keindahan bunga mawar tidak bisa ditolak maka dari itu banyak wanita yang memujanya'),
(8, 'Termasuk dalam tumbuhan kingdom plantae'),
(9, 'Dapat dijadikan tanaman hias disudut ruangan'),
(9, 'Perawatan sangat mudah bagi pemula pecinta tanaman'),
(10, 'Cocok untuk dekorasi rumah'),
(10, 'Tidak berduri dan memiliki daun yang indah'),
(11, 'Cocok untuk dekorasi rumah karena tanaman yang kecil'),
(11, 'Sangat cocok untuk pekebun pemula'),
(12, 'Memiliki daya tahan ekstra sehingga mudah untuk dirawat oleh pemula'),
(12, 'Cara merawatnya tidak sulit'),
(13, 'Memiliki warna mencolok'),
(13, 'Cara merawatnya tidak sulit'),
(14, 'Tidak perlu terlalu sering disiram'),
(14, 'Tanaman hias cocok untuk pemula'),
(15, 'Bentuk daun tumbuh menyerupai payung'),
(15, 'Tanaman bonsai yang cocok untuk pemula'),
(15, 'Dapat membentuk tumbuhnya batang'),
(16, 'Dapat membentuk tumbuhnya batang'),
(16, 'Tidak memerlukan banyak air'),
(16, 'Tanaman kecil dapat menjadi penghias ruangan'),
(16, 'Perawatan mudah'),
(16, 'Tidak terlalu perlu pupuk'),
(16, 'Dapat membentuk tumbuhnya batang'),
(17, 'Memiliki struktur yang kuat'),
(17, 'Memiliki harga yang tinggi'),
(17, 'Tidak gampang mati'),
(17, 'Memiliki daun yang rimbun'),
(17, 'Ukuran kecil dapat di taruh dimana saja'),
(18, 'Memiliki nilai jual tinggi'),
(18, 'Relatif tahan hama dan penyakit'),
(18, 'Mudah karena dapat tumbuh pada kondisi yang kurang cahaya'),
(19, 'Tidak membutuhkan banyak lahan'),
(19, 'Perawatan tanaman mudah'),
(19, 'Mempunyai nilai jual yang tinggi'),
(20, 'Dapat dijadikan penghias ruangan'),
(20, 'Mudah dirawat'),
(20, 'Beraroma coklat panggang'),
(20, 'Bunganya dapat dikonsumsi'),
(21, 'Daun berwarna ungu yang cantik'),
(21, 'Bisa dijadikan pewarna alami'),
(22, 'Daun berbentuk maple sehingga memberikan kesan cantik'),
(22, 'Perawatan mudah'),
(23, 'Tanaman hias populer'),
(23, 'Warna bunga bervariasi'),
(24, 'Menarik sebagai dekorasi taman'),
(24, 'Terlihat cantik jika ditanam bergerombol'),
(25, 'Mudah dipelihara dan dibudidayakan'),
(25, 'Bentuk daun seperti laba-laba'),
(26, 'Menambah nilai estetika ruangan'),
(26, 'Memiliki nilai jual tinggi'),
(27, 'Daun berwarna hijau dengan kombinasi warna perak'),
(27, 'Cocok untuk pemula'),
(28, 'Dapat dikembangbiakkan sebagai tumbuhan ornamental atau tanaman hias'),
(28, 'Mempercantik ruangan'),
(29, 'Mudah dibudidayakan'),
(29, 'Memiliki banyak khasiat bagi kesehatan'),
(30, 'Bunga yang indah'),
(30, 'Sangat mudah ditanam'),
(31, 'digunakan sebagai salah satu bahan kosmetik karena anggrek bulan dapat menyimpan air sehingga anggrek bulan dapat digunakan untuk mencegah terjadinya penuaan dini'),
(31, 'dipercaya sebagai tonik panjang umur.'),
(31, 'sebagai pewangi alami ruangan'),
(32, 'sebagai tanaman hias untuk memperindah taman'),
(32, 'sebagai bahan makanan yang lezat oleh berbagai negara'),
(33, 'Memiliki aroma wangi yang sangat khas'),
(33, 'Perpaduan bintik hitam yang menjadi ciri khas\''),
(33, 'sebagai maskot flora dari timur'),
(33, 'Menghentikan pendarahan pada rahim'),
(34, 'Dimanfaatkan untuk membuat teh'),
(34, 'Dapat menjadi obat'),
(34, 'Sebagai antioksidan'),
(34, 'Dapat menjadi minyak essensial'),
(35, 'Memiliki bau yang harum'),
(35, 'Bermanfaat bagi kesehatan'),
(35, 'Dapat menjadi bahan makanan'),
(35, 'Dapat digunakan sebagai produk skincare'),
(36, 'Dapat menghasilkan oksigen'),
(36, 'Dapat mengurangi polusi'),
(36, 'Bunga hiasan'),
(36, 'Paling banyak disukai orang'),
(37, 'Menghasilkan udara yang sejuk'),
(37, 'Pendingin ruangan alami'),
(37, 'Penghilang rasa penat'),
(37, 'Sebagai hiasan di dalam rumah'),
(37, 'Sebagai hiasan di dalam rumah'),
(38, 'Daya tarik utama dari kuping gajah adalah bentuk daunnya yang indah'),
(38, 'Memiliki kesan mewah dan eksklusif'),
(38, 'Obat penghilang stress'),
(38, 'Kuping gajah banyak menjadi hiasan taman dan istana kerajaan-kerajaan di Jawa'),
(39, 'Sebagai dekorasi rumah'),
(39, 'Tanaman Puring untuk Percantik Balkon'),
(39, 'Tanaman Puring untuk Percantik Dapur'),
(40, 'Memiliki banyak khasiat bagi kesehatan'),
(40, 'Cara pemanfaatannya cukup sederhana'),
(40, 'Sebagai tanaman hias untuk memperindah halaman'),
(41, 'Memiliki nilai ekonomi yang tinggi karena diminati oleh kebanyakan orang'),
(41, 'Dapat dijadikan olahan berbentuk makanan maupun minuman'),
(62, 'Mudah ditanam'),
(62, 'Digunakan sebagai bumbu dan penyedap'),
(62, 'Tidak membutuhkan lahan luas'),
(63, 'Sangat mudah untuk ditanam'),
(63, 'Tidak membutuhkan lahan yang luas'),
(66, 'Penanamannya mudah'),
(66, 'Berguna untuk bahan masakan'),
(67, 'Memiliki cita rasa yang khas'),
(67, 'Mudah tumbuh dan tidak memerlukan ruang yang luas'),
(71, 'Tidak membutuhkan lahan yang luas'),
(71, 'Fleksible dapat ditanam di dataran tinggi maupun rendah'),
(72, 'Memounyai banyak manfaat untuk tubuh'),
(72, 'Dapat digunakan sebagai bumbu dapur'),
(72, 'Fleksible dapat ditanam di dataran tinggi maupun rendah'),
(73, 'Mempunyai banyak manfaat untuk kesehatan dan kecantikan'),
(73, 'Dapat ditanam di dataran rendah maupun tinggi'),
(74, 'Sayuran yang memiliki banyak manfaat'),
(74, 'Perawatannya cukup mudah'),
(75, 'Memiliki banyak manfaat untuk kesehatan'),
(75, 'Tidak membutuhkan lahan yang luas'),
(76, 'Bisa rempah yang bisa juga menjadi tanaman hias'),
(76, 'Memiliki bau yang wangi'),
(77, 'Mempunyai banyak manfaat untuk kesehatan'),
(77, 'Dapat digunakan sebagai tanaman hias'),
(78, 'Mempunyai banyak manfaat untuk kesehatan'),
(78, 'Dapat beradaptasi dengan baik di berbagai jenis tanah'),
(79, 'Mudah pemeliharaannya'),
(79, 'Produksinya tinggi'),
(80, 'Masa panen yang relatif cepat'),
(80, 'Mudah perawatannya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `khasiat`
--

CREATE TABLE `khasiat` (
  `tanaman_id` int(11) NOT NULL,
  `khasiat` varchar(256) NOT NULL,
  `khasiat_src` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `khasiat`
--

INSERT INTO `khasiat` (`tanaman_id`, `khasiat`, `khasiat_src`) VALUES
(1, 'Menyehatkan kandung kemih', 'https://dosenpertanian.com/tanaman-suplir/ '),
(1, 'Menetlarisir kesehatan ginjal', 'https://dosenpertanian.com/tanaman-suplir/ '),
(1, 'Melancarkan saluran kencing', 'https://dosenpertanian.com/tanaman-suplir/ '),
(2, 'Menyerap gas karbon dirumah', 'https://www.dekoruma.com/artikel/117368/manfaat-memelihara-tanaman-kaktus#:~:text=Memperbaiki%20Kualitas%20Udara%20di%20Dalam%20Ruangan&text=Oleh%20karena%20itu%2C%20tanaman%20kaktus,berupa%20oksigen%20baru%20di%20ruangan.&text=Tidak%20hanya%20untuk%20karb'),
(2, 'Meningkatkan kadar happy pada manusia', 'https://www.dekoruma.com/artikel/117368/manfaat-memelihara-tanaman-kaktus#:~:text=Memperbaiki%20Kualitas%20Udara%20di%20Dalam%20Ruangan&text=Oleh%20karena%20itu%2C%20tanaman%20kaktus,berupa%20oksigen%20baru%20di%20ruangan.&text=Tidak%20hanya%20untuk%20karb'),
(3, 'Anti mikroba melawan banteri panthogen', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(3, 'sebagai pembersih tubuh', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(3, 'penstabil kadar kolestrol darah', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(3, 'memiliki kandungan antibiotik', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(3, 'bahan memperlambat penuaan dini', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(3, 'sebagai anti luka bakar', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html'),
(4, 'Mengeluarkan oksigen siang hari', 'https://www.cakapcakap.com/deretan-tanaman-ini-punya-manfaat-tak-terduga-jika-diletakkan-di-meja-kerja/'),
(4, 'Mengeluarkan karbondioksida malam hari', 'https://www.cakapcakap.com/deretan-tanaman-ini-punya-manfaat-tak-terduga-jika-diletakkan-di-meja-kerja/'),
(5, 'Mengobati penyakit kanker', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Meningkatkan HDL', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Mengobati HIV dan AIDS', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Mengatasi Alergi', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Mengobati jenis infeksi', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Membunuh parasit berbahaya di tubuh', 'https://manfaat.co.id/manfaat-bunga-venus'),
(5, 'Meningkatkan kekebalan tubuh', 'https://manfaat.co.id/manfaat-bunga-venus'),
(6, 'Akar dari bunga matahari mampu menyembuhkan infeksi saluran kencing', 'https://bibitbunga.com/cara-menanam-bunga-matahari-dari-biji/'),
(6, 'Akar dari bunga matahari mampu menyembuhkan infeksi dari saluran pernapasan', 'https://bibitbunga.com/cara-menanam-bunga-matahari-dari-biji/'),
(7, 'Detoks kulit alami,', 'https://rimbakita.com/bunga-lavender/'),
(7, 'Menyembuhkan jerawat', 'https://rimbakita.com/bunga-lavender/'),
(7, 'Pengusiran nyamuk', 'https://rimbakita.com/bunga-lavender/'),
(7, 'Pembersihan ketombe', 'https://rimbakita.com/bunga-lavender/'),
(8, 'Sebagai obat-obatan karena kaya vitamin c', 'https://www.kepogaul.com/tanaman/informasi-seputar-bunga-mawar/'),
(8, 'Untuk pembuatan parfum', 'https://workamerica.co/bunga-mawar/#:~:text=Mawar%20Musk,-monticelloshop.org&text=Mawar%20bernama%20latin%20Rosa%20moschata,musim%20semi%20hingga%20musim%20gugur.&text=Ciri%20khas%20mawar%20musk%20adalah,biji%20di%20bawah%20daging%20buah.'),
(9, 'Pengobatan alternatif', 'https://www.honestdocs.id/agave#:~:text=Manfaat%20penggunaan%20Agave,flaktuasi%2C%20gasthritis%2C%20dan%20konstipasi.'),
(9, 'Mengurangi berat badan', 'https://www.honestdocs.id/agave#:~:text=Manfaat%20penggunaan%20Agave,flaktuasi%2C%20gasthritis%2C%20dan%20konstipasi.'),
(9, 'Menjaga level gula darah', 'https://www.honestdocs.id/agave#:~:text=Manfaat%20penggunaan%20Agave,flaktuasi%2C%20gasthritis%2C%20dan%20konstipasi.'),
(10, 'Sebagai penawar racun', 'https://www.kompas.com/homey/read/2021/04/20/142355776/tak-hanya-jadi-hiasan-ini-manfaat-kaktus-dalam-kehidupan-kita?page=all'),
(10, 'Sebagai penangkal virus dan alergi karena terdapat kandungan flavonoid', 'https://www.kompas.com/homey/read/2021/04/20/142355776/tak-hanya-jadi-hiasan-ini-manfaat-kaktus-dalam-kehidupan-kita?page=all'),
(11, 'Melindungi sel otak', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(11, 'Mencegah penyakit', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(11, 'Membantu pernapasan', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(12, 'Menurunkan berat badan', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(12, 'Melembapkan rumah', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(12, 'Menyerap karbon dioksida dan melepaskan oksigen segar', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(13, 'Membersihkan udara', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(13, 'Anti kanker', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(13, 'Meningkatkan fokus', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(14, 'Mengandung vitamin C, E, A, zat besi, kalsium, dan karotenoid', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(14, 'Mengurangi peradangan dalam tubuh', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(14, 'Sumber anti-oksidan', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(14, 'Menurunkan kolesterol dan menetralkan gula darah', 'https://www.klikdokter.com/info-sehat/read/3616515/ini-manfaat-memelihara-tanaman-kaktus-bagi-kesehatan'),
(15, 'Pereda stress', 'https://www.kompas.com/homey/read/2021/02/05/120400976/7-manfaat-luar-biasa-meletakkan-tanaman-bonsai-di-rumah?page=all'),
(15, 'Pembersih udara', 'https://www.kompas.com/homey/read/2021/02/05/120400976/7-manfaat-luar-biasa-meletakkan-tanaman-bonsai-di-rumah?page=all'),
(15, 'Menumbuhkan kesabaran', 'https://www.kompas.com/homey/read/2021/02/05/120400976/7-manfaat-luar-biasa-meletakkan-tanaman-bonsai-di-rumah?page=all'),
(16, 'Memberikan energi pada ruang lingkup', 'https://www.kompas.com/homey/read/2021/02/05/120400976/7-manfaat-luar-biasa-meletakkan-tanaman-bonsai-di-rumah?page=all'),
(16, 'Melatih kesabaran', 'https://www.diminimalis.com/manfaat-tanaman-bonsai/'),
(16, 'Melatih kreativitas otak', 'https://dosenpertanian.com/manfaat-bonsai/'),
(17, 'Membantu meningkatkan ketajaman ingatanmu', 'https://www.blogdaffa.com/2021/06/manfaat-tanaman-bonsai.html'),
(17, 'Membuat banyak bergerak ketika merawat bonsai', 'https://www.blogdaffa.com/2021/06/manfaat-tanaman-bonsai.html'),
(17, 'Menjaga daya ingatmu tetap tajam', 'https://www.99.co/blog/indonesia/manfaat-tanaman-bonsai/'),
(18, 'Menambah stok oksigen dalam ruangan', 'https://www.idntimes.com/life/inspiration/renny-fitri/5-manfaat-monstera-tanaman-kekinian-yang-tak-cuma-sekadar-trendi-c1c2/1'),
(18, 'Buahnya memilki unsur K (Kalium) dan vitamin C', 'https://wolipop.detik.com/living/d-5110783/manfaat-menanam-dan-budidaya-tanaman-hias-monstera-populer-untuk-pecinta-kebun'),
(18, 'Membuat ruangan terasa sejuk dan nyaman', 'https://galamedia.pikiran-rakyat.com/humaniora/pr-35892346/janda-bolong-ini-4-manfaat-kesehatan-tanaman-hias-yang-harganya-selangit-itu?page=2'),
(19, 'Menurunkan kecemasan', 'https://www.kompas.com/homey/read/2020/12/24/202531576/cara-merawat-pilea-tanaman-koin-berdaun-unik?page=all'),
(19, 'Membuat terasa bahagia', 'https://www.kompas.com/homey/read/2020/12/24/202531576/cara-merawat-pilea-tanaman-koin-berdaun-unik?page=all'),
(20, 'Meningkatkan kekebalan tubuh', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Mengobati kanker', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Anti radikal bebas', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Pembersih darah', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Mengobati maag', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Meningkatkan nafsu makan', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Mencegah penuaan dini', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Menyehatkan tulang', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Meningkatkan daya ingat', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(20, 'Mengobati lemah jantung', 'https://www.khasiat.co.id/bunga/bunga-cosmos.html'),
(21, 'Mengobati bronkitis', 'https://www.popmama.com/life/home-and-living/faela-shafa/fakta-tentang-tanaman-hias-adam-hawa-ungu/5'),
(21, 'Mencegah tumor', 'https://www.popmama.com/life/home-and-living/faela-shafa/fakta-tentang-tanaman-hias-adam-hawa-ungu/5'),
(21, 'Menghentikan luka pendarahan', 'https://www.popmama.com/life/home-and-living/faela-shafa/fakta-tentang-tanaman-hias-adam-hawa-ungu/5'),
(22, 'Antiinflamasi', 'https://www.klikdokter.com/info-sehat/read/3641183/tak-cuma-jadi-hiasan-inilah-manfaat-daun-ivy-bagi-kesehatan'),
(22, 'Antioksidan', 'https://www.klikdokter.com/info-sehat/read/3641183/tak-cuma-jadi-hiasan-inilah-manfaat-daun-ivy-bagi-kesehatan'),
(22, 'Antimikroba (Antibakteri atau Antivirus)', 'https://www.klikdokter.com/info-sehat/read/3641183/tak-cuma-jadi-hiasan-inilah-manfaat-daun-ivy-bagi-kesehatan'),
(23, 'Mengobati batuk', 'https://www.tagar.id/manfaat-bugenvil-yang-ditanam-gubernur-anies'),
(23, 'Mengatasi masalah pencernaan', 'https://www.tagar.id/manfaat-bugenvil-yang-ditanam-gubernur-anies'),
(23, 'Menjaga keseimbangan kolesterol', 'https://www.tagar.id/manfaat-bugenvil-yang-ditanam-gubernur-anies'),
(24, 'Memberikan ketenangan di pagi hari', 'https://www.tokopedia.com/blog/jenis-tanaman-hias-gantung-hlv/'),
(24, 'Menyejukkan pandangan dan pikiran ketika lelah', 'https://shariagreenland.co.id/bunga-gantung-tahan-panas-matahari/'),
(24, 'Dapat dikonsumsi untuk kesehatan tubuh', 'https://www.noechorecords.com/inilah-5-fakta-unik-bunga-petunia-yang-harus-kamu-tahu/'),
(25, 'Baik untuk pernapasan', 'https://www.popmama.com/life/home-and-living/arrafina-muslimah/jenis-tanaman-hias-yang-menyehatkan/3'),
(25, 'Alternatif penangkal virus corona', 'https://www.casaindonesia.com/article/read/3/2020/2313/8-Tanaman-Ini-Mampu-Cegah-Corona-Masuk-Ke-Dalam-Rumah'),
(25, 'Menyerap zat beracun', 'https://www.casaindonesia.com/article/read/3/2020/2313/8-Tanaman-Ini-Mampu-Cegah-Corona-Masuk-Ke-Dalam-Rumah'),
(26, 'Menimbulkan perasaan tenang', 'https://bloomboxclub.com/blogs/news/a-guide-to-swiss-cheese-plants-care-benefits'),
(26, 'Membantu merasa waspada', 'https://bloomboxclub.com/blogs/news/a-guide-to-swiss-cheese-plants-care-benefits'),
(26, 'Meningkatkan kualitas udara yang dihirup', 'https://bloomboxclub.com/blogs/news/a-guide-to-swiss-cheese-plants-care-benefits'),
(27, 'Menjaga kesehatan pernapasan dengan adanya sirkulasi udara yang baik', 'https://artikel.rumah123.com/6-keuntungan-menanam-tanaman-hias-gantung-di-rumah-bisa-kurangi-stres-58292'),
(27, 'Membantu mencegah penyakit', 'https://artikel.rumah123.com/6-keuntungan-menanam-tanaman-hias-gantung-di-rumah-bisa-kurangi-stres-58292'),
(27, 'Mengatasi efek stress', 'https://artikel.rumah123.com/6-keuntungan-menanam-tanaman-hias-gantung-di-rumah-bisa-kurangi-stres-58292'),
(28, 'Obat masalah jantung', 'https://www.thejoyofplants.co.uk/asparagus-fern'),
(28, 'Obat pusing', 'https://www.thejoyofplants.co.uk/asparagus-fern'),
(28, 'Obat sengatan lebah', 'https://www.thejoyofplants.co.uk/asparagus-fern'),
(29, 'Mempercepat penyembuhan luka', 'https://dewitani.com/cara-menanam-dan-budidaya-pegagan-di-dalam-pot-hias-di-rumah/'),
(29, 'Melancarkan aliran darah', 'https://dewitani.com/cara-menanam-dan-budidaya-pegagan-di-dalam-pot-hias-di-rumah/'),
(29, 'Menyamarkan stretch marks', 'https://dewitani.com/cara-menanam-dan-budidaya-pegagan-di-dalam-pot-hias-di-rumah/'),
(30, 'Mengurangi kecemasan', 'https://www.kompasiana.com/kamaliafitririzki/5de6b42d097f363a4655c292/manfaat-bunga-melati-air-bagi-kesehatan-tubuh'),
(30, 'Mengurangi ketegangan', 'https://www.kompasiana.com/kamaliafitririzki/5de6b42d097f363a4655c292/manfaat-bunga-melati-air-bagi-kesehatan-tubuh'),
(30, 'Merelaksasikan tubuh', 'https://www.kompasiana.com/kamaliafitririzki/5de6b42d097f363a4655c292/manfaat-bunga-melati-air-bagi-kesehatan-tubuh'),
(31, 'Dapat digunakan sebagai tonik panjang umur', 'https://faktualnews.co/2019/01/20/manfaat-bunga-anggrek-bagi-kehidupan-manusia/119229/'),
(31, 'Dapat membantu melembabkan dan menyehatkan kulit dan mencegah kekeringan dan kulit bersisik.', 'https://faktualnews.co/2019/01/20/manfaat-bunga-anggrek-bagi-kehidupan-manusia/119229//'),
(31, 'Dapat mengobati berbagai jenis penyakit seperti tuberkulosis, perut kembung, keringat malam, anoreksia, demam, dan dispepsia secara efektif.', 'https://faktualnews.co/2019/01/20/manfaat-bunga-anggrek-bagi-kehidupan-manusia/119229/'),
(31, 'Dapat membantu meningkatkan fungsi paru-paru, ginjal, dan perut.', 'https://faktualnews.co/2019/01/20/manfaat-bunga-anggrek-bagi-kehidupan-manusia/119229/'),
(31, 'Dapat mengobati gangguan seksual seperti impotensi', 'https://faktualnews.co/2019/01/20/manfaat-bunga-anggrek-bagi-kehidupan-manusia/119229/'),
(32, 'Meningkatkan kualitas udara', 'Ini Manfaat Bunga Anggrek dan Cara Mudah Menanamnya (sehatq.com)'),
(32, 'Meredakan stres', 'https://www.sehatq.com/artikel/manfaat-bunga-anggrek-dan-cara-menanamnya-di-rumah'),
(32, 'Meningkatkan fokus', 'https://www.sehatq.com/artikel/manfaat-bunga-anggrek-dan-cara-menanamnya-di-rumahh'),
(33, 'Mengobati Sakit Gigi dan Telinga', 'https://portaljember.pikiran-rakyat.com/nasional/pr-16740513/manfaat-bunga-anggrek-ini-jarang-diketahui-salah-satunya-sebagai-obat-herbal?page=3'),
(33, 'Bisa Digunakan sebagai Bahan Makanan', 'Manfaat Bunga Anggrek Ini Jarang Diketahui, Salah Satunya sebagai Obat Herbal - Portal Jember - Halaman 3 (pikiran-rakyat.com)'),
(34, 'Sebagai Parfum Alami yang Menyegarkan', 'https://www.orami.co.id/magazine/manfaat-bunga-kamboja-untuk-kecantikan-dan-kesehatan/'),
(34, 'Menjaga Kesehatan Kulit', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Memiliki Manfaat untuk Mengusir Serangga', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Melembapkan Kulit', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Menjaga Kebersihan Kulit Wajah', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Menyehatkan Rambut', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Meningkatkan Kolagen dan Mencegah Penuaan Dini', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(34, 'Mencegah Jerawat di Wajah', '16 Manfaat Bunga Kamboja untuk Kecantikan dan Kesehatan | Orami'),
(35, 'Anti bakteri', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bc'),
(35, 'Anti hipertensi', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bcc'),
(35, 'Ekstrak kasar bunga pansy menunjukkan pengaruh menurunkan tekanan darah', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bc'),
(35, 'Mengobati gangguan syaraf', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bc'),
(35, 'sebagai obat cacing', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bc#:~:text=Bunga%20pansy%20memiliki%20khasiat%20luar%20biasa%20bagi%20kesehatan%20tubuh%20manusia,analgesik%2C%20anti%20inflamasi%2C%20diuretik.'),
(35, 'anti HIV', 'https://steemit.com/colorchallenge/@rifkipijay/bunga-pansy-memiliki-khasiat-luar-biasa-diantaranya-b2767c3f8f2bc#:~:text=Bunga%20pansy%20memiliki%20khasiat%20luar%20biasa%20bagi%20kesehatan%20tubuh%20manusia,analgesik%2C%20anti%20inflamasi%2C%20diuretik.'),
(36, 'menghilangkan racun formaldehida dan xylene yang berasal dari cat dinding serta furnitur.', 'https://kesehatan.kontan.co.id/news/berikut-9-tanaman-penghasil-oksigen-yang-bisa-beri-efek-positif-bagi-kesehatan?page=all#:~:text=Tanaman%20penghasil%20oksigen%20yang%20pertama,%2Dlaba%20(spider%20plant).&text=Selain%20menghasilkan%20oksigen%2C%20manfaat'),
(36, 'Dapat membantu menyembuhkan dan menghilangkan bekas luka di kulit', 'https://www.dictio.id/t/apa-saja-keunggulan-dan-manfaat-dari-tanaman-hias-lili-paris/144836/2'),
(36, 'Memberikan perawatan spesial bagi kulit kering', 'https://www.dictio.id/t/apa-saja-keunggulan-dan-manfaat-dari-tanaman-hias-lili-paris/144836/22'),
(36, 'Ekstrak bunga Lily dapat membantu menjaga kelembaban kulit', 'https://www.dictio.id/t/apa-saja-keunggulan-dan-manfaat-dari-tanaman-hias-lili-paris/144836/2'),
(36, 'Untuk mencegah berkembangnya sel kanker di kulit', 'https://www.dictio.id/t/apa-saja-keunggulan-dan-manfaat-dari-tanaman-hias-lili-paris/144836/2'),
(37, 'Menyegarkan udara di dalam ruangan', 'https://www.khasiat.co.id/bunga/bunga-gelombang-cinta.html'),
(37, 'Sebagai hiasan di dalam rumah', '5 Manfaat dan Khasiat Bunga Gelombang Cinta untuk Kesehatan - Khasiat'),
(37, 'Sebagai penghilang rasa stress', '5 Manfaat dan Khasiat Bunga Gelombang Cinta untuk Kesehatan - Khasiat'),
(38, 'Menyembuhkan bengkak di dalam mulut dan tenggorokan', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(38, 'Menyembuhkan bengkak di dalam mulut dan tenggorokan', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d32144'),
(38, 'Obat penghilang stres', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(38, 'Mengobati gangguan ginjal dan diabetes', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(38, 'Bisa jadi obat relaksasi', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(38, 'Mencegah infeksi akibat kuman dan bakteri', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(38, 'Dapat mengobati penyakit kulit lainnya', 'http://jogjabenih.jogjaprov.go.id/read/624734b61118738b9c0a2f48e851c4deb5cc9a7cffc1ea344de28fe66d693d9d3214'),
(39, 'Mengobati Sakit Perut pada Anak', 'https://artikel.rumah123.com/9-jenis-tanaman-puring-beserta-khasiatnya-bagi-kesehatan-64522'),
(39, 'Mengeluarkan Keringat', 'https://artikel.rumah123.com/9-jenis-tanaman-puring-beserta-khasiatnya-bagi-kesehatan-645222'),
(39, 'Mengobati Cacingan', 'https://artikel.rumah123.com/9-jenis-tanaman-puring-beserta-khasiatnya-bagi-kesehatan-64522'),
(39, 'Mengobati Sifilis', 'https://www.dekoruma.com/artikel/72535/apa-itu-tanaman-puring'),
(39, 'Mengobati diare', 'https://www.dekoruma.com/artikel/72535/apa-itu-tanaman-puringg'),
(39, 'Mengobati kesulitan buang air besar', 'Tanaman Puring, Bukan Sekedar Tanaman Hias Biasa (dekoruma.com)'),
(39, 'Mengobati demam', 'Tanaman Puring, Bukan Sekedar Tanaman Hias Biasa (dekoruma.com)'),
(39, 'Sebagai obat herbal', 'https://www.dekoruma.com/artikel/72535/apa-itu-tanaman-puring'),
(40, 'Mengobati masalah bisul', 'http://www.bumisentosa.or.id/toga_detail.php?id=67/tanduk-rusa'),
(40, 'Mengobati Radang Rahim luar', 'http://www.bumisentosa.or.id/toga_detail.php?id=67/tanduk-rusaa'),
(40, 'Obat untuk Demam Tinggi', 'http://www.bumisentosa.or.id/toga_detail.php?id=67/tanduk-rusa'),
(40, 'Mengatasi kanker ovarium', 'https://manfaat.co.id/manfaat-daun-tanduk-rusa'),
(40, 'Meningkatkan suplai darah', 'https://manfaat.co.id/manfaat-daun-tanduk-rusaa'),
(40, 'Meningkatkan pemulihan otot', 'https://manfaat.co.id/manfaat-daun-tanduk-rusa'),
(41, 'Membantu menurunkan kolesterol', 'https://tanamanmart.com/bibit-apel-bibit-buah-apel/'),
(41, 'Melancarkan buang air besar', 'https://tanamanmart.com/bibit-apel-bibit-buah-apel/'),
(41, 'Mengurangi risiko batu empedu', 'https://tanamanmart.com/bibit-apel-bibit-buah-apel/'),
(62, 'Penetralisir racun', 'https://kesehatan.kontan.co.id/news/manfaat-seledri-untuk-kesehatan-yang-belum-banyak-diketahui'),
(62, 'Menurunkan kadar kolestrol', 'https://kesehatan.kontan.co.id/news/manfaat-seledri-untuk-kesehatan-yang-belum-banyak-diketahui'),
(62, 'Mengeluarkan kelebihan asam urat', 'https://kesehatan.kontan.co.id/news/manfaat-seledri-untuk-kesehatan-yang-belum-banyak-diketahui'),
(63, 'Sumber antioksidan', 'https://health.detik.com/berita-detikhealth/d-5235217/7-manfaat-daun-bawang-untuk-kesehatan-yang-tidak-diketahui'),
(63, 'Sumber vitamin K1 yang baik untuk pembekuan darah dan kesehatan jantung', 'https://health.detik.com/berita-detikhealth/d-5235217/7-manfaat-daun-bawang-untuk-kesehatan-yang-tidak-diketahui'),
(63, 'Sumber mangan yang baik yang dapat membantu mengurangi gejala sindrom pramenstruasi (PMS)', 'https://health.detik.com/berita-detikhealth/d-5235217/7-manfaat-daun-bawang-untuk-kesehatan-yang-tidak-diketahui'),
(66, 'Menjaga fungsi sistem pencernaan', 'https://hellosehat.com/nutrisi/fakta-gizi/manfaat-bawang-bombay/'),
(66, 'Menguatkan kekebalan tubuh', 'https://hellosehat.com/nutrisi/fakta-gizi/manfaat-bawang-bombay/'),
(66, 'Menjaga kesehatan jantung', 'https://hellosehat.com/nutrisi/fakta-gizi/manfaat-bawang-bombay/'),
(67, 'Menurunkan tekanan darah dan kolesterol', 'https://www.klikdokter.com/info-sehat/read/3034932/manfaat-bawang-putih-untuk-kesehatan'),
(67, 'Mencegah flu', 'https://www.klikdokter.com/info-sehat/read/3034932/manfaat-bawang-putih-untuk-kesehatan'),
(67, 'Menurunkan Risiko Osteoartritis', 'https://www.klikdokter.com/info-sehat/read/3034932/manfaat-bawang-putih-untuk-kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `mitra_id` int(11) NOT NULL,
  `mitra_foto` varchar(64) NOT NULL,
  `mitra_nama` varchar(32) NOT NULL,
  `mitra_kota` varchar(32) NOT NULL,
  `mitra_provinsi` varchar(32) NOT NULL,
  `lokasi_url` varchar(256) NOT NULL,
  `mitra_cp` varchar(32) NOT NULL,
  `mitra_notelp` varchar(32) NOT NULL,
  `mitra_ig` varchar(32) NOT NULL,
  `mitra_igurl` varchar(256) NOT NULL,
  `mitra_ecom` varchar(32) NOT NULL,
  `mitra_ecomurl` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`mitra_id`, `mitra_foto`, `mitra_nama`, `mitra_kota`, `mitra_provinsi`, `lokasi_url`, `mitra_cp`, `mitra_notelp`, `mitra_ig`, `mitra_igurl`, `mitra_ecom`, `mitra_ecomurl`) VALUES
(1, 'tamanku', 'Tamanku Surabaya', 'Surabaya', 'Jawa Timur', 'https://www.google.com/maps/place/Tamanku.ID/@-7.2758107,112.7883377,17z/data=!4m12!1m6!3m5!1s0x2dd7fbe4f4632d2b:0x384bf262fc908a4d!2sTamanku.ID!8m2!3d-7.2757593!4d112.7882872!3m4!1s0x2dd7fbe4f4632d2b:0x384bf262fc908a4d!8m2!3d-7.2757593!4d112.7882872?hl=en', 'Peter', '82257199769', 'tamankusurabaya', 'https://www.instagram.com/tamankusurabaya/', 'Tokopedia', 'https://www.tokopedia.com/tamankuid'),
(2, 'plantsraw', 'Plants.raw', 'Sidoarjo', 'Jawa Timur', 'https://goo.gl/maps/cMXQtvHYQz3tLKkh6', 'Reihanditya', '89632037001', 'plants.raw', 'https://www.instagram.com/plants.raw/', '-', '-'),
(3, 'lombokorchid', 'Lombok Orchid', 'Lombok', 'Nusa Tenggara Barat', 'https://www.google.com/maps?q=letak+geo+lombok+orchid&safe=strict&sxsrf=ALeKk00UBqP1M42ssSDCeymihK4O6qQZQQ:1621385410655&iflsig=AINFCbYAAAAAYKRu0r-BDsOdBVNWdZUr8ReyfC-4NsYG&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABOgQIIxAnOggIABCxAxCDAToFCAAQsQM6AgguOgIIADoICC4QsQMQ', 'Indah', '8123850030', 'lombokorchid', 'https://www.instagram.com/lombokorchid/', '-', '-'),
(4, 'mitraflora', 'Mitra Flora', 'Jakarta Timur', 'DKI Jakarta', 'https://www.google.com/maps/place/FLORA+NUSANTARA+JAYA/@-6.2897784,106.8941751,20.97z/data=!4m9!1m2!2m1!1sflora+nusantara+jaya!3m5!1s0x0:0x76830d2e5b39009d!8m2!3d-6.2898203!4d106.8941852!15sChRmbG9yYSBudXNhbnRhcmEgamF5YVosChRmbG9yYSBudXNhbnRhcmEgamF5YSIUZm', 'Bayu Aryanto', '82123296299', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penempatan`
--

CREATE TABLE `penempatan` (
  `penempatan_id` int(11) NOT NULL,
  `penempatan_nama` varchar(64) NOT NULL,
  `penempatan_desc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penempatan`
--

INSERT INTO `penempatan` (`penempatan_id`, `penempatan_nama`, `penempatan_desc`) VALUES
(1, 'Menghadap matahari langsung', 'desc1'),
(2, 'Menghadap matahari sebagian', 'desc2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanaman`
--

CREATE TABLE `tanaman` (
  `tanaman_id` int(11) NOT NULL,
  `tanaman_nama` varchar(256) NOT NULL,
  `indoorflag` tinyint(1) NOT NULL,
  `tinggi_maksimal` varchar(32) NOT NULL,
  `jenis_pupuk_1` varchar(64) NOT NULL,
  `frek_pemupukan_1` varchar(64) NOT NULL,
  `jenis_pupuk_2` varchar(64) NOT NULL,
  `frek_pemupukan_2` varchar(64) NOT NULL,
  `pemupukan_src_1` varchar(256) NOT NULL,
  `pemupukan_src_2` varchar(256) NOT NULL,
  `kesimpulan_pemupukan` varchar(256) NOT NULL,
  `frek_penyiraman_cerah` varchar(64) NOT NULL,
  `frek_penyiraman_hujan` varchar(64) NOT NULL,
  `penyiraman_src` varchar(256) NOT NULL,
  `kesimpulan_penyiraman` varchar(256) NOT NULL,
  `teknik_menanam` varchar(64) NOT NULL,
  `penempatan_id` int(11) NOT NULL,
  `daerah_id` int(11) NOT NULL,
  `bulan_1` tinyint(1) NOT NULL,
  `bulan_2` tinyint(1) NOT NULL,
  `bulan_3` tinyint(1) NOT NULL,
  `bulan_4` tinyint(1) NOT NULL,
  `bulan_5` tinyint(1) NOT NULL,
  `bulan_6` tinyint(1) NOT NULL,
  `bulan_7` tinyint(1) NOT NULL,
  `bulan_8` tinyint(1) NOT NULL,
  `bulan_9` tinyint(1) NOT NULL,
  `bulan_10` tinyint(1) NOT NULL,
  `bulan_11` tinyint(1) NOT NULL,
  `bulan_12` tinyint(1) NOT NULL,
  `bulan_src` varchar(256) NOT NULL,
  `kategori_growth_id` int(11) NOT NULL,
  `kategori_tanaman_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanaman`
--

INSERT INTO `tanaman` (`tanaman_id`, `tanaman_nama`, `indoorflag`, `tinggi_maksimal`, `jenis_pupuk_1`, `frek_pemupukan_1`, `jenis_pupuk_2`, `frek_pemupukan_2`, `pemupukan_src_1`, `pemupukan_src_2`, `kesimpulan_pemupukan`, `frek_penyiraman_cerah`, `frek_penyiraman_hujan`, `penyiraman_src`, `kesimpulan_penyiraman`, `teknik_menanam`, `penempatan_id`, `daerah_id`, `bulan_1`, `bulan_2`, `bulan_3`, `bulan_4`, `bulan_5`, `bulan_6`, `bulan_7`, `bulan_8`, `bulan_9`, `bulan_10`, `bulan_11`, `bulan_12`, `bulan_src`, `kategori_growth_id`, `kategori_tanaman_id`) VALUES
(1, 'Suplir', 1, '0.15-0.80 meter', 'Pupuk NPK', '2 kali/bulan, 6 kali/bulan', 'Pupuk Kompos', '2 kali/bulan, 6 kali/bulan', 'https://anekabudidaya.com/tips-erawat-tanaman-hias-suplir/', 'https://anekabudidaya.com/tips-erawat-tanaman-hias-suplir/', 'Ada dua pupuk yang dapat digunakan yaitu pupuk NPK dan pupuk kompos namun memiliki waktu yang sama yaitu 2 kali/bulan atau 6 kali/bulan.', '7 kali/minggu', '', 'https://www.99.co/blog/indonesia/cara-merawat-tanaman-suplir/', 'Apabila tanaman telah masuk kedalam media tanam, tempatkanlah suplir diarea teduh dan lakukanlah untuk melakukan penyiraman dengan berskala disetiap harinya.', 'Tanah', 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'https://regional.kompas.com/read/2008/09/22/08150057/media.tanam.yang.baik.untuk.suplir', 14, 1),
(2, 'Mammillaria Fraileana', 1, '0.15 meter', 'Pupuk Kaktus', '1 kali/bulan', '', '', 'https://id.garden-landscape.com/mammillaria-species-varieties-of-cacti-and-care-tips-718', '', 'Untuk tanaman kali ini bisa menggunakan pupuk kaktus dengan wktu 1 kali/bulan', '2 kali/minggu', '', 'https://bibitbunga.com/product/tanaman-kaktus-mammillaria-duri-coklat/', 'Penyiraman setidaknya dilakukan 2 kali seminggu atau pada saat tanaman benar-benar kering', 'Tanah', 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://fatasama.com/cara-menanam-kaktus/', 1, 1),
(3, 'Lidah Buaya', 1, '0.25-0.30 meter', 'Pupuk NPK', '3 kali/bulan', 'Pupuk Urea', '1 kali', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html', 'https://pertanian.pontianakkota.go.id/produk-unggulan-detil/4-lidah-buaya.html', 'Pupuk bisa digunakan bercampuran namun untuk Pupuk NPK dapat gunakan 3 kali/bulan sedangkan untuk pupuk urea hanya sekali saja penanaman.', '3 kali/minggu', '', 'https://www.brilio.net/wow/10-cara-merawat-lidah-buaya-dalam-pot-agar-tidak-mudah-busuk-201116y.html#:~:text=6.%20Siram%20tanaman%20lidah%20buaya.&text=Sirami%20setiap%203%20minggu%20sekali,akar%20tanaman%20bisa%20mulai%20membusuk.', 'Penyiraman dilakukan 3 kali/minggu agar tanaman tidak terlalu bahkan sangat kering', 'Hidroponik', 1, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'https://www.haibunda.com/moms-life/20200604121052-76-144413/tips-menanam-lidah-buaya-dalam-polibag-6-bulan-bisa-panen-lho-bunda', 6, 1),
(4, 'Donkey Tail', 2, '0.2-0.6 meter', 'Pupuk NPK', '1 kali/bulan', '', '', 'https://bibitbunga.com/product/donkey-tail/', '', 'Dijelaskan bahwa tips pemupukan yang baik pada tanaman ini adalah 30 hari sekali dengan menggunakan Pupuk NPK.', '2 kali/minggu', '', 'http://gubugbunga.com/donkey-tail/#tab1', 'Penyiraman dilakukan beberapa hari sekali bisa 2 kali/minggu namun siramlah apabila media tanaman sudah kering.', 'Tanah', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://www.planterandforester.com/2020/05/tanaman-hias-kaktus-ekor-keledai-burros.html', 6, 1),
(5, 'Venus Flytrap', 2, '0.2-0.3 meter', 'Tidak ada pupuk', 'Tidak diberi pupuk', '', '', 'https://id.wikihow.com/Menanam-Tumbuhan-Insektivora-Venus', '', 'Tanaman ini tidak memerlukan pupuk karena tanaman ini berjenis insecta diberikan lalat maka tanaman ini akan dapat tumbuh dengan baik', 'Letakan piring berisi air di atas pot', 'Tidak perlu penyiraman', 'https://tanamankarnivora.wordpress.com/mengenal-tanaman-venus-flytrap/', 'Selama musim hujuan tidak perlu melakukan penyiraman sedangkat pada musim cerah penyiraman cukup mudah yaitu letakan piring berisi air diatas pot.', 'Tanah', 1, 2, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://www.kompas.com/homey/read/2021/04/22/090000976/mengenal-venus-flytrap-tanaman-karnivora-pemakan-serangga-?page=all', 8, 1),
(6, 'Bunga Matahari', 0, '3-5 meter', 'Pupuk NPK', 'Secukupnya', '', '', 'https://kambingjoynim.com/cara-menanam-bunga-matahari/', '', 'Tanaman ini sebenarnya hanya membutuhkan nutrisi dari tanah apabila nutrisi dari tanah sudah baik maka sudah cukup namun apabila tanah kurang baik maka perlu ditambahkan pupuk NPK secukupnya.', '2 kali/hari', '', 'https://bibitbunga.com/cara-menanam-bunga-matahari-dari-biji/', 'Penyiraman dilakukan 2 kali/haru dikarenakan pada saat kondisi cerah atau kering tanaman ini membutuhkan asupan air yang banyak agar pertumbuhan semakin cepat.', 'Hidroponik', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://dosenbiologi.com/tumbuhan/proses-pertumbuhan-tanaman-bunga-matahari#:~:text=Proses%20Pertumbuhan%20Tanaman%20Bunga%20Matahari%20Paling%20Lengkap,-By%20suharyanto&text=Bunga%20Matahari%20merupakan%20salah%20satu%20tanaman%20hias%20yang%20cukup%20ban', 13, 1),
(7, 'Bunga Lavender', 0, '0.3-0.9 meter', 'Pupuk Kompos', '1 kali/tahun', '', '', 'https://id.wikihow.com/Menanam-Lavender', '', 'Lavender merupakan tanaman yang memerlukan sedikit perawatan dan hanya perlu dipupuk setahun sekali menggunakan pupuk kompos.', 'Secukupnya', '', 'https://id.wikihow.com/Menanam-Lavender', 'Lavender tidak terlalu sering untuk disiram, disiram jika tanaman sudah memasuki fase kering.', 'Hidroponik', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://peluangusaha.kontan.co.id/news/lavender-suka-cuaca-sejuk-doyan-siraman-air-2', 13, 1),
(8, 'Bunga Mawar', 1, '0.2-0.5 meter', 'Pupuk NPK', '2 kali/minggu', '', '', 'https://idea.grid.id/read/09938016/yuk-lakukan-6-hal-ini-agar-bunga-mawar-rajin-berbunga-di-halaman?page=all#:~:text=Sama%20seperti%20tanaman%20berbunga%20lainnya,menaburkannya%20di%20atas%20media%20tanam.', '', 'Bunga mawar umumnya diberikan pupuk NPK dengan waktu 2 kali/ minggu dengan cara menaburkannya ke media tanam.', '2 kali/hari', '1 kali/ hari', 'https://workamerica.co/bunga-mawar/#:~:text=Mawar%20Musk,-monticelloshop.org&text=Mawar%20bernama%20latin%20Rosa%20moschata,musim%20semi%20hingga%20musim%20gugur.&text=Ciri%20khas%20mawar%20musk%20adalah,biji%20di%20bawah%20daging%20buah', 'Pada saat cuaca panas bunga mawar dapat disiram dengan waktu 2 kali / hari pada saat pagi dan sore hari sedangkan, pada saat cuaca hujan cukup 1 kali/hari pada pagi hari.', 'Hidroponik', 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://www.99.co/blog/indonesia/cara-menanam-bunga-mawar/', 2, 1),
(9, 'Agave Kishokan', 2, '0.1-0.2 meter', 'Pupuk Sekam', '1-2 kali/bulan', '', '', 'https://m.bukalapak.com/p/hobi-koleksi/berkebun/bibit-tanaman/pdfl31-jual-agave-potatorum-kishokan-varigata', '', 'untuk tanaman kaktus kali ini pemupukan bisa dilakukan 1-2 bulan sekali dengan pupuk sekam.', '2 kali/hari', '', 'https://m.bukalapak.com/p/hobi-koleksi/berkebun/bibit-tanaman/pdfl31-jual-agave-potatorum-kishokan-varigata', 'Penyiraman tanaman ini bisa dilakukan 2 kali/hari degan media pasir dan sedikit sekam bakar (jangan tergenang air)', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://thehijau.com/agave-elok-incaran/', 1, 1),
(10, 'Astrophytum Asterias', 2, '0.5 meter', 'Pupuk NPK', '1 kali/buan', '', '', 'https://shopee.co.id/Tanaman-Kaktus-Astrophytum-Asterias-03-i.58845928.1268355295', '', 'Pemupukan dilakukan dengan waktu 1 bulan sekali pupuk yang digunakan adalah pupuk NPK', '1 kali/hari', '', 'https://shopee.co.id/Tanaman-Kaktus-Astrophytum-Asterias-03-i.58845928.1268355295', 'Penyiraman dilakukan dalam 1 kali sehari', 'Tanah', 2, 2, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'https://id.les-jardins-de-sanne.com/perawatan-kaktus-astrophytum-tips-menumbuhkan/', 1, 1),
(11, 'Giok', 1, '0.9 meter', 'Pupuk NPK', '2 kali/tahun', '', '', 'https://id.flowergardennews.com/how-to-propagate-jade-plant-1332', '', 'Pupuk dapat dicampur dengan air, untuk mencegah kemungkinan pemupukan berlebih, yang merugikan tanaman.', '1 kali/3 minggu', '', 'https://ms.opstinavrnjackabanja.org/2794-jade-plant-watering-how-often-do-you-water-a-jade-pl.html', 'Dalam keadaan tumbuh biasa, menyiram tanaman jade dalam periuk tanah liat setiap 10 hingga 14 hari. Tanaman giok dalam periuk plastik biasanya memerlukan penyiraman setiap 2 hingga 3 minggu.', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://id.flowergardennews.com/how-to-care-for-jade-plant-822#:~:text=Musim%20tanam%20untuk%20tanaman%20batu,jangan%20biarkan%20menjadi%20genangan%20air.', 6, 1),
(12, 'Zebra', 1, '0.12 meter', 'Pupuk NPK', '1 kali/tahun', 'Pupuk Kompos', '', 'https://www.99.co/blog/indonesia/cara-merawat-sukulen/', 'https://beritabaik.id/read?editorialSlug=gaya-hidup&slug=1563229127861-5-cara-merawat-kaktus-hias-agar-awet-dalam-ruangan', 'Pupuk yang biasa digunakan adalah NPK yang kaya akan unsur hara nitrogen, fosfor, dan kalium. Cukup 2-3 butir saja', '1 kali/minggu', '', 'https://harpersbazaar.co.id/articles/read/7/2018/5427/cara-merawat-sukulen-dan-kaktus-untuk-pemula', 'Perlu diperhatikan kondisi tanah sebelum menyiram dan hanya siram sukulen Zebra saat media sudah sepenuhnya kering.', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://howtosanta.com/indonesia/cara-merawat-sukulen-zebra/#:~:text=Carilah%20tanaman%20bayi%20zebra%20baru,musim%20semi%20hingga%20musim%20panas.', 6, 1),
(13, 'Ruby Ball Cactus', 1, '0.5 meter', 'Pupuk NPK', '1 kali/tahun', 'Pupuk Kompos', '', 'https://www.99.co/blog/indonesia/cara-merawat-sukulen/', 'https://beritabaik.id/read?editorialSlug=gaya-hidup&slug=1563229127861-5-cara-merawat-kaktus-hias-agar-awet-dalam-ruangan', 'Pupuk yang biasa digunakan adalah NPK yang kaya akan unsur hara nitrogen, fosfor, dan kalium. Cukup 2-3 butir saja', '1 kali/minggu', '', 'https://ms.caminoescolar.org/grow-grafted-ruby-ball-cactus-1902604-6073', 'Selama bulan-bulan musim panas,tanaman memerlukan penyiraman yang rutin.Penyiraman pada bulan-bulan musim sejuk tidak perlu, tetapi sesekali boleh', 'Tanah', 2, 3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'https://id.safenetvoice.org/ruby-ball-cactus-plant-profile#:~:text=Anda%20tidak%20perlu%20memupuk%20tanaman,tanamnya%20(April%20hingga%20September).', 6, 1),
(14, 'Lidah Mertua', 2, '1 meter', 'Pupuk NPK', '1 kali/3 bulan', 'Pupuk Kompos', '1 kali/3 bulan', 'https://www.brilio.net/wow/cara-merawat-dan-menanam-lidah-mertua-agar-cepat-bertunas-dan-subur-210317c.html', 'https://www.brilio.net/wow/cara-merawat-dan-menanam-lidah-mertua-agar-cepat-bertunas-dan-subur-210317c.html', 'Memakai pupuk yang tidak akan gampang larut seperti NPK sekali tiga bulan. Larutkan butiran-butiran pupuk NPK dengan air sesuai dosis anjuran sebelum diberikan ke tanaman. Selain pupuk ini, kamu juga dapat memakai pupuk daun ataupun pupuk kompos.', '2 kali/ minggu', '', 'https://www.99.co/blog/indonesia/cara-merawat-lidah-mertua-tepat/', 'Penyiraman yang terlalu sering justeru akan membuatnya terkena penyakit akar busuk. Selain itu, jangan biarkan air menumpuk di tengah daun karena bisa menyebabkannya lembek, layu, dan bahkan membusuk.', 'Tanah', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 'https://www.brilio.net/wow/cara-menanam-lidah-mertua-untuk-pemula-mudah-dilakukan-210308j.html', 6, 1),
(15, 'Bonsai Juniper', 2, '0.31-1 meter', 'Pupuk Kandang', '1 kali/bulan', 'Pupuk Daun', '3 kali/bulan', 'https://www.centralbonsai.com/2017/04/jenis-pupuk-untuk-tanaman-hias-bonsai.html', 'https://www.centralbonsai.com/2017/04/jenis-pupuk-untuk-tanaman-hias-bonsai.html', 'Pemupukan dilakukan setiap satu bulan sekali. dapat menggunakan pupuk sesuai dengan kebutuhan pohon bonsainya. Selain pupuk untuk tanamannya, tanaman juga memberikan pupuk untuk daunnya sebanyak tiga kali perbulan.', '2 kali/2 minggu', '', 'https://bennisobekti.com/1898/cara-merawat-pohon-bonsai-juniper-yang-sakit-sekarat-super-mudah/', 'Penyiraman pohon bonsai jika tanah menjadi sedikit kering. Gunakan jari untuk memeriksa tanah. Jika tanah kering sekitar 0,4 cm. maka itu adalah tanda bahwa pohon bonsai haus.', 'Tanah', 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://bennisobekti.com/1898/cara-merawat-pohon-bonsai-juniper-yang-sakit-sekarat-super-mudah/', 7, 1),
(16, 'Bonsai Bougenville', 2, '0.31-0.45 meter', 'Pupuk NPK', '1 kali/3 bulan', '', '', 'https://pupuklahan.blogspot.com/2020/05/pupuk-untuk-bunga-bougenville.html#:~:text=Jika%20bougenville%20tumbuh%20dalam%20pot,diulangi%20setiap%203%20bulan%20sekali.&text=Waktu%20pemupukan%20sebaiknya%20dilakukan%20pada%20waktu%20sore%20hari.', '', 'Cukup 3 bulan sekali dalam pemberian pupuk', '1 kali/hari', '', 'https://generasihijau.com/bonsai-bougenville/', 'Menyiram tanaman namun tidak boleh terlalu sering karena akan menyebabkan lembab yang akan membuat akar menjadi busuk. Terlebih lagi tanaman bougenville akan tumbuh sehat dan bagus, apabila di tempat tanah yang kering sehingga tidak memerlukan banyak air', 'Tanah', 1, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 'https://satujam.com/menanam-bougenville/', 7, 1),
(17, 'Bonsai Beringin', 2, '0.31-1 meter', 'Pupuk Kandang', '2 kali/bulan', 'Pupuk Organik', '2 kali/bulan', 'https://www.casaindonesia.com/article/read/3/2019/975/Cara-Menanam-dan-Merawat-Bonsai-Beringin-yang-Baik', '', 'Saat bonsai masih belia, pupuk harus diberikan lebih acapkali. Semakin tua usia bonsai, jumlah pupuk dapat terus dikurangi. buat tanaman bonsai yang masih belia, pemberian pupuk mampu dilakukan 2 kali sebulan.', '1 kali/hari', '', 'https://artikel.rumah123.com/cara-tips-sukses-membuat-bonsai-beringin-di-rumah-untuk-pemula-59796', 'Penuhi kebutuhan air tanaman dengan melakukan penyiraman satu kali sehari atau menyesuaikan musim dan cuaca.', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'https://bibitbunga.com/cara-menanam-bonsai-serut/', 7, 1),
(18, 'Variegated Monstera', 1, '0.2-0.4 meter', 'Pupuk B1', '1 kali/minggu', '', '', 'https://www.kompas.com/homey/read/2020/11/14/113300176/simak-tips-merawat-monstera-variegata?page=all', '', 'Pupuk B1 berperan penting dalam proses pertumbuhan variegated monstera yang memberikan energi untuk pembelahan sel, serta pembentukan jaringan baru', '1 kali/3 hari', '', 'https://www.kompas.com/homey/read/2020/11/14/113300176/simak-tips-merawat-monstera-variegata?page=all', 'Penyiraman dilakukan 3 hari sekali agar tanaman mendapatkan nutrisi cukup', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'https://www.pesona.co.id/read/sentuhan-monstera-di-rumah-anda', 8, 1),
(19, 'Pilea Peperomioides', 2, '0.3 meter', 'Pupuk Kandang', '1 kali/bulan', '', '', 'https://www.cnnindonesia.com/gaya-hidup/20200722094401-277-527488/jenis-jenis-tanaman-indoor-pilea-untuk-mempercantik-ruangan', '', 'Pemupukan dilakukan 1 kali perbulan untuk merawat tanaman Pilea', '1 kali/3 hari', '', 'https://www.cnnindonesia.com/gaya-hidup/20200722094401-277-527488/jenis-jenis-tanaman-indoor-pilea-untuk-mempercantik-ruangan', 'Pilea tidak membutuhkan banyak air untuk bisa terus hidup, namun di sisi lain juga butuh pencahayaan atau sinar matahari langsung yang intens.', 'Tanah', 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 'https://tanaman.com/pilea-peperomioides/#:~:text=Memiliki%20kebiasaan%20tumbuh%20yang%20relatif,pada%20tangkai%20daun%20yang%20panjang.', 8, 1),
(20, 'Cosmos Cokelat', 2, '0.6-0.8 meter', 'Pupuk NPK', '1 kali/bulan', '', '', 'https://ilmubudidaya.com/cara-menanam-bunga-cosmos', '', 'Berikan pupuk NPK secara proposional, Cukup berikan saat awal masa tanam hingga tanaman berumur 6 minggu setelah tanam', '1 kali/minggu', '', 'https://id.haenselblatt.com/caring-chocolate-cosmos-plants', 'Terlalu banyak air akan menyebabkan akar membusuk, tetapi penyiraman dalam seminggu sekali akan membuat mereka sehat dan bahagia', 'Tanah', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 'https://id.haenselblatt.com/caring-chocolate-cosmos-plants', 8, 1),
(21, 'Tradescantia Pallida', 0, '0.3-0.5 meter', 'Pupuk NPK', '1 kali/bulan', '', '', 'https://shopee.co.id/Tanaman-Tradescantia-pallida-bunga-kembang-hias-murah-i.159017027.7878262557', '', 'Pemupukan di bulan pertama yaitu 1 bulan sekali menggunakan pupuk penumbuh akar NPK. Pupuk yang digunakan sebanyak 10 butir dan ketika pemberian pupuk harus dijauhkan dari tangkai.', '1 kali/hari', '', 'https://shopee.co.id/TANAMAN-HIAS-tradescantia-pallida-Tanaman-tahan-panas-dan-bisa-di-indoor-i.205788866.7415083498', 'Penyiraman dilakukan sehari sekali dengan jumlah 2 gelas air minum', 'Tanah', 1, 3, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 'https://hort.extension.wisc.edu/articles/purple-heart-tradescantia-pallida/', 17, 1),
(22, 'English Ivy', 0, '0.2-0.3 meter', 'Pupuk Kompos', '1 kali/bulan', '', '', 'https://ilmubudidaya.com/cara-merawat-tanaman-english-ivy', '', 'Secara rutin setiap bulan memberikan kotoran hewan atau pupuk kompos.', '1 kali/hari', '', 'https://plantstory.com/glossary/english-ivy-hedera-helix', 'Tumbuhan ini sangat menyukai kelembaban, sehingga perlu dilakukan penyiraman harian. Jangan memberi air terlalu banyak karena akan berpotensi menumbuhkan jamur.', 'Tanah', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://www.thespruce.com/english-ivy-plants-2132215', 19, 1),
(23, 'Bougenville', 0, '1 meter', 'Pupuk Organik', '1 kali/6 bulan', '', '', 'https://ilmubudidaya.com/cara-merawat-bunga-bougenville', '', 'Jika tumbuh dalam pot, maka aplikasikan 1-2 kg pupuk setiap 6 bulan sekali. Namun jika tumbuh di tanah langsung bisa diberi pupuk setahun sekali dengan dosis 5-10 kg per tanaman.', '2 kali/hari', 'Tidak perlu penyiraman', 'https://ilmubudidaya.com/cara-merawat-bunga-bougenville', 'Lakukan penyiraman sehari 2 kali, pagi dan sore dengan jumlah secukupnya. Ketika musim hujan, tidak perlu melakukan penyiraman karena dikhawatirkan kelebihan pasokan air.', 'Tanah', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://id.wikihow.com/Menanam-Bugenvil', 19, 1),
(24, 'Petunia', 0, '0.4 meter', 'Pupuk Konsentrat', '1 kali/bulan', '', '', 'https://bibitbunga.com/cara-merawat-bunga-petunia-agar-rajin-berbunga/', '', 'Pupuk konsentrat dapat dilarutkan dengan air. Intensitas pemupukan dilakukan sekali dalam sebulan. Jika menanam dengan bunga majemuk (banyak), maka pemupukan dilakukan selama 2 minggu sekali. Pupuk diencerkan dengan perbandingan pupuk : air yaitu 1 : 10.', '1 kali/hari', '2 kali/minggu', 'https://bibitbunga.com/cara-merawat-bunga-petunia-agar-rajin-berbunga/', 'Jika cuaca cerah dan udara sedang sejuk, maka penyiraman dilakukan 2 (dua) kali dalam seminggu, dengan selang waktu 3 -4 hari. Namun, jika cuaca saat penyiraman sedang panas, penyiraman dapat dilakukan secara rutin setiap hari.', 'Tanah', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://www.gardendesign.com/annuals/petunias.html', 17, 1),
(25, 'Spider Plant', 0, '0.2-0.4 meter', 'Pupuk Cair', '1-2 kali/bulan', '', '', 'https://id.wikihow.com/Merawat-Tanaman-Lili-Paris', '', 'Beri pupuk 1-2 kali dalam sebulan selama musim kemarau. Hindari memberikan pupuk selama musim penghujan atau jika tanaman sudah tumbuh keluar pot.', '1 kali/minggu', '', 'https://id.wikihow.com/Merawat-Tanaman-Lili-Paris', 'Menyiram secukupnya atau sekali seminggu selama setahun pertama mampu membuat tanah tetap lembap, tetapi tidak terlalu basah. Setelah tahun pertama tanaman bisa disiram sesekali saja.', 'Tanah', 2, 3, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://www.lovethegarden.com/uk-en/article/spider-plant-chlorophytum-comosum', 17, 1),
(26, 'Monstera Deliciosa', 1, '3 meter', 'Pupuk Butir', '1 kali/2 bulan', '', '', 'https://lifestyle.kompas.com/read/2020/12/18/200746420/segala-hal-tentang-monstera-deliciosa-yang-perlu-kamu-tahu?page=all', '', 'Beri 100 gram pupuk butir di atas tanaman setiap delapan minggu sekali selama tahun pertama. Kemudian di tahun berikutnya tambahkan menjadi 450 gram. Kurangi frekuensi pemupukan menjadi 2-3 kali selama musim tanam', '1 kali/minggu', '', 'https://www.brilio.net/wow/7-cara-merawat-tanaman-monstera-agar-subur-dan-tetap-segar-201016y.html', 'Beri air secukupnya pada tanaman monstera secara merata, sebanyak seminggu sekali atau tunggu hingga tanah cukup kering sebelum disiram kembali', 'Tanah', 2, 3, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 'https://www.pennington.com/all-products/fertilizer/resources/how-to-grow-and-care-for-monstera-deliciosa', 19, 1),
(27, 'Silver Hair', 0, '1 meter', 'Pupuk NPK', '1 kali/2 minggu', '', '', 'https://www.ibadgarden.com/product/silver-hair-dichondra-ampel-panjang-30cm/', '', 'Pemupukan diawal penanaman yaitu 1 bulan sekali. Sedangkan untuk pemupukan lanjutan yaitu 2 minggu sekali.', '1 kali/2 hari', '', 'https://www.ibadgarden.com/product/silver-hair-dichondra-ampel-panjang-30cm/', 'Frekuensi penyiraman ketika awal penanaman yaitu sehari 2 kali, sedangkan untuk penyiraman lanjutan yaitu 2 hari sekali.', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://www.gardeningknowhow.com/ornamental/groundcover/dichondra/grow-silver-falls-dichondra-indoors.htm', 17, 1),
(28, 'Asparagus Fern', 2, '3-5 meter', 'Pupuk NPK', '1 kali/bulan', '', '', 'https://bibitbunga.com/product/tanaman-asparagus-fern/', '', 'Pemupukan dilakukan kira-kira 30 hari sekali dengan menggunakan pupuk NPK Daun', '1 kali/hari', '', 'https://bibitbunga.com/product/tanaman-asparagus-fern/', 'Intensitas penyiraman cukup satu kali dalam sehari', 'Tanah', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://id.safenetvoice.org/asparagus-fern-plant-profile', 19, 1),
(29, 'Pegagan Air', 0, '0.1-0.5 meter', 'Pupuk Organik', '2-3 kali/6 bulan', '', '', 'https://www.kampustani.com/budidaya-tanaman-pegagan/', '', 'Pemupukan dilakukan setiap 2-3 kali tiap sekali masa tanam, atau selama kurang lebih 6 bulan. Pemupukan dilakukan pada awal penanaman, pertengahan pertumbuhan vegetatif, dan ketika siap panen.', '2 kali/hari', '1 kali/hari', 'https://nonatani.id/cara-menanam-pegagan/', 'Saat tanaman masih kecil lakukan penyiraman menggunakan spray sehari 2 kali. Tanaman yang sudah besar relatif tidak memerlukan penyiraman. Jika menggunakan media tanam kering siram satu kali sehari.', 'Hidroponik', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://nonatani.id/cara-menanam-pegagan/', 18, 1),
(30, 'Melati Air', 0, '1 meter', 'Pupuk NPK', '1 kali/bulan', '', '', 'https://bibitbunga.com/product/tanaman-melati-air-mexican-sword-plant/', '', 'Pemupukan dilakukan kira-kira 30 hari sekali dengan menggunakan pupuk NPK Bunga', 'Tidak perlu penyiraman', '', 'https://www.faunadanflora.com/cara-menanam-dan-merawat-bunga-melati-air/#:~:text=Melati%20air%20tidak%20memerlukan%20penyiraman,pupuk%20NPK%20setiap%20sebulan%20sekali.', 'Tidak memerlukan penyiraman karena seluruh kebutuhan air telah tercukupi dengan baik.', 'Akuaponik', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://bibitbunga.com/product/tanaman-melati-air-mexican-sword-plant/', 18, 1),
(31, 'Anggrek Bulan', 2, '0.1 meter', 'Pupuk Organik cair', '10 hari/sekali', 'GDM Black Bos', '1 kali/bulan', 'Jenis Dan Dosis Pemupukan Anggrek Paling Efektif, Dijamin Berbunga Sepanjang Hari (gdm.id)', 'https://gdm.id/pupuk-anggrek/', 'Larutkan 50 ml Pupuk Organik Cair GDM Spesialis Tanaman Hias kedalam kedalam 1 liter air hingga tercampur merata.Semprotkan larutan yang sudah dibuat ke seluruh tanaman. Larutkan 50 ml GDM Black BOS kedalam 1 liter air.Semprotkan larutan yang sudah dibuat ', '2kali/hari', 'tidak disiram', 'https://wawaorchid.com/2009/11/02/4-dasar-perawatan-tanaman-anggrek-untuk-tumbuh-baik-dan-rajin-berbunga/', 'Penyiraman air ini dilakukan agar akar anggrek tetap lembab, maka dari itu jumlah dan frekuensinya perlu diperhatikan. Jika kekurangan dan kelebihan air siraman maka akan mengganggu pertumbuhan tanaman, jika kelebihan air maka akar tanaman akan busuk, pern', 'hidroponik', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '3 Cara untuk Membuat Anggrek Berbunga - wikiHow', 13, 1),
(32, 'Anggrek Miltonia', 2, '0.4 meter', 'Pupuk NPK', '2-3 minggu/sekali', '', '', 'https://id.blabto.com/6299-miltonia-orchid.html', '', 'Miltonia, seperti anggrek lainnya, membutuhkan makanan dan pupuk. Akan lebih baik untuk membeli campuran pupuk anggrek di toko khusus. Dressing atas harus teratur dan seimbang, setiap 2-3 minggu sekali akan cukup jika merupakan periode pertumbuhan aktif ta', '2kali/hari', '', 'Miltonia Orchid: perawatan di rumah, penanaman - Informasi umum - 2021 (blabto.com)', 'Penyiraman direkomendasikan oleh metode \"mandi air panas\". Untuk melakukan ini, gunakan air dengan suhu 45 derajat. Mandi seperti itu menyerupai tanaman untuk hujan di tempat asalnya. Setelah irigasi, tunggu sampai semua cairan terkuras, dan kemudian bersi', 'hidroponik', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '3 Cara untuk Membuat Anggrek Berbunga - wikiHow', 13, 1),
(33, 'Anggrek Hitam', 2, '0.4-0.5 meter', 'Pupuk N (Cair)', '2 kali/minggu', '', '', 'http://kalteng.litbang.pertanian.go.id/ind/index.php/publikasi-mainmenu-47-47/teknologi/197-anggrek-hitam', '', 'Bila menggunakan pupuk berbentuk cair, semprotkan ke permukaan bawah daun, batang lalu ke akar. Jenis pupuk untuk anggrek hitam muda, pilih yang banyak mengandung unsur N untuk merangsang pertumbuhan vegetatif.', '2kali/hari', '', 'Tips Budidaya Anggrek Hitam (Coelogyne pandurata Lindl) (pertanian.go.id)', 'Frekwensi penyiraman tergantung umur tanaman dan kelembaban media tanam. Anggrek muda disiram 2x perhari yaitu yaitu pagi hari ( 06.00 – 08.00 ) dan sore hari ( 16.00 – 18.00 ), sedangkan anggrek dewasa cukup disiram sekali sehari pada pagi hari.', 'hidroponik', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '3 Cara untuk Membuat Anggrek Berbunga - wikiHow', 13, 1),
(34, 'Bunga Kamboja', 2, '6 meter', 'Pupuk NPK', '1 sekali/minggu', '', '', '7 Cara Merawat Bunga Adenium Yang Baik Dan Benar. Supaya Tumbuh Subur & Cepat Berbunga - Blogdaffa.com', '', 'Berikan campuran pupuk NPK yakni pupuk yang mengandung nitrogen, fosfor dan kalium dengan perbandingan 20 : 20 : 20.Kandungan dalam pupuk tersebut mampu mempercepat proses pertumbuhan tanaman mulai dari akar, batang, dan bunga.', '2kali/hari', '', 'https://www.blogdaffa.com/2020/12/cara-merawat-bunga-adenium.html', 'Bunga adenium sebaiknya disiram ketika media tanam atau tanah sudah kering.Ketika musim kemarau tiba, kamu dapat menyiram bunga adenium dua kali dalam sehari yaitu pagi dan sore hari.Untuk mengatasi media tanam yang cepat kering, maka letakkan tanaman bung', 'Tanah', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Bunga Kamboja Mekar Tanpa Mengenal Musim - Berita Daerah', 13, 1),
(35, 'Bunga Pansy', 1, '0.22 meter', 'Pupuk Larut', '2 minggu/sekali', '', '', 'https://bibitbunga.com/cara-menanam-pansy-dari-biji/', '', 'Anda dapat menggunakan pupuk umum serbaguna di sekitar pansy Anda untuk membantu mereka tumbuh. Berhati-hatilah menggunakan pupuk nitrogen-berat, karena hal ini dapat menghasilkan lebih banyak dedaunan daripada bunga.', '2 kali/hari', '', '', 'Bunga pansy akan gagal berbunga apabila kurang mendapat penyinaran. Jadi Siram tanaman pansy Anda secara teratur pada pagi hari.', 'Tanah', 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Cara Menanam dan Merawat Bunga Pansy - Ratu Florist Jakarta', 13, 1),
(36, 'Lili Paris', 2, '0.1-0.15 meter', 'Pupuk NPK', '3 bulan/sekali', '', '', 'https://www.99.co/blog/indonesia/cara-menanam-lili-paris/', '', 'Agar tanaman dapat tumbuh lebih lebat, kamu dapat memberikan pupuk NPK sebanyak 4 gram atau 1 sendok teh setiap 3 bulan sekali.', '2 hari/sekali', '1 minggu/sekali', 'https://www.99.co/blog/indonesia/cara-menanam-lili-paris/', 'Penyiraman dilakukan secukupnya saja', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Cara menaman Bunga Lili Paris di tanah langsung (mangyono.com)', 15, 1),
(37, 'Gelombang Cinta', 1, '1,5 meter', 'Pupuk NPK', '6 bulan/sekali', 'Pupuk Kandang', '1 tahun/sekali', 'https://thegorbalsla.com/tanaman-gelombang-cinta/', 'https://thegorbalsla.com/tanaman-gelombang-cinta/', 'Cara penggunaannya adalah dengan penyebaran di tanaman yang mengikuti petunjuk yang tertera di kemasan. Jenis pupuk yang diberikan pada gelombang cinta ini juga berdasarkan fase pertumbuhan dan penyesuaian keadaan.', '3 kali/sehari', '', 'https://thegorbalsla.com/tanaman-gelombang-cinta/', 'Cara menyiram tanaman gelombang cinta harus dilakukan dengan memberikan kelembapan saja. Anda dapat menyiram di pagi hari sebelum jam 10.00 atau dapat dilakukan sore hari setelah jam 17.00. Hal ini dilakukan pada waktu tersebut menghindari penguapan.', 'Tanah', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '5 Cara Merawat Gelombang Cinta dalam Pot agar Berbunga Subur - IlmuBudidaya.com', 15, 1),
(38, 'Kuping Gajah', 1, '0.2-0.4 meter', 'Pupuk NPK', '2 minggu/kali', '', '', 'https://www.brilio.net/wow/cara-merawat-tanaman-hias-daun-kuping-gajah-agar-subur-dan-cantik-210224h.html', '', 'Gunakan pupuk NPK dengan komposisi zat N yang lebih banyak. Caranya, semprotkan pupuk atau tabur di atas media tanam. Sebaiknya gunakan pupuk sebanyak dua minggu sekali.', '2 kali/hari', '', 'https://www.brilio.net/wow/cara-merawat-tanaman-hias-daun-kuping-gajah-agar-subur-dan-cantik-210224h.html', 'Frekuensi yang ideal untuk menyiram tanaman hias kuping gajah cukup dua kali per hari, yaitu di waktu pagi sebelum pukul 10.00 dan sore hari setelah jam 17.00. Perlu diingat untuk melakukan penyiraman secara tepat, sebab jika terlalu banyak dapat mengakiba', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://ilmubudidaya.com/cara-merawat-gelombang-cinta-dalam-pot', 15, 1),
(39, 'Daun Puring', 0, '5 meter', 'Pupuk Organik', '1 kali/bulan', '', '', 'https://bibitonline.com/artikel/cara-menanam-puring-dan-juga-perawatannya-supaya-tumbuh-sehat-dan-segar', '', 'Memberi pupuk setiap 1 bulan sekali dengan menggunakan pupuk organic untuk memenuhi asupan nutrisi bagi tanaman puring.', '2 kali/hari', '1 kali/hari', 'https://ilmubudidaya.com/cara-menanam-bunga-puring', 'Hindari proses penyiraman berlebih karena dapat menyebabkan busuk akar, siram seperlunya saja', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://bibitonline.com/artikel/cara-menanam-puring-dan-juga-perawatannya-supaya-tumbuh-sehat-dan-segar', 14, 1),
(40, 'Tanduk Rusa', 1, '0.9 meter', 'Pupuk Kandang', '1 kali/bulan', '', '', 'https://dayaternak.com/cara-menanam-paku-tanduk-rusa/', '', 'Pupuk yang baik untuk tanaman paku tanduk rusa ini adalah pupuk kandang.Semua itu karena pupuk kandang merupakan pupuk terbaik yang pas dan cocok untuk semua tanaman hias yang tumbuh di tanah, pasir dan humus hutan.Pupuk kandang adalah pupuk alami yang ama', '', '2 kali/hari', 'https://gdm.id/cara-menanam-apel/', 'Penyiraman dilakukan dipagi atau sore hari sesuai kebutuhan', 'Tanah', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 'Tanduk Rusa Banyak Dicari. Harganya pun Lumayan (ayotasik.com)', 14, 1),
(41, 'Apel', 0, '3-12 meter', 'Pupuk Bio Organik', '1 kali/4 bulan', '', '', 'https://gdm.id/budidaya-apel/', '', 'Pemupukan dengan dosis 50 kg/Ha dengan takaran pemberian 50 gram pada setiap tanamannya', '1 kali/hari', 'Tidak Perlu', 'https://dayaternak.com/cara-menanam-paku-tanduk-rusa/', 'Penyiraman secara rutin dan teratur harus dilakukan saat musim kemarau, jika sudah memasuki musim penghujan, tanaman paku tanduk rusa tidak perlu disiram.', 'Tanah', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 'http://balitjestro.litbang.pertanian.go.id/budidaya-apel/', 5, 2),
(62, 'Seledri', 0, '0.5 meter', 'Pupuk organik cair', '1 kali/2 minggu', 'Pupuk NPK', '1 kali/minggu', 'https://gdm.id/budidaya-seledri/', 'https://balitsa.litbang.pertanian.go.id/ind/images/Isi%20poster/MP-29%20Budidaya%20seledri-KRPL.pdf', 'Gunakan pupuk organik cair setiap 2 minggu untuk memenuhi kebutuhan nutrisi tanaman. Pupuk NPK juga dapat diberikan dengan interval 7 hari secara dikocor.', '3 kali/minggu', '', 'http://jambi.litbang.pertanian.go.id/ind/images/PDF/leafletseledri09.pdf', 'Di awal masa pertumbuhan, penyiraman dilakukan 1-2 kali sehari, berikutnya cukup 2-3 kali seminggu tergantung dari cuaca. Tanah tidak boleh kekeringan atau tergenang air.', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://www.99.co/blog/indonesia/menanam-seledri/', 3, 3),
(63, 'Daun bawang', 0, '0.2-0.4 meter', 'Pupuk kandang', '1 kali/3 minggu', 'Pupuk urea', '1 kali/3 minggu', 'https://www.merdeka.com/jabar/cara-menanam-daun-bawang-di-rumah-cepat-dan-mudah-dilakukan-kln.html?page=all', 'https://www.merdeka.com/jabar/cara-menanam-daun-bawang-di-rumah-cepat-dan-mudah-dilakukan-kln.html?page=all', 'Lakukan pemupukan selama 3 minggu sekali dengan pupuk kandang maupun pupuk urea.', '2-3 kali/hari', '', 'https://www.99.co/blog/indonesia/cara-menanam-daun-bawang-dalam-pot/', 'Penyiraman 2-3 kali sehari, pastikan air tidak menggenang di bawah pot.', 'Tanah', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://ilmubudidaya.com/cara-menanam-bawang-daun-saat-musim-hujan', 16, 3),
(66, 'Bawang bombay', 0, '0.4-0.7 meter', 'Pupuk buatan', '1 kali/10 hari', '', '', 'https://dispertan.bantenprov.go.id/lama/read/artikel/566/Budidaya-Tanaman-Bombai.html', '', 'Pemupukan pertama dilakukan seminggu sebelum lahan ditanami dengan menggunakan pupuk kandang/kompos. Pupuk kandang/kompos yang digunakan sebaiknya yang sudah tua. Pemberian pupuk kedua dilakukan kurang lebih 2-3 hari sebelum penanaman dengan menggunakan pu', '2 kali/hari', '', 'https://dispertan.bantenprov.go.id/lama/read/artikel/566/Budidaya-Tanaman-Bombai.html', 'Penyiraman pertama dilakukan setelah bibit ditanam. Penyiraman berikutnya dilakukan sehari dua kali, pagi dan sore hari,. Namun, banyak atau tidaknya penyiraman tergantung keadaan lahannya. Yang harus diperhatikan jangan sampai tanah mengalami kekeringan a', 'Tanah', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 'http://cybex.pertanian.go.id/mobile/artikel/84991/BUDIDAYA-BAWANG-BOMBAY/', 16, 3),
(67, 'Bawang putih', 0, '0.5-0.85 meter', 'Pupuk NPK', '1 kali/20 hari', 'Pupuk urea', '1 kali/20 hari', 'https://jatim.litbang.pertanian.go.id/wp-content/uploads/2019/04/BAWANG-PUTIH-3.pdf', 'https://jatim.litbang.pertanian.go.id/wp-content/uploads/2019/04/BAWANG-PUTIH-3.pdf', 'Pemupukan susulan I bawang putih diberikan pada saat tanaman berumur 15 HST dengan dosis pupuk urea 200 kg/ha dan NPK 100kg/ha. Pemupukan susulan II diberikan pada umur 35 HST dengan dosis urea 100 kg/ha dan NPK 200kg/ha. Pemupukan susulan III diberikan sa', '1 kali/2-3 hari', '', 'https://distan.lomboktimurkab.go.id/baca-berita-163-budidaya-bawang-putih.html', 'Pada masa awal penanaman, pengairan perlu diberikan setiap hari, yaitu pada pagi atau sore. Kemudian setelah tanaman tumbuh dengan baik, pengairan perlu dijarangkan menjadi 2-3 hari sekali, bahkan lebih tergantung dari kondisi tanaman dan cuaca.', 'Tanah', 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 'https://jatim.litbang.pertanian.go.id/wp-content/uploads/2019/04/BAWANG-PUTIH-3.pdf', 16, 3),
(71, 'Tomat', 0, '3 meter', 'Pupuk organik cair', '1 kali/minggu', 'Pupuk urea', '1 kali/minggu', 'Menanam Tomat, Dari Bibit Hingga Panen (agronet.co.id)', 'Menanam Tomat, Dari Bibit Hingga Panen (agronet.co.id)', 'Pemupukan tanaman tomat dilakukan 1 kali/ minggu. Untuk tanaman tomat organik menggunakan pupuk organik cair, sedangkan tomat non-organik dapat menggunakan pupuk Urea/NPK.', '2 kali/hari', '1 kali/hari', 'http://distan.jabarprov.go.id/distan/blog/detail/5483-wow-ternyata-penyiraman-pohon-tomat-tidak-boleh-sembarangan', 'Penyiraman tanaman tomat saat musim kemarau dilakukan 2 kali sehari pada pagi/sore hari, sedangkan jika musim hujan, cukup siram 1 kali/hari dan perhatikan drainase agar air tidak menggenang.', 'Tanah', 1, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 'http://cybex.pertanian.go.id/mobile/artikel/82709/Cara-Budidaya-Tanaman-Tomat/', 4, 3),
(72, 'Cabai', 0, '0,8 meter', 'Pupuk organik cair', '3 kali/bulan', 'Pupuk NPK', '2 kali/bulan', 'Pemupukan Tanaman Cabe yang Benar, Agar Berbuah lebat - MAX Indonesia - solusi pertanian no. 1 di Indonesia', 'PEMUPUKAN TANAMAN CABAI RAWIT (pertanian.go.id)', 'Pemupukan tanamna cabai pada awal penanaman sebaiknya menggunakan pupuk organik, saat pemupukan susulan bisa diberikan pupuk NPK.', '1 kali/hari', '', 'Cara Menanam Cabe dari Awal hingga Panen [Panduan Lengkap] (tipsbudidaya.com)', 'Penyiraman tanaman cabai saat musim kemarau dilakukan 1 kali sehari, sedangkan jika musim hujan atur sistem pembuangan air (drainase) agar air tidak menggenang.', 'Tanah', 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://belajartani.com/kapan-waktu-tanam-cabai-yang-tepat/', 11, 3),
(73, 'Timun', 0, '2.5 meter', 'Pupuk NPK', '2 kali/bulan', 'Pupuk organik cair', '3 kali/bulan', 'https://bibitbunga.com/cara-menanam-mentimun-dalam-pot/', 'https://bibitbunga.com/cara-menanam-mentimun-dalam-pot/', 'Pada awal penanaman sebaiknya menggunakan pupuk organik, setelah itu dapat ditambahkan pupuk NPK.', '1 kali/hari', '', 'https://kabartani.com/panduan-lengkap-cara-menanam-timun-dalam-pot-polybag.html', 'Pada awal pertumbuhan tanaman, penyiraman dilakukan 2 kali sehari pada pagi dan sore. Setelah memasuki masa generatif, penyiraman dilakukan cukup sore hari saja atau menyesuaikan cuaca.', 'Tanah', 1, 3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 'https://www.bertani.co.id/cara-menanam-timun/', 10, 3),
(74, 'Labu siam', 0, '2 meter', 'Pupuk NPK', '2 kali/bulan', 'Pupuk Kompos', '1 kali/bulan', 'CARA MENANAM / BUDIDAYA LABU SIAM DI POT / POLIBAG | Pertanian (tanamanbawangmerah.blogspot.com)', 'CARA MENANAM / BUDIDAYA LABU SIAM DI POT / POLIBAG | Pertanian (tanamanbawangmerah.blogspot.com)', 'Pemupukan susulan dilakukan seminggu setalah penanaman. Setelah diberi pupuk, lakukan penyiraman.', '3 kali/hari', '', 'Cara Menanam Labu Siam dan Merawatnya agar Tumbuh Subur - Toko Tanaman', 'Pada musim hujan penyiraman dilakukan menyesuaikan cuaca, siram saat media tanamnya terlihat sudah agak kering.', 'Tanah', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 'Syarat Tumbuh Tanaman Labu Siam - Ilmu Pertanian (agrotek.id)', 10, 3),
(75, 'Paprika', 0, '0.5-1.5 meter', 'Pupuk kompos', '1 kali/minggu', 'Pupuk urea', '3 kali/bulan', '12 Cara Menanam Paprika dan Perawatannya (bungabunga.co.id)', '14 Cara Budidaya Paprika (Lengkap Sampai Panen) (bungabunga.co.id)', 'Pemupukan dilakukan menggunakan pupuk daun (urea) saat daun mulai tumbuh sampai berbunga. Selanjutnya dapat digunakan pupuk kompos/organik.', '2-3 kali/hari', '1-2 kali/hari', '12 Cara Menanam Paprika dan Perawatannya (bungabunga.co.id)', 'Penyiraman disesuaikan dengan cuaca dan kondisi media tanam.', 'Tanah', 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '√ 9 Cara Menanam Paprika Terlengkap (carabudidaya.co.id)', 11, 3),
(76, 'Rosemary', 0, '1.5-2 meter', 'Pupuk kandang', '1 kali/bulan', 'Pupuk organik cair', '1 kali/bulan', '7 Cara Menanam Rosemary di Rumah agar Tumbuh Sehat dan Subur (99.co)', '7 Cara Menanam Rosemary di Rumah agar Tumbuh Sehat dan Subur (99.co)', 'Tanaman rosemary tidak memerlukan banyak pupuk, namun membutuhkan kapur yang cukup pada media tanam.', '1 kali/hari', '', 'Step by Step Cara Menanam Bunga Rosemary dan Budidayanya di Dalam Pot - Trikmerawat.com', 'Tanaman ini tidak memerlukan banyak air, saat musim hujan hindarkan dari cipratan air hujan atau suhu yang terlalu dingin.', 'Tanah', 2, 2, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 'Step by Step Cara Menanam Bunga Rosemary dan Budidayanya di Dalam Pot - Trikmerawat.com', 12, 4),
(77, 'Sirih merah', 0, '3 meter', 'Pupuk kompos', '', 'Pupuk organik cair', '', '√ 5 Cara Menanam Sirih Merah Lengkap (carabudidaya.co.id)', 'CARA MENANAM/ BUDIDAYA SIRIH MERAH DI POT/ POLIBAG | Pertanian (tanamanbawangmerah.blogspot.com)', 'Sebaiknya menggunakan pupuk organik, tidak disarankan pemberian pupuk berlebihan dan letakkan pupuk jauh dari pangkal akar untuk menghindari batang membusuk.', '1 kali/hari', '', '√#6 Cara Menanam Sirih Merah dengan Dual Fungsi - Nona Tani', 'Penyiraman disesuaikan dengan kondisi tanaman, jika kelebihan air tanaman mudah membusuk', 'Tanah', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'TEKNIK PERKEMBANGBIAKAN TANAMAN SIRIH MERAH (pertanian.go.id)', 12, 4),
(78, 'Temulawak', 0, '1 meter', 'Pupuk kandang', '1 kali/minggu', 'Pupuk organik cair', '1 kali/minggu', 'https://ilmubudidaya.com/cara-menanam-temulawak#:~:text=Pemupukan%20pada%20Temulawak.%20Pemupukan%20untuk%20temulawak%20bertujuan%20agar,di%20cara%20membuat%20pupuk%20cair%20dari%20air%20kelapa.', 'https://ilmubudidaya.com/cara-menanam-temulawak#:~:text=Pemupukan%20pada%20Temulawak.%20Pemupukan%20untuk%20temulawak%20bertujuan%20agar,di%20cara%20membuat%20pupuk%20cair%20dari%20air%20kelapa.', 'Pemupukan dapat dilakukan dengan menggali media tanam dan menaburkan pupuk, jika menggunakan pupuk cair cukup dikocorkan di dekat rimpang.', '1 kali/hari', '', 'Cara Menanam Temulawak, Tanaman Rimpang Penuh Manfaat (99.co)', 'Pada awal penanaman penyiraman dilakukan 2 kali sehari, setelah tanaman tumbuh besar cukup 1 kali sehari.', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '6 Cara Budidaya Tanaman Temulawak Terbukti Berhasil - Ilmu Pertanian (agrotek.id)', 9, 4),
(79, 'Jahe', 0, '0.8 meter', 'Pupuk kompos', '1 kali/2 bulan', 'Pupuk organik cair', '1 kali/2 bulan', 'https://gdmorganic.com/pupuk-jahe/', 'https://gdmorganic.com/pupuk-jahe/', 'Pemupukan pertama dilakukan saat tanaman sudah mempunyai 3-4 rumpun batang semu, setelah itu pemupukan dilakukan 2 bulan sekali.', '1 kali/hari', '', '11 Cara Menanam Jahe di Pot (Panduan Lengkap) - IlmuBudidaya.com', 'Tanaman ini membutuhkan banyak air saat awal penanaman, sehingga sebaiknya ditanam saat awal musim hujan', 'Tanah', 1, 3, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 'https://gdmorganic.com/pupuk-jahe/', 9, 4),
(80, 'Kunyit', 0, '0.4-1 meter', 'Pupuk organik cair', '1 kali/minggu', 'Pupuk organik granule', '1 kali/4 bulan', 'Cara Menanam Kunyit Di Pot Agar Tumbuh Subur - Tumbuhan ID', 'Cara Menanam Kunyit Di Pot Agar Tumbuh Subur - Tumbuhan ID', 'Pupuk organik cair diberikan saat usia 1-3 bulan, setelah diatas 3 bulan dapat diberikan pupuk organik granule.', '2 kali/hari', '', '8 Cara Menanam Kunyit Di Pot, Mudah dan Subur Di Rumah (gdm.id)', 'Penyiraman dilakukan secara rutin, bisa juga menyiram dengan menyemprot saat pagi dan sore.', 'Tanah', 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 'http://cybex.pertanian.go.id/mobile/artikel/95991/BUDIDAYA-TANAMAN-OBAT-KUNYIT/', 9, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usia`
--

CREATE TABLE `usia` (
  `tanaman_id` int(11) NOT NULL,
  `usia_urutan` int(11) NOT NULL,
  `usia_jenis` varchar(64) NOT NULL,
  `usia_angka` int(11) NOT NULL,
  `usia_src` varchar(256) NOT NULL,
  `foto_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `usia`
--

INSERT INTO `usia` (`tanaman_id`, `usia_urutan`, `usia_jenis`, `usia_angka`, `usia_src`, `foto_url`) VALUES
(62, 1, 'Usia pembibitan', 1, 'https://steemit.com/esteem/@nazaraceh/mengenal-seledri-dan-cara-membudidayakannya-08419820bfbba', 'https://steemitimages.com/p/o1AJ9qDyyJNSpZWhUgGYc3MngFqoAMx5qTpWaEFc8j9zHHdFC?format=match&mode=fit&width=640'),
(62, 2, 'Usia berbunga', 2, '', ''),
(41, 1, 'Usia pembibitan', 2, 'https://ilmubudidaya.com/cara-menanam-apel', 'https://ilmubudidaya.com/wp-content/uploads/2017/05/bibit-apel.jpg'),
(41, 2, 'Usia berbuah', 84, 'https://kumparan.com/meylisa-rahman/tips-cara-budidaya-apel-terbaik', 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1503889588/Apel_ekcnlm.jpg'),
(41, 3, 'Usia panen', 3, 'http://balitjestro.litbang.pertanian.go.id/budidaya-apel/', 'https://i1.wp.com/balitjestro.litbang.pertanian.go.id/wp-content/uploads/2015/07/Apel-Batu1.jpg?w=800'),
(11, 1, 'Usia pembibitan', 4, 'https://adamamegarden.blogspot.com/2019/01/memperbanyak-sukulen.html', 'https://i-h2.pinimg.com/564x/6d/e6/9d/6de69ded3c52319692157ad0c54bac38.jpg'),
(11, 2, 'Usia Panen(Stek akar udara)', 3, 'https://id.blabto.com/999-jade-or-money-tree-care-in-the-home-especially-the-gr.html', ''),
(12, 1, 'Usia pembibitan (Cutting Pucuk)', 16, 'http://fourribs.blogspot.com/2019/01/teknik-cutting-pucuk-sukulen-dua-jenis.html', 'https://4.bp.blogspot.com/-xZ31g82FMSQ/XDM-Fg9MYmI/AAAAAAAACcs/LmfiizYOq68Z7V4Tp8WZjpwH96HUzh-DwCLcBGAs/s1600/IMG_0673.JPG'),
(14, 1, 'Usia pembibitan(Tunas)', 3, 'https://bibitbunga.com/cara-menanam-lidah-mertua-yang-baik-dan-benar/', 'https://bibitbunga.com/wp-content/uploads/2016/02/Pemisahan-tunas-lidah-mertua.jpg'),
(14, 2, 'Usia Panen(tunas)', 1, 'https://bibitbunga.com/cara-menanam-lidah-mertua-yang-baik-dan-benar/', 'https://thegorbalsla.com/wp-content/uploads/2020/02/Lidah-mertua-4.jpg'),
(18, 0, '', 0, '', ''),
(19, 0, '', 0, '', ''),
(3, 1, 'Usia pembibitan', 3, 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya', 'https://bibitbunga.com/wp-content/uploads/2016/02/Cara-menanam-lidah-buaya.jpg'),
(3, 2, 'Usia dipindahkan (Penyobekan)', 5, 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya', 'https://tipsbudidaya.com/wp-content/uploads/2020/08/gambar-cara-menanam-lidah-buaya-3.jpg'),
(3, 3, 'Usia panen', 1, 'https://komunitas.bukalapak.com/news/112470-bagaimana-teknikcara-budidaya-lidah-buaya', 'https://waralabakan.com/images/data/artikel/foto-galeri/teknik-budidaya-lidah-buaya-aloe-vera-aloevera.jpg'),
(6, 1, 'Usia pembibitan', 7, 'https://bibitonline.com/artikel/panduan-lengkap-teknik-budidaya-bunga-matahari', 'https://bibitonline.com/wp-content/uploads/benih-bunga-matahari.jpg'),
(6, 2, 'Usia penanaman', 2, 'https://bibitonline.com/artikel/panduan-lengkap-teknik-budidaya-bunga-matahari', 'https://bibitonline.com/wp-content/uploads/menyemai-bunga-matahari.jpg'),
(6, 3, 'Usia dipindahkan (Disemai)', 5, 'https://bibitonline.com/artikel/panduan-lengkap-teknik-budidaya-bunga-matahari', 'https://bibitonline.com/wp-content/uploads/proses-penanaman-bunga-matahari.jpg'),
(6, 4, 'Usia berbunga', 3, 'https://bibitonline.com/artikel/panduan-lengkap-teknik-budidaya-bunga-matahari', 'https://bibitonline.com/wp-content/uploads/perawatan-tanaman-bunga-matahari.jpg'),
(7, 1, 'Usia pembibitan', 1, 'https://kutanam.com/cara-menanam-bunga-lavender/', 'https://kutanam.com/wp-content/uploads/2020/02/lavender-2.jpg'),
(7, 2, 'Usia dipindahkan (Disemai)', 2, 'https://kutanam.com/cara-menanam-bunga-lavender/', 'https://kutanam.com/wp-content/uploads/2020/02/lavender-4.jpg'),
(7, 3, 'Usia berbunga', 4, 'https://kabarin.co.id/panduan-cara-menanam-budidaya-bunga-lavender.html', 'https://www.kebun.co.id/wp-content/uploads/2020/08/Panduan-Cara-Menanam-Bunga-Lavender-Dengan-Benar.png'),
(63, 0, 'Usia panen', 2, 'https://www.merdeka.com/jabar/cara-menanam-daun-bawang-di-rumah-cepat-dan-mudah-dilakukan-kln.html?page=all', 'https://cf.shopee.co.id/file/00786c666726377fed624a911e9bba4f'),
(66, 0, 'Usia panen', 4, 'http://cybex.pertanian.go.id/mobile/artikel/84991/BUDIDAYA-BAWANG-BOMBAY/', 'https://cf.shopee.co.id/file/50f66e4832c528d23e27e6c400015eca'),
(67, 0, 'Usia panen', 3, 'https://jatim.litbang.pertanian.go.id/wp-content/uploads/2019/04/BAWANG-PUTIH-3.pdf', 'https://duniasatwaku.files.wordpress.com/2013/12/bawang-putih-3.jpg'),
(71, 1, 'Usia Pembibitan', 0, '', ''),
(71, 2, 'Usia Berbunga', 0, '', ''),
(72, 0, 'Usia Panen', 0, '', ''),
(72, 0, '', 0, '', ''),
(73, 0, '', 0, '', ''),
(73, 0, '', 0, '', ''),
(74, 0, '', 0, '', ''),
(74, 0, '', 0, '', ''),
(75, 0, '', 0, '', ''),
(75, 0, '', 0, '', ''),
(76, 0, '', 0, '', ''),
(76, 0, '', 0, '', ''),
(77, 0, '', 0, '', ''),
(77, 0, '', 0, '', ''),
(78, 0, '', 0, '', ''),
(78, 0, '', 0, '', ''),
(79, 0, '', 0, '', ''),
(79, 0, '', 0, '', ''),
(80, 0, '', 0, '', ''),
(80, 0, '', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas_growth`
--
ALTER TABLE `aktivitas_growth`
  ADD KEY `FK_fase_aktvitas` (`fase_pertanaman_id`);

--
-- Indeks untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`alat_id`),
  ADD KEY `FK_kategori_alat` (`kategori_alat_id`);

--
-- Indeks untuk tabel `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`daerah_id`);

--
-- Indeks untuk tabel `fase_growth`
--
ALTER TABLE `fase_growth`
  ADD PRIMARY KEY (`fase_growth_id`);

--
-- Indeks untuk tabel `fase_pertanaman`
--
ALTER TABLE `fase_pertanaman`
  ADD PRIMARY KEY (`fase_pertanaman_id`),
  ADD KEY `FK_kategori_growth_pertanaman` (`kategori_growth_id`),
  ADD KEY `FK_fase_growth_pertanaman` (`fase_growth_id`);

--
-- Indeks untuk tabel `fase_pertanaman_alat`
--
ALTER TABLE `fase_pertanaman_alat`
  ADD KEY `FK_fase_alat` (`alat_id`),
  ADD KEY `FK_fase_fase` (`fase_pertanaman_id`);

--
-- Indeks untuk tabel `fase_pertanaman_masalah`
--
ALTER TABLE `fase_pertanaman_masalah`
  ADD KEY `FK_fase_masalah` (`fase_pertanaman_id`);

--
-- Indeks untuk tabel `fase_pertanaman_qna`
--
ALTER TABLE `fase_pertanaman_qna`
  ADD KEY `FK_fase_qna` (`fase_pertanaman_id`);

--
-- Indeks untuk tabel `foto_tanaman`
--
ALTER TABLE `foto_tanaman`
  ADD PRIMARY KEY (`foto_id`),
  ADD KEY `FK_foto_tanaman` (`tanaman_id`);

--
-- Indeks untuk tabel `fungsi`
--
ALTER TABLE `fungsi`
  ADD PRIMARY KEY (`fungsi_id`);

--
-- Indeks untuk tabel `fungsi_pertanaman`
--
ALTER TABLE `fungsi_pertanaman`
  ADD KEY `FK_fungsi` (`fungsi_id`),
  ADD KEY `FK_tanaman` (`tanaman_id`);

--
-- Indeks untuk tabel `galeri_pajangan`
--
ALTER TABLE `galeri_pajangan`
  ADD PRIMARY KEY (`galeri_pajangan_id`);

--
-- Indeks untuk tabel `galeri_tanaman`
--
ALTER TABLE `galeri_tanaman`
  ADD KEY `FK_galeri_tanaman` (`tanaman_id`),
  ADD KEY `FK_galeri_galeri` (`galeri_pajangan_id`);

--
-- Indeks untuk tabel `harga_alat`
--
ALTER TABLE `harga_alat`
  ADD KEY `FK_mitra` (`mitra_id`),
  ADD KEY `FK_alat` (`alat_id`);

--
-- Indeks untuk tabel `harga_tanaman`
--
ALTER TABLE `harga_tanaman`
  ADD KEY `FK_mitra_tanaman` (`mitra_id`),
  ADD KEY `FK_tanaman_tanaman` (`tanaman_id`);

--
-- Indeks untuk tabel `kategori_alat`
--
ALTER TABLE `kategori_alat`
  ADD PRIMARY KEY (`kategori_alat_id`);

--
-- Indeks untuk tabel `kategori_growth`
--
ALTER TABLE `kategori_growth`
  ADD PRIMARY KEY (`kategori_growth_id`);

--
-- Indeks untuk tabel `kategori_tanaman`
--
ALTER TABLE `kategori_tanaman`
  ADD PRIMARY KEY (`kategori_tanaman_id`);

--
-- Indeks untuk tabel `kekurangan`
--
ALTER TABLE `kekurangan`
  ADD KEY `FK_tanaman_kekurangan` (`tanaman_id`);

--
-- Indeks untuk tabel `kelebihan`
--
ALTER TABLE `kelebihan`
  ADD KEY `FK_tanaman_kelebihan` (`tanaman_id`);

--
-- Indeks untuk tabel `khasiat`
--
ALTER TABLE `khasiat`
  ADD KEY `FK_khasiat_tanaman` (`tanaman_id`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`mitra_id`);

--
-- Indeks untuk tabel `penempatan`
--
ALTER TABLE `penempatan`
  ADD PRIMARY KEY (`penempatan_id`);

--
-- Indeks untuk tabel `tanaman`
--
ALTER TABLE `tanaman`
  ADD KEY `FK_kategori_tanaman` (`kategori_tanaman_id`),
  ADD KEY `FK_kategori_growth` (`kategori_growth_id`),
  ADD KEY `FK_tanaman_penempatan` (`penempatan_id`),
  ADD KEY `FK_tanaman_daerah` (`daerah_id`),
  ADD KEY `tanaman_id` (`tanaman_id`) USING BTREE;

--
-- Indeks untuk tabel `usia`
--
ALTER TABLE `usia`
  ADD KEY `FK_usia_tanaman` (`tanaman_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aktivitas_growth`
--
ALTER TABLE `aktivitas_growth`
  ADD CONSTRAINT `FK_fase_aktvitas` FOREIGN KEY (`fase_pertanaman_id`) REFERENCES `fase_pertanaman` (`fase_pertanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD CONSTRAINT `FK_kategori_alat` FOREIGN KEY (`kategori_alat_id`) REFERENCES `kategori_alat` (`kategori_alat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fase_pertanaman`
--
ALTER TABLE `fase_pertanaman`
  ADD CONSTRAINT `FK_fase_growth_pertanaman` FOREIGN KEY (`fase_growth_id`) REFERENCES `fase_growth` (`fase_growth_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_kategori_growth_pertanaman` FOREIGN KEY (`kategori_growth_id`) REFERENCES `kategori_growth` (`kategori_growth_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fase_pertanaman_alat`
--
ALTER TABLE `fase_pertanaman_alat`
  ADD CONSTRAINT `FK_fase_alat` FOREIGN KEY (`alat_id`) REFERENCES `alat` (`alat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fase_fase` FOREIGN KEY (`fase_pertanaman_id`) REFERENCES `fase_pertanaman` (`fase_pertanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fase_pertanaman_masalah`
--
ALTER TABLE `fase_pertanaman_masalah`
  ADD CONSTRAINT `FK_fase_masalah` FOREIGN KEY (`fase_pertanaman_id`) REFERENCES `fase_pertanaman` (`fase_pertanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fase_pertanaman_qna`
--
ALTER TABLE `fase_pertanaman_qna`
  ADD CONSTRAINT `FK_fase_qna` FOREIGN KEY (`fase_pertanaman_id`) REFERENCES `fase_pertanaman` (`fase_pertanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto_tanaman`
--
ALTER TABLE `foto_tanaman`
  ADD CONSTRAINT `FK_foto_tanaman` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fungsi_pertanaman`
--
ALTER TABLE `fungsi_pertanaman`
  ADD CONSTRAINT `FK_fungsi` FOREIGN KEY (`fungsi_id`) REFERENCES `fungsi` (`fungsi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanaman` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galeri_tanaman`
--
ALTER TABLE `galeri_tanaman`
  ADD CONSTRAINT `FK_galeri_galeri` FOREIGN KEY (`galeri_pajangan_id`) REFERENCES `galeri_pajangan` (`galeri_pajangan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `harga_alat`
--
ALTER TABLE `harga_alat`
  ADD CONSTRAINT `FK_alat` FOREIGN KEY (`alat_id`) REFERENCES `alat` (`alat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mitra` FOREIGN KEY (`mitra_id`) REFERENCES `mitra` (`mitra_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `harga_tanaman`
--
ALTER TABLE `harga_tanaman`
  ADD CONSTRAINT `FK_mitra_tanaman` FOREIGN KEY (`mitra_id`) REFERENCES `mitra` (`mitra_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanaman_tanaman` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kekurangan`
--
ALTER TABLE `kekurangan`
  ADD CONSTRAINT `FK_tanaman_kekurangan` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelebihan`
--
ALTER TABLE `kelebihan`
  ADD CONSTRAINT `FK_tanaman_kelebihan` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `khasiat`
--
ALTER TABLE `khasiat`
  ADD CONSTRAINT `FK_khasiat_tanaman` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tanaman`
--
ALTER TABLE `tanaman`
  ADD CONSTRAINT `FK_kategori_tanaman` FOREIGN KEY (`kategori_tanaman_id`) REFERENCES `kategori_tanaman` (`kategori_tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanaman_daerah` FOREIGN KEY (`daerah_id`) REFERENCES `daerah` (`daerah_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tanaman_penempatan` FOREIGN KEY (`penempatan_id`) REFERENCES `penempatan` (`penempatan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `usia`
--
ALTER TABLE `usia`
  ADD CONSTRAINT `FK_usia_tanaman` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`tanaman_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
