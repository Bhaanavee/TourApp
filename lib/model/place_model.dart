class PlaceInfo {
  final String location ,image, name, desc;
  final int days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.days,
  });

}

  List places =[
    PlaceInfo(
      desc: '''Chennai, the capital city of the Indian state of Tamil Nadu, is a vibrant metropolis that seamlessly blends tradition and modernity. Known for its rich cultural heritage, Chennai is a bustling urban center situated along the Coromandel Coast of the Bay of Bengal. The city is characterized by its historic temples, such as the Kapaleeshwarar Temple and Parthasarathy Temple, which reflect the city's deep-rooted religious and architectural significance.
             Places to visit: Marina Beach
                              Kapeeleshwarar Temple
                              Fort St. George
                              Guindy National Park
                              Santhome Basilica''' ,
      name: 'Chennai', 
      image: 'https://www.shutterstock.com/image-vector/chennai-city-water-color-panoramic-260nw-419140405.jpg',
      location: 'South India', 
      days: 3),
      PlaceInfo(
      desc: '''Bangalore, often referred to as the "Silicon Valley of India," is the capital city of the southern state of Karnataka. Renowned for its dynamic IT industry, Bangalore stands as a technological and innovation hub, hosting numerous multinational corporations and startups. The city's pleasant climate and lush greenery have earned it the nickname "Garden City of India."
               Places to visit: Lalbagh Botanical Garden
                                Bangalore Palace 
                                Cubbon Park 
                                Vidhana Soudha 
                                ISKCON Temple Bangalore''', 
      name: 'Bangalore', 
      image: 'https://www.shutterstock.com/image-vector/vector-panoramic-water-color-illustration-260nw-383431900.jpg', 
      location: 'South India', 
      days: 3),
      PlaceInfo(
      desc: '''Mumbai, the bustling metropolis on the west coast of India, is the financial, commercial, and entertainment capital of the country. As the capital city of Maharashtra, Mumbai is a vibrant tapestry of contrasts, featuring towering skyscrapers alongside historic colonial architecture. Home to the prolific Bollywood film industry, the city is synonymous with the glamour and dynamism of the Indian film world.
              Places to visit: Gateway of India
                               Marine Drive
                               Elephanta Caves
                               Chhatrapati Shivaji Maharaj Terminus
                               Juhu Beach''', 
      name: 'Mumbai', 
      image: 'https://www.shutterstock.com/image-illustration/red-skyline-mumbai-formerly-called-260nw-1382984345.jpg', 
      location: 'Western India', 
      days: 3),
      PlaceInfo(
      desc: '''Ahmedabad, the largest city in the Indian state of Gujarat, is a dynamic blend of rich history and contemporary progress. As an important economic and industrial hub, the city has witnessed rapid urban development while preserving its cultural identity. 
              Places to visit: Sabarmati Ashram
                               Akshardham Temple
                               Adalaj Stepwell
                               Sidi Saiyyed Mosque
                               Kankaria Lake''', 
      name: 'Ahmedabad', 
      image: 'https://www.shutterstock.com/image-vector/ahmedabad-city-water-color-panoramic-260nw-419140417.jpg', 
      location: 'Western India', 
      days: 3),
      PlaceInfo(
      desc: '''Hyderabad, the capital city of Telangana in southern India, is a fascinating blend of tradition and modernity. Known as the "City of Pearls,"
              Places to visit: Charminar
                               Golconda Fort
                               Hussain Sagar Lake
                               Qutb Shahi Tombs
                               Ramoji Film City''', 
      name: 'Hyderabad', 
      image: 'https://www.shutterstock.com/image-vector/abstract-hyderabad-skyline-color-landmarks-260nw-511968295.jpg', 
      location: 'South India', 
      days: 3),
      PlaceInfo(
      desc: '''Delhi, the capital city of India, stands as a testament to the nation's rich history and contemporary significance. With a heritage spanning millennia. Delhi encapsulates India's diverse ethos, making it a compelling destination for those seeking a blend of history, culture, and contemporary urban experiences.
              Places to visit: India Gate
                               Qutub Minar
                               Red Fort
                               Humayun's Tomb
                               Lotus Temple''', 
      name: 'Delhi', 
      image: 'https://st4.depositphotos.com/1921043/39325/v/1600/depositphotos_393252400-stock-illustration-delhi-india-city-skyline-color.jpg', 
      location: 'North India', 
      days: 3),

  ];