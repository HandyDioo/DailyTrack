# GearLog : Sistem Inventaris & Peminjaman Alat Lab TKJ

GearLog adalah aplikasi desktop berbasis Python (Tkinter + SQLite) untuk membantu toolman mengelola inventaris serta mencatat transaksi peminjaman dan pengembalian peralatan laboratorium TKJ.

## Fitur Utama

- Inventory Management: Kelola data alat, kategori, total stok, dan stok tersedia.
- User Management: Registrasi data siswa (NIS/Kelas) dan guru (NIP) dengan ID otomatis (`USR-XXXX`).
- Borrowing & Return System: Peminjaman multi-barang dengan kode transaksi otomatis (`LN-YYYY-XXXX`), dukungan pengembalian sebagian, dan pencatatan kondisi barang.
- Transaction History & Reports: Pelacakan riwayat transaksi dan laporan kondisi alat.

## Arsitektur & Teknologi

- Language: Python
- GUI Framework: Tkinter
- Database: SQLite3