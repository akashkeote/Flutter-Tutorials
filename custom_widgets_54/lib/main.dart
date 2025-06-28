import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instagram')),

      // यहाँ Column में अलग-अलग classes को जोड़ रहे हैं
      body: Column(
        children: [
          // 1. Story Section
         StorySection(),

          // 2. Divider
          Container(height: 2, color: Colors.grey),

          // 3. Feed Section
          FeedSection(),
        //  PostCard(username: 'akash'),
        ],
      ),

      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

// 1. Story Section Class
class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCircle(name: 'My Story'),
          StoryCircle(name: 'User1'),
          StoryCircle(name: 'User2'),
          StoryCircle(name: 'User3'),
        ],
      ),
    );
  }
}

// 2. Story Circle Class
class StoryCircle extends StatelessWidget {
  final String name;

  const StoryCircle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(Icons.person, color: Colors.white),
          ),
          Text(name),
        ],
      ),
    );
  }
}

// 3. Feed Section Class
class FeedSection extends StatelessWidget {
  const FeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          PostCard(username: 'user1'),
          PostCard(username: 'user2'),
          PostCard(username: 'user3'),
        ],
      ),
    );
  }
}

// 4. Post Card Class
class PostCard extends StatelessWidget {
  final String username;

  const PostCard({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Row(children: [Icon(Icons.person), Text(username)]),

        // Image
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.grey,
          child: Icon(Icons.image, size: 50),
        ),

        // Actions
        Row(
          children: [
            Icon(Icons.favorite_border),
            Icon(Icons.comment),
            Icon(Icons.send),
          ],
        ),

        Text('100 likes'),
        SizedBox(height: 20),
      ],
    );
  }
}

// 5. Bottom Navigation Class
class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
