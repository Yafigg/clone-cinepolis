import 'package:flutter/material.dart';

import 'package:clone_cinepolis/pages/home-page.dart';
import 'package:clone_cinepolis/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isChecked = false; // Variabel untuk status checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          246, 3, 38, 112), // Background putih untuk halaman login
      body: Column(
        children: [
          // Container untuk logo dengan background biru gelap
          Container(
            width: double.infinity,
            height: 250,
            color: const Color.fromARGB(246, 3, 38, 112), // Warna biru gelap
            child: Center(
              child: Image.asset(
                'assets/logo-login.png', // Pastikan file logo ada di folder assets
                width: 280,
                height: 400,
              ),
            ),
          ),

          // Container 2: Form Login
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 250, 250, 250),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul "Hai Moviegoers!"
                    const Text(
                      'Hai Moviegoers!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(246, 3, 38, 112),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Deskripsi
                    const Text(
                      'Sudah siap merasakan pengalaman menonton\n'
                      'yang tidak terlupakan?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Input Email/WhatsApp Number
                    const Text(
                      'Email or WhatsApp Number',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email atau WhatsApp Number',
                        hintStyle: const TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),

                    // Input Password
                    const Text(
                      'Password',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _passwordController,
                      obscureText:
                          !_isPasswordVisible, // Pengaturan untuk hide/show password
                      decoration: InputDecoration(
                        hintText: '**********',
                        hintStyle: const TextStyle(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible =
                                  !_isPasswordVisible; // Toggle password visibility
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Checkbox for Terms and Conditions
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked, // Menampilkan status checkbox
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!; // Toggle checkbox
                            });
                          },
                        ),
                        const Expanded(
                          child: Text(
                            'Ya, saya menerima syarat dan ketentuan yang berlaku',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Logika untuk "Forgot Password"
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        // Logika login
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomePage()), // Arahkan ke HomePage
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: const Color.fromARGB(246, 3, 38, 112),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: Size(double.infinity,
                            50), // Lebar penuh, tinggi tombol lebih besar
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Daftar di sini text
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          // Navigasi ke halaman registrasi
                        },
                        child: const Text(
                          'Belum punya akun? Daftar di sini',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
