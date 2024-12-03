import 'package:flutter/material.dart';
import 'package:clone_cinepolis/pages/my-booking-page.dart';
import 'package:clone_cinepolis/pages/movie-page.dart';
import 'package:clone_cinepolis/pages/cinema-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(viewportFraction: 0.7);
  double _currentPageValue = 0;

  // Daftar gambar
  List<String> movieImages = [
    'assets/movie-potrait1.jpg',
    'assets/movie-potrait2.jpg',
    'assets/movie-potrait3.jpeg',
    'assets/movie-potrait4.jpg',
    'assets/movie-potrait5.jpg',
  ];

  @override
  void initState() {
    super.initState();
    // Listener untuk melacak perubahan posisi gambar
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Location Section with Border
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

                const SizedBox(height: 30),

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
                  height: 400,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: movieImages.length,
                    itemBuilder: (context, index) {
                      double scale = 1.0;
                      double opacity = 4.0;

                      // Menentukan skala dan opacity berdasarkan posisi
                      if (index == _currentPageValue.floor()) {
                        // Gambar di tengah
                        scale = 1.0;
                        opacity = 1.0;
                      } else if (index == _currentPageValue.floor() + 1 ||
                          index == _currentPageValue.floor() - 1) {
                        // Gambar di kiri atau kanan
                        scale = 0.8;
                        opacity = 0.5;
                      } else {
                        // Gambar yang lebih jauh
                        scale = 0.6;
                        opacity = 0.3;
                      }

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Transform.scale(
                          scale: scale,
                          child: Opacity(
                            opacity: opacity,
                            child: Container(
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(movieImages[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),

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
                        width: 180,
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
                        width: 180,
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
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie-potrait8.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/movie-potrait9.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
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
                const SizedBox(height: 30),
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
                const SizedBox(height: 10,),
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
        // Add BottomNavigationBar here
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
