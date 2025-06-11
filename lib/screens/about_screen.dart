import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: const [
                  Icon(Icons.info_outline, size: 80, color: Colors.blue),
                  SizedBox(height: 16),
                  Text(
                    'FISHFRESH',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Versi 1.0.0',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Aplikasi FishFresh adalah aplikasi klasifikasi kesegaran ikan bandeng secara offline menggunakan model YOLOv8. Aplikasi ini membantu pengguna untuk mengetahui tingkat kesegaran ikan bandeng dengan mudah dan cepat melalui kamera atau galeri.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Pengembang:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Text('Tim FishFresh - 2025'),
            const SizedBox(height: 24),
            const Text(
              'Sumber Model:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Text('YOLOv8 (Ultralytics)'),
          ],
        ),
      ),
    );
  }
}
