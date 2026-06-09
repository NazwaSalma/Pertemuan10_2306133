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
- Navigasi Multi Halaman
- Menampilkan Detail Produk

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

Halaman utama menampilkan informasi pengguna yang sedang login dan ringkasan data produk.
Komponen yang tersedia:

- Foto profil pengguna
- Nama pengguna
- Tombol logout
- Total produk
- Tombol Lihat Selengkapnya

## Product Page

Halaman produk digunakan untuk mengelola seluruh data produk.

Fitur yang tersedia:

- Menampilkan seluruh produk
- Menambah produk
- Mengubah produk
- Menghapus produk
- Membuka detail produk

## Detail Product Page

Halaman detail produk digunakan untuk menampilkan informasi produk secara lengkap.

Informasi yang ditampilkan:

- Nama produk
- Harga produk
- Deskripsi produk

# Konsep Flutter yang Digunakan

- StatefulWidget
- Form Validation
- SharedPreferences
- Navigation
- Navigator Push & Pop
- TextEditingController
- AlertDialog
- ListView Builder
- setState()
- CRUD Operation

# Refactoring & Navigasi Multi Halaman

## Deskripsi

Pada tahap ini dilakukan refactoring untuk meningkatkan kualitas kode sehingga lebih terstruktur dan mudah dikembangkan. Selain itu diterapkan navigasi multi halaman agar setiap fitur memiliki halaman tersendiri sesuai fungsinya.

## Perubahan Home Page

Sebelum refactoring, halaman utama menampilkan seluruh daftar produk beserta fitur CRUD secara langsung.
Setelah refactoring, Home Page diubah menjadi dashboard sederhana yang menampilkan:

- Informasi pengguna
- Total produk
- Ringkasan produk
- Tombol **Lihat Selengkapnya**

### Tampilan Home Page Setelah Refactoring
Menampilkan informasi pengguna yang sedang login beserta ringkasan data produk.

<img width="1600" height="798" alt="WhatsApp Image 2026-06-10 at 04 45 53" src="https://github.com/user-attachments/assets/38212b9b-7905-4a10-9472-4711db9f1a65" />

## Halaman Produk

Halaman produk ditambahkan sebagai pusat pengelolaan data produk.

### Fitur

- Menampilkan seluruh produk
- Menambah produk
- Mengedit produk
- Menghapus produk
- Membuka detail produk

### Tampilan Halaman Produk
Menampilkan seluruh daftar produk serta fitur CRUD.

<img width="737" height="901" alt="WhatsApp Image 2026-06-10 at 04 46 55" src="https://github.com/user-attachments/assets/cbcb7545-5303-49e8-bee8-b58802ac28a7" />

## Halaman Detail Produk

Halaman detail produk digunakan untuk menampilkan informasi produk secara lebih lengkap.

### Tampilan Detail Produk

<img width="745" height="893" alt="WhatsApp Image 2026-06-10 at 04 47 42" src="https://github.com/user-attachments/assets/1759cfc5-e0b7-4968-a8dc-984509ea4812" />

## Alur Navigasi

```text
Home Page
    │
    ▼
Product Page
    │
    ▼
Detail Product Page
```

Navigasi yang diterapkan:

1. Home Page → Product Page
2. Product Page → Detail Product Page
3. Detail Product Page → Product Page
4. Product Page → Home Page

---

# Struktur Project

```text
lib/
│
├── main.dart
│
├── pages/
│   ├── login_page.dart
│   ├── home_page.dart
│   ├── product_page.dart
│   └── detail_product_page.dart
│
├── models/
│   └── product_model.dart
│
├── services/
│   └── shared_pref_service.dart
│
└── widgets/
```

# Hasil

Aplikasi berhasil:

- Melakukan login dan logout pengguna.
- Menyimpan session menggunakan SharedPreferences.
- Menampilkan dashboard pengguna.
- Menampilkan total produk.
- Menambahkan produk (Create).
- Menampilkan produk (Read).
- Mengubah produk (Update).
- Menghapus produk (Delete).
- Menampilkan detail produk.
- Menerapkan navigasi multi halaman.
- Melakukan refactoring struktur kode agar lebih terorganisir.

# Kesimpulan

Aplikasi CRUD Produk Flutter berhasil mengimplementasikan manajemen session menggunakan SharedPreferences, operasi CRUD produk, serta navigasi multi halaman. Melalui proses refactoring, struktur kode menjadi lebih terorganisir dan mudah dikembangkan sehingga aplikasi memiliki maintainability yang lebih baik serta pengalaman pengguna yang lebih optimal.
