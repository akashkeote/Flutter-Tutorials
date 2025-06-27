# flutter_50_date_and_time_intl

## Notes: Date and Time Formatting in Flutter using intl

### Why use intl package?
- Dart ka `DateTime.now()` sirf raw date/time deta hai (e.g., `2025-06-27 17:05:23.123456`).
- intl ka `DateFormat` aapko date/time ko apne format aur local language (localization) me dikhane ki facility deta hai.

### intl dependency kaise add karein?
```yaml
dependencies:
  intl: ^0.19.0
```

### Kaise import karein?
```dart
import 'package:intl/intl.dart';
```

### Basic usage: Format date and time
```dart
DateTime now = DateTime.now();
String formattedDate = DateFormat('dd/MM/yyyy – kk:mm').format(now);
print(formattedDate); // Output: e.g. 27/06/2025 – 17:05
```

### Common formats examples
```dart
// Only date
print(DateFormat('dd-MM-yyyy').format(now)); // 27-06-2025

// Full date in English
print(DateFormat('EEEE, MMM d, y').format(now)); // Friday, Jun 27, 2025

// Only time
print(DateFormat('jm').format(now)); // 5:05 PM
```

### Localization (Hindi, English, etc.)
```dart
print(DateFormat.yMMMEd('hi').format(now)); // शुक्रवार, 27 जून 2025
print(DateFormat.yMMMEd('en').format(now)); // Fri, Jun 27, 2025
```

### Quick Reference

| Format String       | Output Example           | Description     |
|---------------------|-------------------------|-----------------|
| `'dd/MM/yyyy'`      | `27/06/2025`            | Day/Month/Year  |
| `'yMMMEd'`          | `Fri, Jun 27, 2025`     | Locale-based    |
| `'jm'`              | `5:05 PM`               | Time (12-hr)    |

### Useful Links
- [intl package pub.dev](https://pub.dev/packages/intl)
- [Flutter date formatting cookbook](https://docs.flutter.dev/cookbook/dates/formatting-dates)
- [YouTube Video Tutorial](https://www.youtube.com/watch?v=PtNOp4MQ32g&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E&index=53)

---

**Tip:**  
Jab bhi date ya time ko user-facing UI me dikhana ho, toh hamesha intl ka use karke format karo. Isse app professional dikhegi aur localization bhi easily ho jayega!
