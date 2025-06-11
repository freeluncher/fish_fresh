import 'package:flutter/material.dart';
import 'classification_screen.dart';
import 'about_screen.dart';
import 'settings_screen.dart';
import 'history_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.camera_alt, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    'FISHFRESH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Riwayat Klasifikasi'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ClassificationScreen(showHistoryOnOpen: true),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background bergelombang
          Positioned.fill(
            child: CustomPaint(painter: _WaveBackgroundPainter()),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Ilustrasi ikan
                  SizedBox(
                    height: 120,
                    child: Image.network(
                      'https://img.icons8.com/color/144/fish--v2.png',
                      height: 100,
                      fit: BoxFit.contain,
                      semanticLabel: 'Ilustrasi Ikan',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Selamat Datang di FISHFRESH',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.water_drop, color: Color(0xFF00C2A0)),
                      SizedBox(width: 6),
                      Text(
                        'Aplikasi Klasifikasi Kesegaran Ikan Bandeng',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF00334E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.eco, color: Color(0xFF0093D1)),
                      SizedBox(width: 6),
                      Text(
                        'Offline YOLOv8',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF0093D1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClassificationScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Mulai Klasifikasi'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Color(0xFF00C2A0),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Tambahkan CustomPainter untuk background bergelombang di bawah kelas _HomeScreenState
class _WaveBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = const Color(0xFFB3E6FF)
          ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.75,
      size.width * 0.5,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.95,
      size.width,
      size.height * 0.8,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);

    final paint2 =
        Paint()
          ..color = const Color(0xFF0093D1).withOpacity(0.15)
          ..style = PaintingStyle.fill;
    final path2 = Path();
    path2.moveTo(0, size.height * 0.9);
    path2.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.85,
      size.width * 0.6,
      size.height * 0.95,
    );
    path2.quadraticBezierTo(
      size.width * 0.85,
      size.height,
      size.width,
      size.height * 0.9,
    );
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
