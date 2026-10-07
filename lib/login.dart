import 'package:flutter/material.dart';
import 'package:flutter_application_1/myhomepage.dart';

// Import halaman Home kamu
import 'myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk mengambil input username
  TextEditingController inputUsername = TextEditingController();

  // Controller untuk mengambil input password
  TextEditingController inputPassword = TextEditingController();

  // Fungsi untuk mengecek username dan password
  void login() {
    // Username dan password yang benar
    if (inputUsername.text == 'admin' && inputPassword.text == '12345') {
      // Pindah ke MyHomePage
      // pushReplacement digunakan agar setelah login,
      // tombol Back tidak bisa kembali ke halaman Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage ()),
      );
    } else {
      // Jika username atau password salah
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Username atau password salah!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),

        // Warna AppBar
        backgroundColor: Colors.transparent,
      ),

      // Background halaman Login
      backgroundColor: const Color.fromARGB(245, 182, 106, 165),

      body: Column(
        children: [
          // Logo / gambar UI UX
          Center(
            child: Image.asset('asset/logoV.jpg', width: 200, height: 200),
          ),

          // Jarak
          const SizedBox(height: 16),

          // =========================
          // INPUT USERNAME
          // =========================
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputUsername,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 177, 217),

                  // Background input
                  filled: true,

                  // Tulisan petunjuk
                  hintText: 'Masukan Username',

                  // Icon username
                  prefixIcon: Icon(Icons.person),

                  // Bentuk kotak input
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),

          // Jarak
          const SizedBox(height: 16),

          // =========================
          // INPUT PASSWORD
          // =========================
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputPassword,

                // Membuat password menjadi titik-titik
                obscureText: true,

                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 177, 217),

                  filled: true,

                  hintText: 'Masukan Password',

                  // Icon password
                  prefixIcon: Icon(Icons.lock),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),

          // Jarak
          const SizedBox(height: 16),

          // =========================
          // TOMBOL LOGIN
          // =========================
          ElevatedButton.icon(
            // Icon login
            icon: const Icon(Icons.login),

            // Tulisan tombol
            label: const Text("Login"),

            // Ketika tombol ditekan
            onPressed: login,
          ),
        ],
      ),
    );
  }
}
