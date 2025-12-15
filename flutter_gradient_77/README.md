# flutter_gradient_77

# 🎨 Gradients in Flutter — Complete Notes (Linear & Radial)

Aaj maine Flutter me **Gradient** concept padha.  
Gradient ka use karke hum simple UI ko **modern, premium aur visually rich** bana sakte hain.

Flutter me gradients mostly **background design** ke liye use hote hain.

---

## 🔹 What is a Gradient?

Gradient ka matlab hota hai:  
👉 **Multiple colors ka smooth transition**

Single color ke comparison me gradient:
- Depth create karta hai  
- UI ko premium feel deta hai  
- Modern apps me widely used hai  

---

## 🔹 Where do we use Gradient in Flutter?

Flutter me gradient **direct `color:` ki tarah use nahi hota**.  
Ye hamesha `BoxDecoration` ke andar define hota hai.

```dart
Container(
  decoration: BoxDecoration(
    gradient: ...
  ),
)
```

👉 Mostly use hota hai:

Container

Card

Background UI

Sections / Headers

⚠️ color: aur gradient: ek saath use nahi hote

🎯 Types of Gradients in Flutter

Flutter me mainly 2 types ke gradients hote hain:

1️⃣ LinearGradient
2️⃣ RadialGradient

🟦 LinearGradient
🔸 What is LinearGradient?

Colors straight line me flow karte hain

Direction ho sakti hai:

Left → Right

Top → Bottom

Diagonal

🔸 Basic LinearGradient Syntax
```dart
LinearGradient(
  colors: [
    Color.fromARGB(255, 7, 197, 255),
    Color.fromARGB(188, 33, 149, 243),
    Color.fromARGB(255, 139, 203, 255),
  ],
)
```
🔸 Direction Control (begin & end)
```dart
LinearGradient(
  colors: [
    Color.fromARGB(255, 7, 197, 255),
    Color.fromARGB(188, 33, 149, 243),
    Color.fromARGB(255, 139, 203, 255),
  ],
  begin: FractionalOffset(1.0, 0.5), // Right side
  end: FractionalOffset(0.0, 0.5),   // Left side
)
```
👉 Is example me gradient right → left flow karega.

🔸 Color Stops (Important Concept)
```dart
LinearGradient(
  colors: [
    Colors.cyan,
    Colors.blue,
    Colors.lightBlue,
  ],
  stops: [0.25, 0.6, 1.0],
)
```
🧠 stops ka matlab:

Color kis position par change hoga

Values 0.0 se 1.0 ke beech hoti hain

🔵 RadialGradient
🔸 What is RadialGradient?
Colors center point se bahar ki taraf spread hote hain

Circular / spotlight type effect milta hai

Glow, focus, wave UI me useful hota hai

🔸 RadialGradient Syntax (Learned Code)
```dart
RadialGradient(
  colors: [
    Color.fromARGB(120, 7, 197, 255),
    Color.fromARGB(134, 33, 149, 243),
    Color.fromARGB(166, 139, 203, 255),
  ],
  center: Alignment.bottomCenter,
  stops: [0.1, 0.4, 1.0],
)
```
🔸 Center Control
```dart
center: Alignment.center
center: Alignment.topCenter
center: Alignment.bottomCenter
```
👉 Ye decide karta hai gradient kaha se start hoga

🧠 Linear vs Radial Gradient (Quick Comparison)

| Feature | LinearGradient | RadialGradient |
|---------|----------------|----------------|
| Color flow | Straight line | Center se circular |
| Control | begin → end | center |
| Use case | Backgrounds, cards | Glow, focus, spotlight |
| Shape | Line-based | Circle-based |