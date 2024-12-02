import 'package:flutter/material.dart';
import 'package:clone_cinepolis/pages/my-booking-page.dart';
import 'package:clone_cinepolis/pages/movie-page.dart'; // Import MoviePage
import 'package:clone_cinepolis/pages/cinema-page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color of the Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white, // Set AppBar background to white
        elevation: 0, // Remove shadow from AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Location Section with Border
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Icon(Icons.location_on,
                      color: Color.fromARGB(246, 3, 38, 112)),
                  SizedBox(width: 5),
                  Text(
                    'Malang',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_drop_down,
                      color: Color.fromARGB(246, 3, 38, 112)),
                ],
              ),
            ),
            // Right-side icons (Like, Notification, Profile)
            const Row(
              children: [
                Icon(Icons.favorite, color: Color.fromARGB(246, 3, 38, 112)),
                SizedBox(width: 20),
                Icon(Icons.notifications,
                    color: Color.fromARGB(246, 3, 38, 112)),
                SizedBox(width: 20),
                Icon(Icons.account_circle,
                    color: Color.fromARGB(246, 3, 38, 112)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Section
              const Text(
                'Hello, Throner',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Jaro',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kamu mau nonton apa hari ini?',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(246, 15, 15, 15)),
              ),
              const SizedBox(height: 20),

              // Landscape Image Container Section (Scroll Horizontal)
              SizedBox(
                height: 200, // Height of the container
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Scroll horizontally
                  child: Row(
                    children: [
                      // Container 1 - Image 1
                      Container(
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 2 - Image 2
                      Container(
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 3 - Image 3
                      Container(
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie3.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 4 - Image 4
                      Container(
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 5 - Image 5
                      Container(
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Now Showing Section with See All
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Now Showing',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(246, 3, 38, 112),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 121, 118, 118)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Container 1 - Image 1
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 2 - Image 2
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 3 - Image 3
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 4 - Image 4
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 5 - Image 5
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Upcoming Section with See All
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(246, 3, 38, 112),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 121, 118, 118)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Container 1 - Image 1
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 2 - Image 2
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait7.jpg'),
                        ),
                      ),
                    ),
                    // Container 3 - Image 3
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait8.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 4 - Image 4
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait9.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container 5 - Image 5
                    Container(
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/movie-potrait10.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // Promotion Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Promotion',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(246, 3, 38, 112),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 121, 118, 118)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200, // Height of the container
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Scroll horizontally
                  child: Row(
                    children: [
                      // Container 1 - Image 1
                      Container(
                        width: 500,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie-landscape1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 2 - Image 2
                      Container(
                        width: 500,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie-landscape2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container 3 - Image 3
                      Container(
                        width: 500,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie-landscape3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Highlight Home Tab
        onTap: (index) {
          if (index == 0) {
            // Home Tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            // My Booking Tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyBookingPage()),
            );
          } else if (index == 2) {
            // Movie Tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MoviePage()),
            );
          } else if (index == 3) {
            // Cinema Tab
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CinemaPage()),
            );
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
            icon: Icon(Icons.theaters, color: Color.fromARGB(246, 3, 38, 112)),
            label: 'Cinema',
          ),
        ],
        selectedItemColor: const Color.fromARGB(246, 3, 38, 112),
        unselectedItemColor: const Color.fromARGB(246, 3, 38, 112),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // Set the background color to white
      ),
    );
  }
}
