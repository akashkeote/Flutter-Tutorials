# 🧱 Creating a Custom Rounded Button Widget in Flutter

When you want consistent, reusable buttons across your app, but with different icons, text, or actions, you make a custom widget! This keeps your code clean, DRY, and easy to style or maintain.

---

## 🚀 Why Make a Custom Button Widget?

- **Reusability**: Use the same button code everywhere, just change the label/icon/action.
- **Clean Code**: No redundant widget trees or clutter in your screens.
- **Centralized Styling**: Change button look in one place, update everywhere.

---

## 📁 Folder Structure

```plaintext
lib/
├── main.dart           // uses the custom button
└── widgets/
    └── roundedbtn.dart // defines the custom button widget
```

---

## ✨ Features of This Custom Button

| Feature             | In Code? | Notes                                         |
|---------------------|:--------:|-----------------------------------------------|
| Custom text         |   ✅     | `btnName` is required                         |
| Optional icon       |   ✅     | `Icon? icnName` with ternary operator         |
| Custom colors       |   ✅     | `clr`, `bgclr` used in button styling         |
| Reusable text style |   ✅     | `TextStyle` passed from outside               |
| Callback function   |   ✅     | Null-safe, uses `callback!()` if not null     |
| Unique shape        |   ✅     | `RoundedRectangleBorder` for custom corners   |

---

## 🧪 Example Usage in main.dart

```dart
// With icon
Roundedbtn(
  btnName: "Press Me",
  icnName: Icon(Icons.access_time),
  textStyle: TextStyle(fontSize: 11),
),

// Without icon, custom color and callback
Roundedbtn(
  btnName: "Press Me",
  textStyle: TextStyle(fontSize: 11, backgroundColor: Color.fromARGB(0, 1, 1, 24)),
  clr: Color.fromARGB(255, 255, 1, 158),
  callback: () => print("Press"),
),
```

---

## 🛠️ Full Code for widgets/roundedbtn.dart

```dart
import 'package:flutter/material.dart';

class Roundedbtn extends StatelessWidget {
  final String btnName;
  final Icon? icnName;
  final Color? clr;
  final Color? bgclr;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const Roundedbtn({
    super.key,
    required this.btnName,
    this.icnName,
    this.clr,
    this.bgclr,
    required this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();  // Will only work if callback is provided (non-null)
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: bgclr,
        shadowColor: clr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
      ),
      child: icnName != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icnName!,
              SizedBox(width: 6),
              Text(btnName, style: textStyle),
            ],
          )
        : Text(btnName, style: textStyle),
    );
  }
}
```

---

## ⚠️ Null Safety & Optional Parameters

| Thing                 | How Used       | Why?                                    |
|-----------------------|---------------|------------------------------------------|
| `VoidCallback?`       | Optional      | You don't have to pass a callback always |
| `callback!()`         | Forced call   | Only works if callback is non-null       |
| `icnName != null ?`   | Ternary check | Button works with or without icon        |

---

## 🎨 Button Styling Notes

- Flutter's `ElevatedButton.styleFrom()` now uses:
  - `foregroundColor`: text/icon color
  - `backgroundColor`: button fill color
  - `shadowColor`: shadow
  - `shape`: for custom rounded borders
- `primary:` is deprecated—use the above instead.

---

## ✅ Summary Table

| Good Practice           | In This Code? |
|------------------------|:-------------:|
| Separated widget file  |      ✅       |
| Null-safe callback     |      ✅       |
| Ternary for optional   |      ✅       |
| Custom styling         |      ✅       |
| Clean main.dart usage  |      ✅       |

---

## 🧾 Want to Extend?

- [ ] Add optional size/dimensions for the button
- [ ] Support for flat, outline, or icon-only button styles
- [ ] Make callback truly optional (no forced `!`)
- [ ] Add loading/progress state

**Let me know if you want a complete project setup, or examples for any of the above!**
