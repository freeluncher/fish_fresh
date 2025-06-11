# FISHFRESH

![Flutter](https://img.shields.io/badge/Flutter-3.7.0-blue?logo=flutter)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)

FISHFRESH adalah aplikasi Flutter untuk klasifikasi kesegaran ikan bandeng secara offline menggunakan model YOLOv8. Aplikasi ini dirancang dengan tema laut, kesegaran, dan ikan, serta mendukung multi-platform (Android, iOS, Web, Desktop).

---

## Fitur Utama
- **Klasifikasi Kesegaran Ikan Bandeng** menggunakan model YOLOv8 secara offline
- **Ambil gambar** dari kamera atau galeri
- **Riwayat klasifikasi** tersimpan otomatis
- **Tema segar bertema laut dan ikan**
- **Halaman Tentang & Pengaturan**
- **UI modern dan responsif**

---

## Struktur Folder
```
lib/
  main.dart
  screens/
    splash_screen.dart
    home_screen.dart
    classification_screen.dart
    history_screen.dart
    about_screen.dart
    settings_screen.dart
```

---

## Instalasi & Menjalankan
1. **Clone repository**
   ```bash
   git clone <repo-url>
   cd fish_fresh
   ```
2. **Install dependencies**
   ```bash
   flutter pub get
   ```
3. **Jalankan aplikasi**
   ```bash
   flutter run
   ```

---

## Konfigurasi Model YOLOv8
- Tempatkan file model YOLOv8 (misal: `.tflite` atau `.onnx`) di folder `assets/`.
- Integrasikan pada halaman klasifikasi sesuai kebutuhan.

---

## Kontribusi
Pull request sangat diterima! Silakan fork, buat branch, dan ajukan PR.

---

## Lisensi
MIT License

---

## Tim Pengembang
- FishFresh Team (2025)

---

## Screenshots
> Tambahkan screenshot aplikasi di sini untuk memperlihatkan tampilan utama, halaman klasifikasi, dan riwayat.

---

## Kontak
Untuk pertanyaan atau saran, silakan hubungi: [email@example.com](mailto:email@example.com)
