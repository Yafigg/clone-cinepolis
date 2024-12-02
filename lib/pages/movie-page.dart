import 'package:flutter/material.dart';
import 'package:clone_cinepolis/pages/home-page.dart';
import 'package:clone_cinepolis/pages/cinema-page.dart';
import 'package:clone_cinepolis/pages/my-booking-page.dart'; // Import halaman MyBooking

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Set Scaffold background to white
        appBar: AppBar(
          backgroundColor: Colors.white, // AppBar background to white
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Location Section with Border
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
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
                // Search Section with Border
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(246, 3, 38, 112),
                        width: 2), // Blue Border
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search,
                          color: Color.fromARGB(246, 3, 38, 112)),
                      SizedBox(width: 10),
                      Text(
                        'Search Movie / Cinema',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Movie and Cinema Section
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Movie',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Cinema',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Divider Line for Movie and Cinema Titles
                Row(
                  children: [
                    // Movie Divider (Blue)
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                            right:
                                10), // Memberikan sedikit ruang di kanan garis
                        child: const Divider(
                          color: Color.fromARGB(246, 3, 38, 112),
                          thickness: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 10), // Ruang antara garis Movie dan Cinema
                    // Cinema Divider (Grey)
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 0,
                          right: 10,
                        ), // Memberikan sedikit ruang di kiri garis
                        child: const Divider(
                          color: Color.fromARGB(255, 162, 159, 159),
                          thickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                // Movie Section
                Row(
                  children: [
                    // Movie 1
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/movie-potrait5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('SnowFall',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('(18+)',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 5),
                        // Buy Now Button (with white text)
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Buy Now',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(246, 3, 38, 112),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(160,
                                40), // Make the button width the same as the image
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                        width: 20), // Add space between Movie 1 and Movie 2
                    // Movie 2
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/movie-potrait2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('Inside Out',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('(13+)',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 5),
                        // Buy Now Button (with white text)
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Buy Now',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(246, 3, 38, 112),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(160,
                                40), // Make the button width the same as the image
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                    height:
                        20), // Add spacing between Movie and Cinema sections
                // Divider Line for Cinema Section
                Row(
                  children: [
                    // Movie 3
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/movie-potrait3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('Wish',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('(13+)',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 5),
                        // Buy Now Button (with white text)
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Buy Now',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(246, 3, 38, 112),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(160,
                                40), // Make the button width the same as the image
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                        width: 20), // Add space between Movie 3 and Movie 4
                    // Movie 4
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/movie-potrait4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('Peaky Blinders',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text('(23+)',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 5),
                        // Buy Now Button (with white text)
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Buy Now',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(246, 3, 38, 112),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(160,
                                40), // Make the button width the same as the image
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2, // Highlight "Movie" Tab
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomePage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                            position: offsetAnimation, child: child);
                      },
                    ));
                break;
              case 1:
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const MyBookingPage(), // Ganti dengan MyBookingPage
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                            position: offsetAnimation, child: child);
                      },
                    ));
                break;
              case 2:
                // Stay on Movie Page
                break;
              case 3:
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const CinemaPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                            position: offsetAnimation, child: child);
                      },
                    ));
                break;
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
        ));
  }
}
