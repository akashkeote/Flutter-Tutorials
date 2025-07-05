# 🟡 Flutter Splash Screen using Timer & Navigator

## 📘 What is a Splash Screen?
Ek temporary screen hoti hai jo app open hote hi kuch seconds ke liye dikhti hai.  
Isme generally logo, brand message ya data loading hota hai.

### ✅ Common Use Cases:
- Brand logo ya animation show karna
- Firebase, database, shared preferences load karna
- API calls ya initialization before main screen
- Big companies use it to create first impression (UX)

---

## 🔧 How to Make Splash Screen in Flutter

### 🔹 Use Timer (from `dart:async`) inside `initState()`
```dart
@override
void initState() {
  super.initState();
  Timer(Duration(seconds: 2), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  });
}
```
> **Note:**  
> `Navigator.pushReplacement` is important here so that user can’t go back to splash screen.

---

### 💡 push vs pushReplacement

| Method                     | Back Button Brings Back Splash? |
|----------------------------|:-------------------------------:|
| Navigator.push             | ✅ YES                          |
| Navigator.pushReplacement  | ❌ NO                           |

---

## 🧪 Example Code (Main + Splash + Dashboard)

### 🔸 main.dart
```dart
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:splash_screen_flutter_67/SplashScreen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splashscreen(),
    );
  }
}
```

---

### 🔸 SplashScreen.dart
```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_flutter_67/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: const Text(
            "Pushpa ! Zukega nahi sala",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
```

---

### 🔸 DashboardScreen (inside main.dart or separate)
```dart
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome, User!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _DashboardCard(title: 'Users', value: '120'),
                _DashboardCard(title: 'Sales', value: '₹15,000'),
                _DashboardCard(title: 'Orders', value: '32'),
              ],
            ),
            const SizedBox(height: 30),
            const Text('Recent Activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(children: const [
                ListTile(
                    leading:
                        Icon(Icons.check_circle, color: Colors.green),
                    title: Text('Order #1234 completed'),
                    subtitle: Text('2 hours ago')),
                ListTile(
                    leading: Icon(Icons.person_add, color: Colors.blue),
                    title: Text('New user registered'),
                    subtitle: Text('3 hours ago')),
                ListTile(
                    leading: Icon(Icons.shopping_cart, color: Colors.orange),
                    title: Text('Order #1235 placed'),
                    subtitle: Text('5 hours ago')),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  const _DashboardCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            Text(value,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
```

---

## ✅ Final Output:
- App opens with splash screen ("Pushpa! Zukega nahi sala" 😎)
- After 2 seconds → goes to dashboard automatically
- User can’t go back to splash using back button (thanks to `pushReplacement`)

---
