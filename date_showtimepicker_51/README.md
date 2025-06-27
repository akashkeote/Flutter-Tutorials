# Flutter Date & Time Picker Notes

## 📅 Date Picker in Flutter

Flutter ka showDatePicker dialog user ko calendar UI deta hai, jisse user koi bhi date select kar sakta hai.

### Important Parameters

- **context:**  
  - Yeh current widget ka BuildContext hota hai.
  - Dialog ko yeh batata hai ki kis jagah (screen) par open hona hai.
- **initialDate:**  
  - Dialog open hote hi kaunsa date select dikhega.
  - Usually, `DateTime.now()` use hota hai.
- **firstDate:**  
  - User isse pehle ki koi date select nahi kar sakta.
  - Example: `DateTime(2025)` — to 2025 ke pehle ka date disable rahega.
- **lastDate:**  
  - User iske baad ki koi date select nahi kar sakta.
  - Example: `DateTime(2026)` — to 2026 ke baad ka date disable rahega.

### Example Code

```dart
ElevatedButton(
  onPressed: () async {
    DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime(2026),
    );
    if (datePicked != null) {
      print("Date: ${datePicked.day} ${datePicked.month} ${datePicked.year}");
    }
  },
  child: Text("Show Date Picker"),
)
```

---

## ⏰ Time Picker in Flutter

showTimePicker dialog user ko time select karne ke liye deta hai.

### Important Concepts

- **context:**  
  - Yeh bhi wahi BuildContext hai, jisse dialog khulta hai.

- **initialTime:**  
  - Dialog open hote hi kaunsa time dikhega.
  - Example: `TimeOfDay.now()`

- **initialEntryMode:**  
  - Isse aap control karte hain ki dialog kis mode me khule:
    - `TimePickerEntryMode.dial`  
      - Circular dial (default) — user pointer ghuma ke time set karta hai.
    - `TimePickerEntryMode.input`  
      - User direct number type karta hai (input box).

### Example Code

```dart
ElevatedButton(
  onPressed: () async {
    TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input, // Ya .dial
    );
    if (timePicked != null) {
      print("Time: ${timePicked.hour}:${timePicked.minute}");
    }
  },
  child: Text("Show Time Picker"),
)
```

---

## 📝 Tips & Notes

- **context** hamesha wahi hona chahiye jahan se aap dialog open kar rahe ho (widget tree me).
- **firstDate**, **lastDate** se user ki date selection limit kar sakte ho (e.g. DOB, booking window).
- **initialEntryMode** interview me puchha ja sakta hai — input mode direct number ke liye aur dial mode clock dial ke liye hai.
- Dialog cancel karne par value `null` aati hai, isliye null check zaroor karein.
- UI me selected date/time dikhane ke liye state variable me store karein.

---

## 🔗 Useful Links

- [showDatePicker doc](https://api.flutter.dev/flutter/material/showDatePicker.html)
- [showTimePicker doc](https://api.flutter.dev/flutter/material/showTimePicker.html)
- [Flutter Date/Time Picker Cookbook](https://docs.flutter.dev/cookbook/forms/pick-date)

---

**Interview Prep:**  
- context kya hai?  
- initialDate, firstDate, lastDate ka use?  
- Time picker me Dial aur Input mode kya hai?  
- Null kaise handle karein?
