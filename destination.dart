class Destination {
  final String name;
  final String location;
  final String imageUrl;
  final String description;

  Destination({
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.description,
  });
}

List<Destination> destinations = [
  Destination(
    name: 'Mount Bromo',
    location: 'East Java, Indonesia',
    imageUrl: 'https://i.pinimg.com/736x/db/83/d5/db83d547531f9d811b090263dcf6bb3f.jpg',
    description: 'Mount Bromo is an active volcano and a popular tourist destination in East Java.',
  ),
  Destination(
    name: 'Borobudur',
    location: 'Central Java, Indonesia',
    imageUrl: 'https://i.pinimg.com/564x/18/84/f0/1884f0e70d91873d68c543940fcdc4a1.jpg',
    description: 'Borobudur is the world\'s largest Buddhist temple, located in Central Java.',
  ),
  Destination(
    name: 'Namsan Tower',
    location: 'Seoul, South Korea',
    imageUrl: 'https://i.pinimg.com/564x/0b/b0/9e/0bb09ef988308e71473fe2ae20d3bdee.jpg',
    description: 'Namsan Tower is a famous landmark in Seoul, South Korea, offering panoramic views of the city.',
  ),
  Destination(
    name: 'Liberty Statue',
    location: 'New York, USA',
    imageUrl: 'https://i.pinimg.com/564x/cc/c5/33/ccc533515d63904f9195e9aa206c2185.jpg',
    description: 'The Statue of Liberty is a symbol of freedom located in New York City.',
  ),
  Destination(
    name: 'Garuda Wishnu Kencana Statue',
    location: 'Bali, Indonesia',
    imageUrl: 'https://i.pinimg.com/564x/75/02/63/750263055615cc85cf13dde0fb9556c9.jpg',
    description: 'Garuda Wisnu Kencana is a cultural park in Bali, featuring a massive statue of Lord Vishnu riding Garuda.',
  ),
  Destination(
    name: 'Prambanan Temple',
    location: 'Central Java, Indonesia',
    imageUrl: 'https://i.pinimg.com/564x/2a/87/4e/2a874e60a33f3e89718765e6ec4789ea.jpg',
    description: 'Prambanan is a large Hindu temple compound in Central Java, Indonesia.',
  ),
];