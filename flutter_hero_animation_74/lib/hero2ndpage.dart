import 'package:flutter/material.dart';

class Hero2ndpage extends StatelessWidget {
  const Hero2ndpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hero Animation Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Same image with Hero animation!',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            const SizedBox(height: 30),

            // Hero animation wala image - same tag as first page
            Hero(
              tag: 'hero-image',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg",
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Go Back'),
            ),

            const SizedBox(height: 20),
            const Text(
              'Notice the smooth animation transition!',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
