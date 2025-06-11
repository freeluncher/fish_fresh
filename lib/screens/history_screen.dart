import 'package:flutter/material.dart';
import 'dart:io';

class HistoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> history;
  const HistoryScreen({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Klasifikasi')),
      body:
          history.isEmpty
              ? const Center(
                child: Text(
                  'Belum ada riwayat klasifikasi.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
              : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: history.length,
                itemBuilder: (context, index) {
                  final item = history[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading:
                          item['imagePath'] != null
                              ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                  File(item['imagePath']),
                                  width: 56,
                                  height: 56,
                                  fit: BoxFit.cover,
                                ),
                              )
                              : const Icon(
                                Icons.image,
                                size: 56,
                                color: Colors.grey,
                              ),
                      title: Text(item['result'] ?? '-'),
                      subtitle: Text(item['date'] ?? ''),
                    ),
                  );
                },
              ),
    );
  }
}
