# flutter_hero_animation_74

# 🚀 Flutter Hero Animation Demo

A simple Flutter app that **demonstrates the Hero animation** transition between two pages using the same image. Also includes a comparison with normal navigation (no animation).

---

## 🧠 Concepts Covered

- **Hero Widget:** Enables smooth, shared element transitions between routes.
- **InkWell / GestureDetector:** Detects touch interactions on widgets (InkWell gives a Material ripple effect).
- **Navigation (`Navigator.push`):** For switching between screens.
- **Stateless & Stateful Widgets:** Showcases both widget types.
- **Image display with `ClipRRect`:** For rounded corners on images.
- **Material Design styling:** Uses Cards, AppBars, Elevation, and more.

---

## 📱 Screens & Flow

### 🏠 Main Screen

- Shows two cards:
  - **Hero Animation Card:** Uses the Hero widget for smooth animation.
  - **Normal Navigation Card:** Just a simple navigation, no animation.
- Tapping either card opens a detail page.

### 🌠 Hero Animation Page

- Shows the **same image wrapped in a Hero tag**.
- Triggers a **smooth transition animation** between pages.

### 🧱 Normal Image Page

- Shows the same image, but **without any animation**.
- Simple, abrupt page switch for comparison.

---

## 🎯 Key Widgets Used

| Widget           | Purpose                                                      |
|------------------|-------------------------------------------------------------|
| `Hero`           | Wraps the image to provide animation between screens         |
| `InkWell`        | Detects tap gesture on the cards (with ripple effect)        |
| `Navigator.push` | Navigates between pages                                      |
| `ClipRRect`      | Gives images rounded corners                                 |
| `Card`           | Material container with shadow and rounded border            |
| `AppBar`         | Page headers with titles and color styles                    |

---

## ✨ Hero Widget Usage

```dart
Hero(
  tag: 'hero-image', // Same tag must be used on both pages
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network('https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg'),
  ),
)
```

- **Note:** The `tag` property must be the same on both screens for the animation to work.

---

## 🎮 OnTap Using InkWell

```dart
InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Hero2ndpage()),
    );
  },
  child: Hero(
    tag: 'hero-image',
    child: Image.network('https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg'),
  ),
)
```

> 💡 **Tip:**  
> Use `InkWell` for Material ripple effect (good for cards/buttons).  
> Use `GestureDetector` for more complex gestures or if you don't need ripple.

---

## 📂 File Structure

```
lib/
│
├── main.dart         # Entry point, main screen & normal navigation logic
└── hero2ndpage.dart  # Hero animation destination page
```

---

## 🖼️ Demo Image Used

- [Gratisography Augmented Reality Image](https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg)

---

## 🧪 Animation vs. Normal Navigation

| Hero Animation                   | Normal Navigation                    |
|-----------------------------------|--------------------------------------|
| Smooth, animated transition       | Hard, abrupt switch                  |
| Feels native and modern           | Basic user experience                |
| Reuses same UI element (tag)      | No link between elements             |

---

## ✅ How to Run This App

1. **Clone this repo**
2. Run `flutter pub get`
3. Launch using `flutter run` or your favorite IDE

---

## 📝 Notes for GitHub README

- **Hero animations** make navigation feel more natural and visually appealing by animating shared elements between screens.
- Using **InkWell** is preferred for simple taps, as it gives you the ripple effect matching Material Design, but you can use **GestureDetector** for more complex user interactions.
- For Hero transitions, always use the **same `tag`** for the shared widget on both source and destination screens.
- `ClipRRect` is used to **round the corners** of images, giving a modern look.
- **Material widgets** like `Card` and `AppBar` help you easily achieve beautiful, consistent UI.

---

## 📦 Example: main.dart (core logic)

```dart
// ... imports and main() ...

class HeroAnimationDemo extends StatefulWidget { /* ... */ }

class NormalImagePage extends StatelessWidget { /* ... */ }

class _HeroAnimationDemoState extends State<HeroAnimationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero Card
            Card(
              elevation: 8,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Hero2ndpage()),
                ),
                child: Hero(
                  tag: 'hero-image',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg',
                      width: 200,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // ... Normal navigation card, etc.
          ],
        ),
      ),
    );
  }
}
```

---

## 👨‍💻 Author

Made with ❤️ using Flutter by Akash Keote

---


