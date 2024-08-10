-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2023 at 03:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(2) NOT NULL,
  `uuid` char(255) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('draft','published') NOT NULL DEFAULT 'draft',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `uuid`, `id_kategori`, `judul`, `isi`, `image`, `status`, `date_created`) VALUES
(4, 1, '41f31384-55ed-11ee-b148-7c04d0beac66', 3, 'UUID apakah itu ??', '<p>UUID (Universally Unique Identifier) adalah identifikasi unik yang digunakan secara luas dalam sistem komputer. UUID diciptakan untuk memiliki kemungkinan duplikasi yang sangat rendah, bahkan pada tingkat yang sangat besar.</p>\r\n<p>UUID versi 4, yang paling umum digunakan saat ini, mengandung 122 bit acak. Dengan banyaknya bit ini, terdapat 2^122 (sekitar 5.3 x 10^36) kemungkinan UUID yang berbeda. Ini adalah jumlah yang sangat besar, sehingga kemungkinan duplikasi UUID sangat kecil, bahkan saat digunakan dalam jumlah besar.</p>\r\n<p>Dalam praktiknya, kemungkinan duplikasi UUID versi 4 sangat rendah, hampir mendekati nol dalam penggunaan dunia nyata. Bahkan dalam penggunaan yang sangat intensif seperti dalam distribusi data di seluruh dunia, peluang duplikasi tetap sangat kecil.</p>\r\n<p>Jadi, meskipun dalam teori matematika, tidak ada jaminan bahwa UUID tidak akan pernah duplikat, dalam praktiknya, Anda dapat menganggapnya sebagai identifikasi unik yang aman untuk hampir semua keperluan.</p>', 'c0d842424c1c2547da2220ae30578c46.jpeg', 'published', '2023-09-18 06:33:19'),
(5, 1, 'e93ef2a6-55ee-11ee-b148-7c04d0beac66', 3, 'Alternatif selain UUID 3', '<p>3 Ada beberapa alternatif untuk menggunakan UUID untuk menghasilkan identifikasi unik. Beberapa alternatif tersebut termasuk:</p>\r\n<p>1. <strong>ID Incremental</strong>: Anda dapat menggunakan angka increment (penambahan terus-menerus) sebagai identifikasi unik. Ini adalah pendekatan yang sederhana dan mudah dimengerti. Namun, kelemahannya adalah kemungkinan duplikasi jika ada beberapa aplikasi yang menghasilkan ID pada saat yang sama.</p>\r\n<p>2. <strong>Timestamp-based ID</strong>: Anda dapat menggunakan timestamp (waktu) untuk membuat ID unik. Misalnya, ID bisa terdiri dari kombinasi timestamp dan beberapa karakter acak untuk memastikan keunikan. Namun, dalam kasus ini, jika Anda memproses sejumlah besar permintaan dalam waktu yang sangat singkat, ada kemungkinan ID yang sama jika dua permintaan diproses dalam waktu yang bersamaan.</p>\r\n<p>3. <strong>Kode Unik</strong>: Anda dapat menghasilkan ID unik menggunakan kode yang berbeda, seperti kode yang dihasilkan oleh algoritma kriptografis atau algoritma hashing yang kuat. Ini akan memastikan ID yang sangat kecil kemungkinannya untuk duplikasi.</p>\r\n<p>4. <strong>Custom Unique ID</strong>: Anda juga dapat membuat algoritma khusus sendiri untuk menghasilkan ID unik berdasarkan kebutuhan Anda. Misalnya, Anda dapat menggabungkan beberapa atribut atau informasi lain yang relevan dalam sistem Anda untuk menciptakan ID unik.</p>\r\n<p>Saat memilih metode alternatif, pertimbangkan kompleksitas, kehandalan, dan keamanan yang sesuai dengan kebutuhan aplikasi Anda. Pilihan tergantung pada skenario penggunaan Anda dan sejauh mana Anda harus menghindari duplikasi identifikasi.</p>', 'cc1172de75e0b117071763998cbf3c9e.png', 'published', '2023-09-18 06:45:09'),
(6, 1, '65faf746-5693-11ee-b148-7c04d0beac66', 1, 'Perbedaan NoSQL dan JSON', '<p>NoSQL (Not Only SQL) dan JSON (JavaScript Object Notation) adalah dua konsep yang berbeda dalam konteks penyimpanan dan pengelolaan data.</p>\r\n<p><strong>1. NoSQL (Not Only SQL)</strong><br>   - NoSQL adalah pendekatan dalam manajemen database yang tidak memanfaatkan SQL (Structured Query Language) sebagai bahasa utama untuk mengakses dan mengelola data.<br>   - Ini adalah kategori umum yang mencakup berbagai sistem database yang tidak terbatas pada model relasional tradisional.<br>   - NoSQL dapat digunakan untuk berbagai jenis data, termasuk data semi-struktural dan non-struktural.<br>   - Contoh database NoSQL termasuk MongoDB (database dokumen), Cassandra (database kolom), dan Redis (database key-value).</p>\r\n<p><strong>2. JSON (JavaScript Object Notation):</strong><br>   - JSON adalah format pertukaran data ringan yang digunakan untuk menyimpan dan mengirim data antar sistem.<br>   - JSON merupakan cara yang umum digunakan untuk merepresentasikan data dalam bentuk teks yang mudah dibaca oleh manusia.<br>   - Data JSON terdiri dari pasangan nama-nilai yang sering disebut sebagai objek, dan objek-objek ini dapat dikelompokkan dalam bentuk struktur data yang lebih besar, seperti array.<br>   - JSON sering digunakan dalam pengembangan perangkat lunak untuk mentransmisikan data antara server dan klien, atau untuk menyimpan konfigurasi dan pengaturan.</p>\r\n<p>Jadi, perbedaannya adalah bahwa NoSQL adalah jenis database yang tidak terbatas pada model relasional dan dapat digunakan untuk berbagai jenis data, sementara JSON adalah format data yang digunakan untuk merepresentasikan data dalam bentuk teks yang ringan dan mudah dibaca oleh manusia. JSON dapat digunakan untuk menyimpan data dalam berbagai jenis database, termasuk database NoSQL.</p>', 'e46fec0eb87cdf36ce6f3d28319f9cff.png', 'published', '2023-09-19 02:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `hero` char(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `sub_judul` varchar(255) DEFAULT NULL,
  `siswa` int(11) DEFAULT NULL,
  `tenaga_pendidik` int(11) DEFAULT NULL,
  `tenaga_kependidikan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `logo`, `hero`, `title`, `judul`, `sub_judul`, `siswa`, `tenaga_pendidik`, `tenaga_kependidikan`) VALUES
(1, '02c7e57fd8fda9d476fd31ccf3f48a52.png', '954bc191f0d0901e0048ac63af61ebfa.jpg', 'BTIKP', 'Website Sekolah BTIKP', 'Kami ada untuk memajukan pendidikan di Kalimantan Selatan', 987, 44, 26);

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `judul` char(255) NOT NULL,
  `isi` text NOT NULL,
  `image` char(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `id_user`, `uuid`, `judul`, `isi`, `image`, `date_created`) VALUES
(7, 1, 'e06c3fea-60bf-11ee-a502-7c04d0beac66', 'Ruang Kelas', '<p>Ruang kelas adalah fasilitas utama di setiap sekolah. Di SMA, ruang kelas biasanya dilengkapi dengan meja, kursi, papan tulis, dan proyektor untuk pengajaran.</p>', '', 1696208771),
(8, 1, 'c663fc8c-60c4-11ee-a502-7c04d0beac66', 'Perpustakaan', '<p>Perpustakaan adalah sumber daya penting untuk penelitian dan studi. SMA biasanya memiliki perpustakaan dengan koleksi buku, majalah, jurnal, dan sumber daya belajar lainnya.</p>', '63e39f3025d84cb309c6f4adaa5a75b6.jpeg', 1696210875);

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `menu_id` int(2) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `uuid`, `menu_id`, `judul`, `isi`, `image`, `is_active`) VALUES
(1, '7623b45c-5434-11ee-b148-7c04d0beac66', 1, 'Sekolah', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fugiat in, omnis, incidunt dolorem nesciunt similique, atque quo, nemo nam quidem voluptatem alias? Inventore excepturi, quis. Officia corrupti veritatis cupiditate consequuntur.</p>', 'fe33f87a888747b4ce73e6e51e34d723.jpeg', 1),
(2, '8d69c372-5434-11ee-b148-7c04d0beac66', 1, 'Visi dan Misi', '<p>VISI :</p>\r\n<p>Terwujudnya BTIKP sebagai pusat Pengembangan dan Pelayanan Teknologi Informasi dan Komunikasi Pendidikan.</p>\r\n<p>MISI :</p>\r\n<ol>\r\n<li>Meningkatkan akses dan mutu pendidikan dengan mengembangkan media bahan, model dan sistem pembelajaran berbasis TIK.</li>\r\n<li>Meningkatkan akuntabilitas pelayanan dan pengolahan pendidikan dengan mengembangkan sistem Informasi dan jaringan pendidikan berbasis TIK.</li>\r\n<li>Mewujudkan peningkatan kompetensi sumberdaya manusia, dan menciptakan pertumbuhan kapasitas manajemen, serta sarana prasarana TIK Pendidikan.</li>\r\n<li>Mengembangkan Kultur lembaga berbasis kinerja dan kebersamaan.</li>\r\n<li>Membangun jejaring kerja dan kemitraan di bidang TIK Pendidikan.</li>\r\n</ol>', 'a8853a4155da427dc9e3eb2e5da62a26.jpeg', 1),
(3, '1a7f544c-553f-11ee-b148-7c04d0beac66', 3, 'PMRI', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fugiat in, omnis, incidunt dolorem nesciunt similique, atque quo, nemo nam quidem voluptatem alias? Inventore excepturi, quis. Officia corrupti veritatis cupiditate consequuntur.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fugiat in, omnis, incidunt dolorem nesciunt similique, atque quo, nemo nam quidem voluptatem alias? Inventore excepturi, quis. Officia corrupti veritatis cupiditate consequuntur.</p>', '5167e6c221219bf5623591ea39d5ca5e.jpeg', 1),
(4, '95c160e4-60c7-11ee-a502-7c04d0beac66', 15, 'Tahun 2023', '<p>Lomba OSN (Olimpiade Sains Nasional) adalah kompetisi sains tingkat nasional yang diselenggarakan di banyak negara, termasuk Indonesia. Tujuan utama dari OSN adalah untuk mempromosikan dan mengembangkan minat serta kemampuan siswa dalam bidang sains dan teknologi. Ini adalah ajang prestisius di mana siswa-siswa terbaik dari berbagai sekolah di Indonesia bersaing untuk meraih prestasi dalam berbagai mata pelajaran sains.</p>\r\n<p>Berikut beberapa poin penting terkait Lomba OSN:</p>\r\n<p>1. <strong>Mata Pelajaran</strong>: Lomba OSN melibatkan berbagai mata pelajaran sains, seperti Matematika, Fisika, Kimia, Biologi, Astronomi, dan Informatika. Setiap mata pelajaran memiliki babak penyisihan, semifinal, dan final.</p>\r\n<p>2. <strong>Tingkatan</strong>: Lomba OSN biasanya terbagi menjadi beberapa tingkatan, seperti tingkat SD, SMP, dan SMA. Setiap tingkatan memiliki soal yang sesuai dengan tingkatannya.</p>\r\n<p>3. <strong>Proses Seleksi</strong>: Siswa yang ingin berpartisipasi dalam Lomba OSN harus melewati proses seleksi di tingkat sekolah, kabupaten/kota, provinsi, hingga tingkat nasional. Hanya siswa-siswa terbaik yang dapat mewakili sekolah atau wilayah mereka.</p>\r\n<p>4. <strong>Prestisius</strong>: Meraih prestasi dalam Lomba OSN dianggap sebagai pencapaian luar biasa. Para pemenang dan peserta yang berprestasi seringkali mendapatkan pengakuan dan peluang lanjutan dalam pendidikan sains.</p>\r\n<p>5. <strong>Persiapan</strong>: Siswa yang ingin berkompetisi dalam Lomba OSN biasanya mempersiapkan diri dengan serius, termasuk belajar materi yang relevan, mengerjakan soal-soal latihan, dan berpartisipasi dalam pelatihan tambahan.</p>\r\n<p>6. <strong>Pentingnya OSN</strong>: OSN bukan hanya ajang kompetisi, tetapi juga kesempatan untuk mengembangkan pemahaman mendalam tentang sains, berpikir kritis, dan kemampuan pemecahan masalah. Ini juga dapat membuka peluang bagi siswa untuk melanjutkan studi sains atau matematika di perguruan tinggi.</p>\r\n<p>Lomba OSN di Indonesia seringkali diikuti oleh siswa-siswa berbakat yang memiliki minat dalam ilmu pengetahuan. Selain itu, prestasi dalam Lomba OSN juga dapat menjadi jembatan untuk mengikuti kompetisi internasional sains dan matematika, seperti Olimpiade Sains Internasional (ISO) atau Olimpiade Matematika Internasional (IMO).</p>', '1e65f6625530448b0adf950d1e70b49b.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Ekstrakurikuler'),
(2, 'Prestasi'),
(3, 'Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `uuid`, `menu`, `is_active`) VALUES
(1, 'cb553654-4e89-11ee-b148-7c04d0beac66', 'Profile', 1),
(3, '5505af46-4e8a-11ee-b148-7c04d0beac66', 'Ekstrakurikuler', 1),
(15, '5d88ed00-60c7-11ee-a502-7c04d0beac66', 'Prestasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id`, `judul`, `isi`, `image`) VALUES
(1, 'Sambutan Kepala Sekolah', '<p>Selamat datang di SMK Unggulan! </p>\r\n<p>Saya, Muhammad Ahyar, dengan bangga mengucapkan selamat datang kepada seluruh siswa, guru, staf, dan orang tua di lingkungan sekolah kita yang luar biasa ini. Kami berkomitmen untuk memberikan pendidikan berkualitas tinggi yang akan membantu siswa kami tumbuh dan berkembang menjadi individu yang tangguh, berwawasan luas, dan siap menghadapi tantangan masa depan.</p>\r\n<p>Di SMK Unggulan, kami tidak hanya fokus pada pembelajaran di dalam kelas, tetapi juga mendorong siswa kami untuk aktif terlibat dalam berbagai kegiatan ekstrakurikuler, proyek kolaboratif, serta pengalaman praktis yang dapat meningkatkan keterampilan dan pengetahuan mereka di bidang yang mereka minati.</p>\r\n<p>Kami percaya bahwa setiap siswa memiliki potensi unik, dan kami berkomitmen untuk memberikan lingkungan yang mendukung mereka dalam mengejar impian dan tujuan mereka. Dengan dukungan tim pengajar yang berpengalaman dan fasilitas yang lengkap, kami yakin bahwa setiap siswa dapat mencapai prestasi luar biasa.</p>\r\n<p>Mari kita bersama-sama menciptakan masa depan yang gemilang untuk para siswa kami. Kami siap untuk mendukung, membimbing, dan menginspirasi Anda dalam perjalanan pendidikan yang penuh makna di SMK Unggulan.</p>\r\n<p>Terima kasih atas kepercayaan Anda kepada kami. Mari kita berkarya bersama!</p>\r\n<p>Salam,<br>Eksan Muhtar, S.Pd, M.Pd.<br>Kepala Sekolah SMK Unggulan</p>', 'c1368e6eae716b1fb44f2c64566323df.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `id` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `tenaga_pendidikan` int(11) NOT NULL,
  `tenaga_kependidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`id`, `siswa`, `tenaga_pendidikan`, `tenaga_kependidikan`) VALUES
(1, 876, 65, 45);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `nama` char(255) NOT NULL,
  `files` char(255) NOT NULL,
  `tgl` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `id_user`, `uuid`, `nama`, `files`, `tgl`) VALUES
(2, 2, '35ed228e-7666-11ee-bb48-7c04d0beac66', 'Edaran PJJ karena kabut asap', 'fdc594892429315efb6ce0f9cb19dd61.pdf', '1698589185');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `files` char(255) NOT NULL,
  `tgl` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id`, `id_user`, `uuid`, `files`, `tgl`) VALUES
(3, 2, '54189a00-766f-11ee-bb48-7c04d0beac66', '770cd6a82facbc7d820df76fc5a8e72b.jpeg', '1698593101'),
(4, 2, '57727c2a-766f-11ee-bb48-7c04d0beac66', 'ade2813277b730c6d085ec9749378fbb.jpeg', '1698593107'),
(5, 2, '5ac62188-766f-11ee-bb48-7c04d0beac66', 'e6b53fd84ec252efd22a1dd5b1e04498.jpeg', '1698593113'),
(6, 2, '5e53c878-766f-11ee-bb48-7c04d0beac66', '35c1ef40e265f8b792cc71799900d062.jpeg', '1698593119');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `judul` char(255) NOT NULL,
  `isi` text NOT NULL,
  `image` char(255) DEFAULT NULL,
  `tgl` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id`, `id_user`, `uuid`, `judul`, `isi`, `image`, `tgl`) VALUES
(3, 2, 'b403cb5e-7653-11ee-bb48-7c04d0beac66', 'Penerimaan Siswa Baru', '<p>**Penerimaan Siswa Baru SMK 1 Banjarmasin Tahun 2023: Wujudkan Masa Depan Berkualitas**</p>\r\n<p>Sekolah Menengah Kejuruan (SMK) 1 Banjarmasin dengan bangga mengumumkan penerimaan siswa baru untuk tahun ajaran 2023. Ini adalah kesempatan bagi calon siswa untuk bergabung dengan sekolah kami yang berkomitmen memberikan pendidikan berkualitas dalam berbagai bidang kejuruan.</p>\r\n<p>**Proses Pendaftaran**</p>\r\n<p>Proses pendaftaran siswa baru akan dimulai pada tanggal 1 Februari 2023 hingga 31 Maret 2023. Calon siswa dapat mengambil formulir pendaftaran di sekolah atau mengunduhnya dari situs web resmi kami. Formulir yang diunduh harus diisi dengan lengkap dan dikembalikan ke sekolah bersama dengan dokumen pendukung lainnya.</p>\r\n<p>**Bidang Kejuruan**</p>\r\n<p>SMK 1 Banjarmasin menawarkan beragam bidang kejuruan yang meliputi:</p>\r\n<p>1. Teknik Otomotif<br>2. Teknik Komputer dan Jaringan<br>3. Tata Boga<br>4. Teknik Elektronika<br>5. Teknik Bangunan<br>6. Akuntansi<br>7. Perhotelan</p>\r\n<p>Setiap bidang kejuruan dilengkapi dengan fasilitas dan laboratorium yang modern untuk memastikan siswa mendapatkan pendidikan yang relevan dan praktis.</p>\r\n<p>**Persyaratan Pendaftaran**</p>\r\n<p>Calon siswa harus memenuhi persyaratan berikut:</p>\r\n<p>1. Lulusan SMP atau sederajat<br>2. Melampirkan hasil ujian akademik terakhir<br>3. Menyerahkan fotokopi akte kelahiran<br>4. Membayar biaya pendaftaran</p>\r\n<p>**Ujian Masuk**</p>\r\n<p>Pendaftar akan mengikuti ujian masuk yang mencakup materi pelajaran yang relevan dengan bidang kejuruan yang dipilih. Ujian ini bertujuan untuk menilai kemampuan akademik calon siswa.</p>\r\n<p>**Keunggulan SMK 1 Banjarmasin**</p>\r\n<p>- Pengajar berpengalaman dan berkualifikasi<br>- Fasilitas laboratorium dan peralatan modern<br>- Program kerja sama dengan industri<br>- Kesempatan magang di perusahaan terkemuka<br>- Kegiatan ekstrakurikuler yang beragam</p>\r\n<p>Sekolah kami berkomitmen untuk melahirkan lulusan yang siap terjun ke dunia kerja atau melanjutkan pendidikan tinggi. Bergabunglah dengan kami dan wujudkan masa depan berkualitas Anda!</p>\r\n<p>Jika Anda memiliki pertanyaan lebih lanjut atau ingin informasi detail tentang penerimaan siswa baru, jangan ragu untuk menghubungi kami di [kontak sekolah](#).</p>\r\n<p>---</p>\r\n<p>Catatan: Artikel ini hanyalah contoh imajinasi dan bukan informasi aktual tentang penerimaan siswa baru di SMK 1 Banjarmasin tahun 2023. Untuk informasi resmi, silakan menghubungi sekolah tersebut atau kunjungi situs web mereka.</p>', 'e81fa406d627e0faccd06fada64de62e.jpeg', '1698581236'),
(4, 2, 'ff68c334-7657-11ee-bb48-7c04d0beac66', 'Olimpiade Sains Nasional (OSN): Ajang Prestasi Terbesar Siswa Indonesia', '<p>**Olimpiade Sains Nasional (OSN): Ajang Prestasi Terbesar Siswa Indonesia**</p>\r\n<p>Olimpiade Sains Nasional (OSN) adalah kompetisi akademik yang diadakan setiap tahun di Indonesia untuk mencari bakat-bakat muda di bidang sains dan matematika. OSN adalah salah satu ajang prestasi terbesar bagi siswa-siswa Indonesia, di mana mereka dapat menguji pengetahuan, kreativitas, dan kemampuan dalam menyelesaikan masalah ilmiah.</p>\r\n<p>**Mengapa OSN Penting?**</p>\r\n<p>OSN memiliki peran penting dalam perkembangan pendidikan di Indonesia. Kompetisi ini mendorong minat siswa dalam bidang sains dan matematika, memacu mereka untuk terus belajar dan berprestasi. OSN juga menjadi ajang seleksi untuk mengidentifikasi siswa-siswa berbakat yang dapat mewakili Indonesia dalam kompetisi internasional.</p>\r\n<p>**Bidang yang Dicontohkan dalam OSN**</p>\r\n<p>Kompetisi OSN mencakup berbagai bidang sains dan matematika, termasuk:</p>\r\n<p>1. **Matematika:** Di sini, siswa diuji dalam pemahaman matematika tingkat tinggi dan kemampuan dalam memecahkan masalah matematika yang kompleks.</p>\r\n<p>2. **Fisika:** Kompetisi ini menguji pengetahuan dan pemahaman siswa tentang hukum-hukum fisika dan aplikasinya dalam kehidupan sehari-hari.</p>\r\n<p>3. **Kimia:** Siswa dihadapkan pada soal-soal kimia yang menguji pemahaman mereka tentang unsur, senyawa, dan reaksi kimia.</p>\r\n<p>4. **Biologi:** Di bidang ini, siswa diuji tentang pengetahuan mereka mengenai kehidupan, organisme, dan ekosistem.</p>\r\n<p>5. **Astronomi:** OSN juga mencakup bidang astronomi, di mana siswa diberikan tugas untuk mengamati langit dan menjawab pertanyaan seputar benda langit.</p>\r\n<p>**Proses Seleksi**</p>\r\n<p>OSN memiliki proses seleksi yang ketat. Siswa-siswa yang ingin berpartisipasi harus melalui beberapa tahap seleksi, mulai dari tingkat sekolah, kabupaten/kota, provinsi, hingga tingkat nasional. Setiap tahap seleksi menghadirkan soal-soal yang semakin sulit.</p>\r\n<p>**Prestasi dalam OSN**</p>\r\n<p>Prestasi dalam OSN sangat dihargai, dan para pemenang sering kali mendapatkan beasiswa pendidikan, kesempatan menghadiri pelatihan sains di dalam dan luar negeri, serta pengakuan sebagai siswa berprestasi.</p>\r\n<p>**Mengikuti OSN**</p>\r\n<p>Jika Anda atau anak Anda memiliki minat dan potensi dalam bidang sains dan matematika, OSN adalah ajang yang sempurna untuk mengukur kemampuan. Ikuti kompetisi di sekolah Anda dan jangan ragu untuk berpartisipasi di setiap tahap seleksi.</p>\r\n<p>**Pesan Akhir**</p>\r\n<p>OSN adalah wadah bagi para siswa Indonesia untuk berkembang dan menunjukkan potensi mereka dalam bidang sains dan matematika. Semangat untuk terus belajar dan berprestasi adalah kunci untuk meraih sukses dalam OSN. Selamat berkompetisi!</p>\r\n<p>---</p>\r\n<p>Catatan: Artikel ini adalah contoh imajinatif dan bukan informasi aktual tentang OSN. Untuk informasi resmi tentang OSN, silakan kunjungi situs web resmi penyelenggara OSN atau instansi terkait.</p>', 'b3b29f12ed22183896c4b154b1dde4db.jpeg', '1698583081');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_link`
--

CREATE TABLE `tbl_link` (
  `id` int(11) NOT NULL,
  `uuid` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `files` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_link`
--

INSERT INTO `tbl_link` (`id`, `uuid`, `url`, `files`) VALUES
(2, '3b4bcc62-76c0-11ee-b2ed-7c04d0beac66', 'https://btikp.kalselprov.go.id', 'a6ff45f335ab1cd70af32a00f3cd208e.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Admin', 'penjamoen@gmail.com', '3dbad4f00e37039708987a2259ab47b5.jpeg', '$2y$10$ooyYPQrZ4YALZRmu.r.yZuyRoHw91aL0UQp40w0ZQkOSdYEZzKA.q', 1, 1, 1629463785),
(2, 'Member', 'member@gmail.com', '2c054fdbed676a9909c569b87a11458b.png', '$2y$10$ooyYPQrZ4YALZRmu.r.yZuyRoHw91aL0UQp40w0ZQkOSdYEZzKA.q', 2, 1, 1629464899);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(7, 1, 3),
(8, 1, 9),
(9, 2, 9),
(10, 1, 10),
(11, 2, 10),
(13, 1, 11),
(14, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(9, 'Master'),
(10, 'Halaman'),
(11, 'Artikel');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fa fa-fw fa-home', 1),
(2, 2, 'My Profile', 'user', 'fa fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fa fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fa fa-fw fa-list', 1),
(5, 3, 'Sub Menu', 'menu/submenu', 'fa fa-fw fa-bars', 1),
(8, 1, 'Role', 'admin/role', 'fa fa-fw fa-bolt', 1),
(9, 2, 'Change Password', 'user/changepass', 'fa fa-fw fa-key', 1),
(10, 9, 'Menu', 'master/menu', 'fa fa-fw fa-list', 1),
(11, 9, 'Sub Menu', 'master/submenu', 'fa fa-fw fa-list', 0),
(12, 10, 'Halaman', 'halaman/halaman', 'fa fa-fw fa-list', 1),
(13, 10, 'Sambutan Kepsek', 'halaman/sambutan', 'fa fa-fw fa-list', 1),
(15, 11, 'Artikel', 'artikel/index', 'fa fa-fw fa-list', 1),
(16, 11, 'Kategori', 'artikel/kategori', 'fa fa-fw fa-list', 1),
(17, 9, 'Config', 'master/config', 'fa fa-fw fa-list', 1),
(19, 10, 'Fasilitas', 'halaman/fasilitas', 'fa fa-fw fa-list', 1),
(20, 11, 'Informasi', 'artikel/informasi', 'fa fa-fw fa-list', 1),
(21, 10, 'Download', 'halaman/download', 'fa fa-fw fa-list', 1),
(22, 10, 'Galeri', 'halaman/galeri', 'fa fa-fw fa-list', 1),
(23, 9, 'Link Terkait', 'master/link', 'fa fa-fw fa-list', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori` (`id_kategori`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_link`
--
ALTER TABLE `tbl_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_link`
--
ALTER TABLE `tbl_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
