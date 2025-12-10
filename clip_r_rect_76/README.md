# 🎯 ClipRRect in Flutter — Ultimate Notes

## 🔹 Clip = Scissor ✂️

Flutter me Clip ka meaning hota hai kisi widget ko **crop ya cut** karna.  
Digital platform par hum kisi **view/item ke edges ko shape** dena chahte hain → Clip widgets use hote hain.

---

## 🔹 ClipRRect = Clip + Rounded Rectangle

**RRect** = Rounded Rectangle → yani **edges ko round kar do**.  
Jaha `Container` me `borderRadius` ka option nahi milta → **ClipRRect rescue 🦸‍♂️**

---

## 🧠 Why ClipRRect is Important?

| Feature                     | Explanation                                           |
|----------------------------|-------------------------------------------------------|
| Crop any widget            | Image, Container, Video, Chart sab crop hote         |
| Rounded corners            | `BorderRadius` se smooth shapes                      |
| Complex shapes             | Elliptical corners, one-sided rounding               |
| Custom UI designs          | Waves, graphs, curved cards etc.                     |
| Circular avatar alternative| Agar container nahi support kare radius              |

---

## 🧩 Border Radius options

```dart
BorderRadius.circular(20);

BorderRadius.all(
  Radius.circular(20),
);

BorderRadius.only(
  topLeft: Radius.circular(50),
  bottomRight: Radius.elliptical(60, 30),
);
