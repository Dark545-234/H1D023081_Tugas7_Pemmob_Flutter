import 'package:flutter/material.dart';
import 'package:h1d023081_tugas7/widgets/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo, size: 30),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), 
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.indigo, 
      ),
      drawer: const Sidemenu(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),

            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.indigo.shade200,
              child: const Icon(
                Icons.info_outline,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),

            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      'Aplikasi Tugas 7 - Pertemuan 9',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Dibuat sebagai syarat penyelesaian tugas 7  Praktikum Pemrograman Mobile.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    const Divider(height: 30),
                    const Text(
                      'Shift Praktikum',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Warga asli shift F',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              'Detail Pengembang:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 15),
            
            _buildInfoTile(
              icon: Icons.account_circle_outlined,
              title: 'Pengembang',
              subtitle: 'Diky Amarulloh',
            ),
            _buildInfoTile(
              icon: Icons.school_outlined,
              title: 'Institusi',
              subtitle: 'Universitas Jendral Soedirman',
            ),
            _buildInfoTile(
              icon: Icons.copyright_outlined,
              title: 'Nomor Induk mahasiswa',
              subtitle: 'H1D023081',
            ),
          ],
        ),
      ),
    );
  }
}