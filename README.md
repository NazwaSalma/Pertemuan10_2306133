# Aplikasi CRUD Produk Flutter

## Deskripsi

Aplikasi CRUD Produk berbasis Flutter yang menerapkan manajemen session menggunakan SharedPreferences. Pengguna dapat melakukan login, mengelola data produk, mengunggah gambar produk dari galeri, melihat detail produk, serta melakukan logout.

## Fitur Aplikasi

- Login Username dan Password
- Validasi Form Login
- Show / Hide Password
- Session Login menggunakan SharedPreferences
- Dashboard Home
- Menampilkan Total Produk
- Create Product
- Read Product
- Update Product
- Delete Product
- Upload Image Produk dari Galeri
- Preview Image Sebelum Disimpan
- Menampilkan Gambar pada List Produk
- Menampilkan Gambar pada Detail Produk
- Detail Produk
- Logout
- Navigasi Multi Halaman
- Refactoring Struktur Kode

## Tampilan Aplikasi

### Home Page

Halaman utama yang menampilkan informasi pengguna, total produk, dan beberapa daftar produk.

<<img width="493" height="643" alt="Image_HomePage" src="https://github.com/user-attachments/assets/21a6281f-ebd9-410f-b13e-d8e64aedfebd" />
>
### Product Page

Halaman untuk mengelola seluruh data produk.

Fitur:

- Tambah Produk
- Edit Produk
- Hapus Produk
- Detail Produk

<<img width="493" height="603" alt="Image_Product" src="https://github.com/user-attachments/assets/7b3e849a-038a-48fc-a5d6-71740e9a8d1e" />
">

### Tambah Produk

Halaman untuk menambahkan data produk baru.

Fitur:

- Input Nama Produk
- Input Deskripsi Produk
- Input Harga Produk
- Upload Gambar dari Galeri
- Simpan Produk

<<img width="505" height="550" alt="Image_Tambah_Product" src="https://github.com/user-attachments/assets/51d43dfd-ce34-42ef-87c7-1b0b393ac274" />
>

### Edit Produk

Halaman untuk mengubah data produk dan mengganti gambar.

Fitur:

- Edit Nama Produk
- Edit Deskripsi Produk
- Edit Harga Produk
- Ganti Gambar Produk
- Preview Gambar

<img width="393" height="478" alt="Image_Edit_Product" src="https://github.com/user-attachments/assets/445ee194-ad5f-4677-9856-293a569a7bb0" />

### Detail Produk

Halaman untuk menampilkan informasi produk secara lengkap.

Menampilkan:

- Nama Produk
- Harga Produk
- Deskripsi Produk
- Gambar Produk

<img width="487" height="550" alt="Image_Detail_Product" src="https://github.com/user-attachments/assets/8164a6be-7065-4419-ad84-315b3642bbbd" />

## Upload Image Feature

Aplikasi mendukung upload gambar menggunakan package:

```yaml
dependencies:
  image_picker: ^1.1.2
