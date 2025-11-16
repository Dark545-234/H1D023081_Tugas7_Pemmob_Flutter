Diky Amarulloh (H1D023081

Penjelasan:
pages login
dibuat sebagai StatefulWidget karena perlu merespons perubahan input dan proses login. Input username dan password ditangani oleh TextEditingController, yang kemudian dibersihkan di metode dispose() agar tidak terjadi kebocoran memori. Jika login berhasil, fungsi _saveUsername() menyimpan username ke SharedPreferences sebagai penyimpanan lokal sederhana agar bisa digunakan kembali, misalnya untuk ditampilkan di halaman HomePage. Proses pengecekan login ditangani oleh _showDialogAndNavigate(), yang menampilkan AlertDialog untuk memberi tahu apakah login berhasil; jika benar akan diarahkan ke HomePage menggunakan Navigator.pushReplacement, dan jika salah akan tetap di halaman login. Tampilan input dibuat lebih rapi dan konsisten melalui fungsi _buildTextField(), yang mengatur label, ikon, border, dan opsi password. Semua elemen tersebut dirangkai di dalam metode build(), yang menyusun AppBar, ikon header, card form, dan tombol LOGIN yang mengeksekusi pengecekan username–password ketika ditekan.

Pages Home
dibuat sebagai StatefulWidget karena perlu memuat username dari SharedPreferences melalui fungsi _loadUsername() yang dipanggil di initState(). Username yang berhasil dimuat kemudian ditampilkan sebagai “Login Sebagai: NAMA”. Tampilan halaman menggunakan Scaffold dengan AppBar, Drawer dari Sidemenu, dan konten utama di dalam SingleChildScrollView, termasuk ikon avatar rumah serta card sambutan berisi pesan “Selamat Datang Kembali!” dan username dalam huruf kapital. Selanjutnya terdapat beberapa item informasi yang dibuat melalui fungsi _buildInfoTile(), yang menghasilkan card dengan icon, title, dan subtitle sehingga tampilan dashboard lebih rapi dan konsisten. Halaman ini berfungsi sebagai dashboard sederhana yang menyambut pengguna dengan informasi dasar aplikasi.

pages profile
menggunakan StatelessWidget dan tetap memakai Sidemenu seperti HomePage. Tampilan disusun dengan avatar ikon informasi, kemudian sebuah card utama berisi judul aplikasi, tujuan dibuatnya aplikasi, dan informasi shift praktikum. Di bawahnya terdapat card-card kecil berisi data pengembang seperti nama, kampus, dan NIM, yang dibangun menggunakan _buildInfoTile() agar tampilannya seragam. Secara keseluruhan, AboutPage berfungsi sebagai halaman profil yang menjelaskan identitas aplikasi serta pembuatnya.

pages sidemenu
muncul melalui Drawer pada HomePage dan AboutPage, dibuat sebagai StatelessWidget karena tidak memiliki state yang berubah. Bagian header menggunakan UserAccountsDrawerHeader untuk menampilkan nama aplikasi, email, dan avatar. Setiap item menu seperti Beranda, Profile Aplikasi, dan Logout dibangun melalui fungsi _buildDrawerItem() agar tampilan ikon, teks, dan efek sentuh tetap konsisten. Untuk menu Logout, fungsi _logout() menghapus data username dari SharedPreferences dan mengarahkan pengguna kembali ke LoginPage menggunakan pushAndRemoveUntil, sehingga pengguna tidak bisa kembali ke halaman Home setelah keluar.

main pages
File main.dart adalah entry point dari aplikasi Flutter. Fungsi main() menjalankan aplikasi menggunakan runApp(). Aplikasi dibungkus dalam widget utama bernama MyApp, yang merupakan StatelessWidget. Di dalam MyApp, MaterialApp digunakan untuk mengatur tema aplikasi dan menentukan halaman pertama saat aplikasi dibuka, yaitu LoginPage(). MaterialApp juga mengatur warna default melalui ThemeData. File ini berfungsi sebagai pengatur utama struktur aplikasi sebelum berpindah ke halaman-halaman lain.

Video Aplikasi

![Teks alternatif](tugas_7.gif)
