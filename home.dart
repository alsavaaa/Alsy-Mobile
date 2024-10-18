import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart'; 
import 'package:flutter/src/widgets/framework.dart';
import 'destination.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Destinations'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://i.pinimg.com/enabled_hi/564x/b2/14/9b/b2149b9cba346eba17d657344708d89a.jpg'), 
            SizedBox(height: 20),
            Text(
              "Welcome to the Home Page!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Let The Adventure Begin!",
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Menampilkan list destinasi
            Text(
              'Popular Destinations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            // Daftar destinasi menggunakan ListView.builder yang dibatasi dengan ukuran
            Container(
              height: 300, // Berikan tinggi tetap untuk daftar agar bisa di-scroll
              child: ListView.builder(
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(destinations[index].imageUrl, width: 50, fit: BoxFit.cover),
                    title: Text(destinations[index].name),
                    subtitle: Text(destinations[index].location),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DestinationPage(destination: destinations[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/profile');
        },
        child: Icon(Icons.person),
      ),
    );
  }
}

class DestinationPage extends StatelessWidget {
  final Destination destination;

  DestinationPage({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),
      body: Column(
        children: [
          Image.network(destination.imageUrl),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              destination.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              destination.location,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              destination.description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
