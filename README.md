# pertemuan10_2306133
<img width="458" height="446" alt="Screenshot 2026-06-03 170340" src="https://github.com/user-attachments/assets/a8a975e3-abe1-4538-8a55-dc90f50e28c4" />

<img width="459" height="448" alt="Screenshot 2026-06-03 170055" src="https://github.com/user-attachments/assets/2c43247c-78b3-4f3d-9839-6fd93372b8d3" />

A new Flutter project.
# Aplikasi CRUD Produk Flutter

## Deskripsi
Aplikasi CRUD Produk berbasis Flutter yang menerapkan manajemen session menggunakan SharedPreferences. Pengguna dapat melakukan login, menambahkan produk, melihat daftar produk, mengubah data produk, menghapus produk, serta melakukan logout.

# Fitur Aplikasi
- Login Username dan Password
- Validasi Form Login
- Show / Hide Password
- Menyimpan Session Login menggunakan SharedPreferences
- Menampilkan Informasi Pengguna
- Menambahkan Produk (Create)
- Menampilkan Daftar Produk (Read)
- Mengubah Data Produk (Update)
- Menghapus Data Produk (Delete)
- Logout Session

# Penjelasan Singkat

## Login Page
Halaman login digunakan untuk memasukkan username dan password.
Validasi yang diterapkan:
- Username tidak boleh kosong
- Username minimal 4 karakter
- Password tidak boleh kosong
- Password minimal 6 karakter

Password dapat ditampilkan atau disembunyikan menggunakan tombol visibility.

## Home Page
Halaman utama menampilkan informasi pengguna yang sedang login dan daftar produk yang telah ditambahkan.
Komponen yang tersedia:
- Foto profil pengguna
- Nama pengguna
- Tombol logout
- Tombol tambah produk
- Daftar produk

## Tambah Produk

Pengguna dapat menambahkan data produk baru melalui dialog form.
Data yang diinput:
- Nama Produk
- Deskripsi Produk
- Harga Produk
Setelah tombol **Simpan** ditekan, data akan langsung ditambahkan ke daftar produk.

## Edit Produk

Pengguna dapat mengubah data produk yang sudah tersimpan.
Data lama akan otomatis ditampilkan pada form sehingga pengguna dapat melakukan perubahan dengan mudah.

## Hapus Produk

Pengguna dapat menghapus produk melalui tombol ikon tempat sampah yang tersedia pada setiap card produk.

# Konsep Flutter yang Digunakan
- StatefulWidget
- Form Validation
- SharedPreferences
- Navigation
- TextEditingController
- AlertDialog
- ListView Builder
- setState()
- CRUD Operation

# Alur Aplikasi

1. Pengguna membuka aplikasi.
2. Sistem memeriksa status login pada SharedPreferences.
3. Jika belum login maka pengguna diarahkan ke halaman Login.
4. Pengguna memasukkan username dan password.
5. Sistem melakukan validasi form.
6. Jika valid, session login disimpan.
7. Pengguna diarahkan ke halaman Home.
8. Pengguna dapat:
   - Menambah produk
   - Melihat daftar produk
   - Mengubah produk
   - Menghapus produk
9. Saat tombol Logout ditekan, session login dihapus.
10. Pengguna kembali ke halaman Login.

# Dokumentasi Tampilan

<img width="458" height="446" alt="Screenshot 2026-06-03 170340" src="https://github.com/user-attachments/assets/3f7f1646-aaa1-414b-b8d2-9356c680880e" />


## 1. Halaman Utama (Data Kosong)

Pada kondisi awal ketika belum terdapat produk, aplikasi menampilkan informasi pengguna dan pesan bahwa belum ada data produk.

**Fitur:**
- Menampilkan profil pengguna
- Menampilkan nama pengguna
- Tombol logout
- Tombol tambah produk
- Informasi data kosong

<img width="457" height="441" alt="Screenshot 2026-06-03 170413" src="https://github.com/user-attachments/assets/95a31498-1359-4973-9bb6-a8b56b721a3c" />


## 2. Halaman Utama (Data Produk)

Setelah data berhasil ditambahkan, aplikasi menampilkan daftar produk dalam bentuk card.

**Fitur:**
- Menampilkan nama produk
- Menampilkan harga produk
- Menampilkan deskripsi produk
- Tombol edit
- Tombol hapus

<img width="459" height="448" alt="Screenshot 2026-06-03 170055" src="https://github.com/user-attachments/assets/d06b23ab-9814-4710-b367-204b942aa8f6" />

## 3. Form Tambah Produk

Dialog tambah produk digunakan untuk memasukkan data produk baru.

Field yang tersedia:

- Nama Produk
- Deskripsi Produk
- Harga Produk

<img width="457" height="448" alt="Screenshot 2026-06-03 170220" src="https://github.com/user-attachments/assets/f9a46425-dd0a-4b30-a471-dad7ace9a0e1" />


## 4. Form Edit Produk

Dialog edit produk digunakan untuk memperbarui data produk yang sudah ada.

Field yang tersedia:

- Nama Produk
- Deskripsi Produk
- Harga Produk

<img width="457" height="415" alt="Screenshot 2026-06-03 170259" src="https://github.com/user-attachments/assets/04cf344e-d960-4331-83b0-ed24e2030cf5" />

# Hasil

Aplikasi berhasil:

- Menampilkan form login modern
- Melakukan validasi username dan password
- Menyimpan session login menggunakan SharedPreferences
- Menampilkan informasi pengguna
- Menambahkan data produk (Create)
- Menampilkan daftar produk (Read)
- Mengubah data produk (Update)
- Menghapus data produk (Delete)
- Menampilkan dialog tambah dan edit produk
- Menghapus session saat logout
- Mengarahkan pengguna kembali ke halaman login setelah logout

# Kesimpulan

Aplikasi CRUD Produk Flutter berhasil mengimplementasikan manajemen session menggunakan SharedPreferences serta operasi CRUD (Create, Read, Update, Delete) pada data produk. Aplikasi ini menunjukkan penerapan konsep dasar Flutter seperti StatefulWidget, Navigation, Form Validation, AlertDialog, dan Local Storage yang umum digunakan dalam pengembangan aplikasi mobile maupun web berbasis Flutter.
