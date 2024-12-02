import 'package:flutter/material.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Set background to white for the entire screen
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Location Section with Border
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 44, 43, 43)),
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
                // Search Bar for Cinema/Movie with border and shadow
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border:
                        Border.all(color: Colors.grey.shade300), // gray border
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // shadow color
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Cinema / Movie',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Movie and Cinema Section with Divider
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Move Movie text a bit to the right
                    Text(
                      'Movie',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    // Move Cinema text a bit to the left
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
                        padding: const EdgeInsets.only(right: 10),
                        child: const Divider(
                          color: Color.fromARGB(255, 162, 159, 159),
                          thickness: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 10), // Ruang antara garis Movie dan Cinema
                    // Cinema Divider (Grey)
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Divider(
                          color: Color.fromARGB(246, 3, 38, 112),
                          thickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Cinema Locations with Borders and Shadow
                _buildCinemaLocationCard(
                    'Malang Town Square', '8.03 km away', 'REGULAR LUXE'),
                const SizedBox(height: 20),
                _buildCinemaLocationCard(
                    'Lippo Plaza Batu', '11.23 km away', 'REGULAR'),
                const SizedBox(height: 20),
                _buildCinemaLocationCard(
                    'Malang Dinoyo City', '5.2 km away', 'REGULAR'),
              ],
            ),
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
        ));
  }

  // Function to build Cinema location card with border and shadow
  Widget _buildCinemaLocationCard(
      String name, String distance, String theaterType) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300), // grey border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // shadow color
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cinema Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(246, 3, 38, 112),
            ),
          ),
          const SizedBox(height: 5),
          // Location & Distance
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                distance,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
              height: 10), // Add space between location and theater section

          // Theater Info
          Row(
            children: [
              const Icon(Icons.theaters, color: Colors.grey), // Theater Icon
              const SizedBox(width: 5), // Space between icon and text
              Text(
                theaterType,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(246, 3, 38, 112),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
