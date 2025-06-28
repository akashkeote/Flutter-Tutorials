# 🎯 Flutter me Icon Kaise Use Kare – Size, Color & Styling (Hinglish Guide)

Flutter me `Icon` widget se tu material icons easily use kar sakta hai, aur unka size, color sab customize kar sakta hai.

---

## 📦 Basic Example

```dart
Icon(
  Icons.play_arrow_outlined,
  size: 100,
  color: Colors.blueGrey,
)
```

---

## 🧠 Customization Options

| Property         | Use/Kaam Kya Hai                             |
|------------------|---------------------------------------------|
| `icon`           | Jo icon chahiye (jaise `Icons.play_arrow_outlined`)   |
| `size`           | Icon ka size (logical pixels me)             |
| `color`          | Icon ka color                                |
| `semanticLabel`  | Accessibility (screen reader ke liye)        |
| `textDirection`  | Jab direction important ho                   |

---

## 🔁 Multiple Icons Example

```dart
Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Icons In Flutter'),

      Icon(
        Icons.play_arrow_outlined,
        size: 100,
        color: Colors.blueGrey,
      ),

      Icon(
        Icons.play_arrow_outlined,
        size: 100,
        color: Color.fromARGB(104, 96, 125, 139), // Transparent color
      ),
    ],
  ),
)
```
> 📝 Tip: `Color.fromARGB(104, 96, 125, 139)` me 104 alpha hai (0-255), jitna kam, utni zyada transparency.

---

## ✅ Kahaan-Kahaan Use Kar Sakte Ho Icon?

- `AppBar` ke andar (leading, actions)
- `FloatingActionButton` ke andar
- Text ke saath `Row` me ya `RichText` me
- Custom buttons, cards, bottom nav, etc.

---

## 📚 Tip: Tap Karne Wala Icon (IconButton)

Agar icon pe tap karna hai:

```dart
IconButton(
  icon: Icon(Icons.favorite),
  onPressed: () {
    print("Tapped");
  },
  color: Colors.red,
  iconSize: 32,
)
```

---

## 🎨 Icon + Text Side-by-Side

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.star, color: Colors.orange),
    SizedBox(width: 8),
    Text("Starred"),
  ],
)
```

---

## 💡 Bonus: Custom Icons ya SVG?

- **SVG ke liye:**  
  Package: `flutter_svg`

  ```yaml
  dependencies:
    flutter_svg: ^2.0.7
  ```
  ```dart
  SvgPicture.asset(
    'assets/icons/butterfly.svg',
    width: 50,
    height: 50,
  )
  ```

- **Aur icons chahiye?**  
  Package: `font_awesome_flutter` try kar sakte ho!

---

## 🔚 Summary Table

| Feature                 | Icon Widget      |
|-------------------------|-----------------|
| Built-in Material Icons | ✅              |
| Size Customization      | ✅              |
| Color Customization     | ✅              |
| Tap/Clickable           | ❌ (Use IconButton) |
| Advanced Custom Icons   | ✅ (With packages)  |

---

## 👋 Kuchh Aur Doubt Hai?

- Icon button toggle (on/off) dikhana hai?
- Animated icons chahiye?
- FontAwesome ya khud ke TTF icons integrate karne hai?

**Bindaas poochh le! Tere revision notes full practical hai – GitHub pe bhi paste kar sakta hai. 🚀**

---
