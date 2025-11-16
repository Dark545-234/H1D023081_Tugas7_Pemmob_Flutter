import 'package:flutter/material.dart';
import 'package:h1d023081_tugas7/data/home_page.dart';
import 'package:h1d023081_tugas7/data/profile_page.dart';
import 'package:h1d023081_tugas7/data/login_page.dart'; 
import 'package:shared_preferences/shared_preferences.dart'; 

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  void _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username'); // Hapus data username
    
    Navigator.pop(context); 
    
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required Function() onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo.shade700),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      onTap: onTap,
      splashColor: Colors.indigo.withOpacity(0.1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          UserAccountsDrawerHeader(
            accountName: const Text(
              'Aplikasi Mobile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            accountEmail: const Text('diky.amarulloh@mhs.unsoed.ac.id'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.indigo.shade700,
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.indigo.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Home
          _buildDrawerItem(
            icon: Icons.home_outlined,
            title: 'Beranda',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          
          _buildDrawerItem(
            icon: Icons.info_outline,
            title: 'Profile Aplikasi',
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),

          const Divider(), 
          
          
          _buildDrawerItem(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () => _logout(context), 
          ),
        ],
      ),
    );
  }
}