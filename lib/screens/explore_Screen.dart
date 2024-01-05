import 'package:flutter/material.dart';
class exploreScreen extends StatefulWidget {
  const exploreScreen({super.key});

  @override
  State<exploreScreen> createState() => _exploreScreenState();
}

class _exploreScreenState extends State<exploreScreen> {
  Map<String, List<String>> cities = {
    'Chennai': ['Marina Beach', 'Kapaleeshwarar Temple', 'Fort St. George', 'Guindy National Park', 'Santhome Basilica'],
    'Bangalore': ['Lalbagh Botanical Garden', 'Bangalore Palace', 'Cubbon Park', 'Vidhana Soudha', 'ISKCON Temple Bangalore'],
    'Mumbai': ['Gateway of India', 'Marine Drive', 'Elephanta Caves', 'Chhatrapati Shivaji Maharaj Terminus', 'Juhu Beach'],
    'Ahmedabad': ['Sabarmati Ashram', 'Akshardham Temple', 'Adalaj Stepwell', 'Sidi Saiyyed Mosque', 'Kankaria Lake'],
    'Hyderabad': ['Charminar', 'Golconda Fort', 'Hussain Sagar Lake', 'Qutb Shahi Tombs', 'Ramoji Film City'],
    'Delhi': ['India Gate', 'Qutub Minar', 'Red Fort', 'Humayun\'s Tomb', 'Lotus Temple'],
  };

  List<String> filteredPlaces = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
       appBar: AppBar(
        title: Text('SEARCH',
        style:TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
        ) ,),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.0,
                child: TextField(
                  
                  onChanged: (value) {
                    filterSearchResults(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search for a city...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredPlaces.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredPlaces[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void filterSearchResults(String query) {
    List<String> searchResults = [];

    // Convert the query to lowercase for case-insensitive comparison
    final lowercaseQuery = query.toLowerCase();

    // Find the city in the map
    cities.forEach((city, places) {
      if (city.toLowerCase().startsWith(lowercaseQuery)) {
        searchResults.addAll(places);
      }
    });

    setState(() {
      filteredPlaces = List.from(searchResults);
    });
  }
}

