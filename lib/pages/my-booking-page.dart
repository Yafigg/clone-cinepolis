import 'package:flutter/material.dart';

import 'package:clone_cinepolis/pages/home-page.dart';
import 'package:clone_cinepolis/pages/cinema-page.dart';
import 'package:clone_cinepolis/pages/movie-page.dart';

class MyBookingPage extends StatelessWidget {
  const MyBookingPage({super.key});

  // Fungsi untuk menghasilkan tampilan bintang dan rating
  Widget buildRatingStars(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.toInt(); // Bintang penuh
    int halfStars = (rating - fullStars) >= 0.5 ? 1 : 0; // Setengah bintang
    int emptyStars = 10 - fullStars - halfStars; // Bintang kosong

    // Tambahkan bintang penuh (kuning)
    for (int i = 0; i < fullStars; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Colors.yellow,
        size: 14,
      ));
    }

    // Tambahkan bintang setengah (kuning)
    for (int i = 0; i < halfStars; i++) {
      stars.add(const Icon(
        Icons.star_half,
        color: Colors.yellow,
        size: 14,
      ));
    }

    // Tambahkan bintang kosong (putih)
    for (int i = 0; i < emptyStars; i++) {
      stars.add(const Icon(
        Icons.star_border,
        color: Colors.grey,
        size: 14,
      ));
    }

    // Tambahkan rating angka di samping bintang
    stars.add(
      Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          "$rating",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.yellow, // Warna kuning untuk rating
          ),
        ),
      ),
    );

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Ubah background AppBar jadi putih
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Booking',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(246, 3, 38, 112),
              ),
            ),
            Icon(
              Icons.timer,
              color: Color.fromARGB(246, 3, 38, 112),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white, // Tambahkan background putih untuk body
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "There's no active booking!",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Booking 1
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white, // Ubah background container jadi putih
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  // Movie Image
                  Container(
                    width: 140,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/movie-potrait9.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // Movie Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Meltdown',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'D 12+ | Animation, Adventure',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 2),
                        // Rating dengan 10 bintang
                        buildRatingStars(8.0), // 8 bintang dari 10
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Booking 2
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white, // Ubah background container jadi putih
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  // Movie Image
                  Container(
                    width: 140,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/movie-potrait2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // Movie Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Inside Out 2',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'D 13+ | Animation, Adventure',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 2),
                        // Rating dengan 10 bintang
                        buildRatingStars(9.5), // 9.5 bintang dari 10
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2, // Highlight "Movie" Tab
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushReplacementNamed(context, '/my-booking');
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, '/movie');
            } else if (index == 3) {
              Navigator.pushReplacementNamed(context, '/cinema');
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(246, 3, 38, 112)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number,
                  color: Color.fromARGB(246, 3, 38, 112)),
              label: 'My Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie, color: Color.fromARGB(246, 3, 38, 112)),
              label: 'Movie',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(Icons.theaters, color: Color.fromARGB(246, 3, 38, 112)),
              label: 'Cinema',
            ),
          ],
          selectedItemColor: const Color.fromARGB(246, 3, 38, 112),
          unselectedItemColor: const Color.fromARGB(246, 3, 38, 112),
          backgroundColor:
              Colors.white, // Set bottom navigation bar background to white
          type: BottomNavigationBarType.fixed,
        )
    );
  }
}
