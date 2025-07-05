# 🧱 Flutter Stack + Positioned Widget – Absolute Positioning

## 🤔 Why Use Positioned?
- **Row** → Items left to right (horizontal)
- **Column** → Items top to bottom (vertical)
- **Stack** → Ek ke upar ek (overlap, layered)
- **But**: Inme order change nahi kar sakte, bas alignment set hota hai.
- **Positioned**: Stack ke andar kisi bhi child ka exact position control kar sakte ho! Free placement, bilkul apne hisab se.

---

## 🧪 Example Code

```dart
Scaffold(
  body: Container(
    width: 300,
    height: 300,
    color: Colors.black,
    child: Stack(
      children: [
        Positioned(
          right: 10,  // Distance from right edge
          bottom: 10, // Distance from bottom edge
          child: Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ),
)
```

---

## 🧠 Positioned Properties

| Property | Purpose                              |
|----------|--------------------------------------|
| `top`    | Distance from top edge               |
| `bottom` | Distance from bottom edge            |
| `left`   | Distance from left edge              |
| `right`  | Distance from right edge             |
| `height` | Optional fixed height (override)     |
| `width`  | Optional fixed width (override)      |

⚠️ **Tip:** Agar left + right dono doge to width fix karna padega, warna error aayega. Sirf jitna zarurat ho utna hi property use karo.

---

## 🔍 Visual Layout

```
Black Container (300x300)
└── Stack
    └── Positioned
        └── White Box at (right: 10, bottom: 10)
```

---

## 💡 Use Cases

- Chat bubbles
- Floating action buttons (FAB)
- Game elements (snake ka head, etc.)
- Image overlays, badges
- Profile pic pe camera icon (bottom-right)

---

## 🔄 Tip: Change Position Dynamically

```dart
Positioned(
  top: showOnTop ? 10 : null,
  bottom: showOnTop ? null : 10,
  left: 20,
  child: YourWidget(),
)
```

---

## 🎯 Summary

- Row/Column: Order fix, alignment control.
- Stack: Layered, order fix, overlap possible.
- Stack + Positioned: Total control, har item ka exact position set kar sakte ho.

---

**Mast likh rahe ho! Revision ke liye perfect notes. Agar aur Stack ke use-cases ya multiple Positioned ka example chahiye ho, ya z-index (kis widget ke upar kaun) ya GestureDetector integration, batao! 🔥**
