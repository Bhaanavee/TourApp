import 'package:flutter/material.dart';

 

void main() {

  runApp(MyApp());

}

 

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: SearchPage(),

    );

  }

}

 

class SearchPage extends StatefulWidget {

  @override

  _SearchPageState createState() => _SearchPageState();

}

 

class _SearchPageState extends State<SearchPage> {

  Map<String, List<String>> cities = {

    'Chennai': ['Marina Beach', 'Kapaleeshwarar Temple', 'Fort St. George', 'Guindy National Park', 'Santhome Basilica'],

    'Bangalore': ['Lalbagh Botanical Garden', 'Bangalore Palace', 'Cubbon Park', 'Vidhana Soudha', 'ISKCON Temple Bangalore'],

    'Mumbai': ['Gateway of India', 'Marine Drive', 'Elephanta Caves', 'Chhatrapati Shivaji Maharaj Terminus', 'Juhu Beach'],

    'Ahmedabad': ['Sabarmati Ashram', 'Akshardham Temple', 'Adalaj Stepwell', 'Sidi Saiyyed Mosque', 'Kankaria Lake'],

    'Hyderabad': ['Charminar', 'Golconda Fort', 'Hussain Sagar Lake', 'Qutb Shahi Tombs', 'Ramoji Film City'],

    'Delhi': ['India Gate', 'Qutub Minar', 'Red Fort', 'Humayuns Tomb', 'Lotus Temple'],

  };

 

  List<String> filteredPlaces = [];

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Tour App - Search'),

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

                      onTap: () {

                        showPlaceInfoDialog(filteredPlaces[index]);

                      },

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

 

  void showPlaceInfoDialog(String place) {

    String description = getDescriptionForPlace(place);

 

    showDialog(

      context: context,

      builder: (BuildContext context) {

        return AlertDialog(

          title: Text(place),

          content: Text(description),

          actions: [

            TextButton(

              onPressed: () {

                Navigator.of(context).pop();

              },

              child: Text('Close'),

            ),

          ],

        );

      },

    );

  }

 

  String getDescriptionForPlace(String place) {

    // Add descriptions for each place

    // You can customize these descriptions based on your requirements

    switch (place) {

      case 'Marina Beach':

        return 'Marina Beach is a natural urban beach along the Bay of Bengal in Chennai, India. The beach runs for a distance of 13 km, making it the longest natural urban beach in the country.';

      case 'Kapaleeshwarar Temple':

        return 'Kapaleeshwarar Temple is a Hindu temple dedicated to Lord Shiva, located in Mylapore, Chennai. The temple\'s Dravidian architecture and the annual Arubathimoovar festival are significant attractions.';

      case 'Fort St. George':

        return 'Fort St. George is the first English fortress in India, founded in 1644. It currently houses the Tamil Nadu Legislative Assembly and other official buildings.';

      case     'Guindy National Park':

        return 'Guindy National Park is one of the smallest national parks in India, located in the city of Chennai. It is known for its variety of flora, fauna, and the presence of the Raj Bhavan within its premises.';

      case   'Santhome Basilica':

        return 'Santhome Basilica is a Roman Catholic minor basilica in the Santhome neighborhood of Chennai. It is built over the tomb of Saint Thomas, an apostle of Jesus Christ.';

      case'Lalbagh Botanical Garden':

        return 'Lalbagh Botanical Garden is an iconic garden in Bangalore, known for its diverse collection of tropical and subtropical plants. The glass house within the garden hosts flower shows.';

      case'Bangalore Palace':

        return 'Bangalore Palace is a beautiful palace located in the heart of Bangalore. It was built in the Tudor architectural style and resembles the Windsor Castle in England.';

      case 'Cubbon Park':

        return 'Cubbon Park is a landmark lung area of Bangalore, offering a refreshing escape from the hustle and bustle of the city. It houses various species of plants and trees.';

      case 'Vidhana Soudha':

        return 'Vidhana Soudha is the seat of the state legislature of Karnataka. It is an imposing building in Bangalore and one of the most prominent landmarks of the city.';

      case 'ISKCON Temple Bangalore':

        return 'ISKCON Temple Bangalore is a famous Krishna temple and cultural complex. It is dedicated to the deity Radha Krishna and attracts devotees and tourists alike.';

      case 'Gateway of India':

        return 'The Gateway of India is an iconic arch monument built during the 20th century in Mumbai. It stands as a symbol of India\'s rich history and is a popular tourist attraction.';

      case 'Marine Drive':

        return 'Marine Drive is a picturesque promenade in South Mumbai, known for its stunning views of the Arabian Sea. It is a popular spot for leisurely walks and sunset views.';

      case 'Elephanta Caves':

        return 'Elephanta Caves are a UNESCO World Heritage Site, known for ancient rock-cut caves dedicated to Lord Shiva. They are located on Elephanta Island in Mumbai Harbour.';

      case 'Chhatrapati Shivaji Maharaj Terminus':

        return 'Chhatrapati Shivaji Maharaj Terminus, formerly known as Victoria Terminus, is a historic railway station in Mumbai. It is a UNESCO World Heritage Site and a masterpiece of Victorian Gothic architecture.';

      case 'Juhu Beach':

        return 'Juhu Beach is one of the most famous beaches in Mumbai, known for its vibrant atmosphere and a popular spot for locals and tourists. It offers beautiful sunset views.';

      case 'Sabarmati Ashram':

        return 'Sabarmati Ashram, also known as Gandhi Ashram, is the former residence of Mahatma Gandhi. It played a significant role in India\'s freedom struggle.';

      case 'Akshardham Temple':

        return 'Akshardham Temple in Gandhinagar is a magnificent Hindu temple complex dedicated to Lord Swaminarayan. It showcases traditional Indian art, culture, and spirituality.';

      case 'Adalaj Stepwell':

        return 'Adalaj Stepwell is a stunning stepwell near Ahmedabad, known for its intricate carvings and architecture. It served as a resting place for travelers and pilgrims.';

      case 'Sidi Saiyyed Mosque':

        return 'Sidi Saiyyed Mosque is renowned for its intricate stone lattice work, especially the famous Sidi Saiyyed Jali. It is located in the heart of Ahmedabad.';

      case 'Kankaria Lake':

        return 'Kankaria Lake is the largest lake in Ahmedabad, offering recreational activities such as boating and a zoo. It is a popular destination for';

      case' Charminar':

        return'Charminar is a historic monument and mosque in Hyderabad, built in 1591. It is known for its four grand arches and a mosque located on the top floor.';

      case 'Golconda Fort':

        return 'Golconda Fort is a historical fort in Hyderabad, known for its acoustic architecture and impressive engineering. The fort complex includes palaces, gates, and a hilltop citadel.';

      case 'Hussain Sagar Lake':

        return 'Hussain Sagar Lake is a large artificial lake in the heart of Hyderabad. A prominent feature of the lake is the Buddha statue installed on Gibraltar Rock.';

      case 'Qutb Shahi Tombs':

        return 'Qutb Shahi Tombs are the tombs of the Qutb Shahi dynasty rulers in Hyderabad. The tombs showcase a blend of Persian, Indian, and Pathan architectural styles.';

      case 'Ramoji Film City':

        return 'Ramoji Film City is one of the largest film studio complexes in the world, located near Hyderabad. It offers guided tours and showcases the filmmaking process.';

      case 'India Gate':

        return 'India Gate is a war memorial located in New Delhi, commemorating the soldiers who died in World War I. The structure is an iconic landmark and a popular gathering spot.';

      case 'Qutub Minar ':

        return 'Qutub Minar, located in Delhi, is a UNESCO World Heritage Site and one of the tallest minarets in India. Built in the early 13th century, it stands as a symbol of Indo-Islamic architecture. The tower is adorned with intricate carvings and verses from the Quran, showcasing the craftsmanship of that era.';

      case 'Red Fort' :

        return 'The Red Fort, also known as Lal Qila, is an iconic fort in Delhi and a UNESCO World Heritage Site. Built by Emperor Shah Jahan in the 17th century, it served as the main residence of the Mughal emperors. The forts red sandstone walls and impressive architecture make it a significant historical landmark.';

      case 'Humayuns Tomb':

        return 'Humayuns Tomb is a magnificent Mughal architectural masterpiece located in Delhi. Built in the mid-16th century, it is the tomb of the Mughal Emperor Humayun. The tombs stunning garden setting, intricate marble work, and symmetrical design are characteristic of Mughal architecture and have inspired later structures, including the Taj Mahal.';

      case 'Lotus Temple' :

        return 'The Lotus Temple, or the Baháí House of Worship, is a unique and contemporary architectural marvel in Delhi. Shaped like a lotus flower, it serves as a place of worship for the Baháí Faith. The temples serene surroundings and the lotus-inspired design make it a symbol of peace and unity.';

 

      // Add more cases for other places

      default:

        return 'Description not available.';

    }

  }

}