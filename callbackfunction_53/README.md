# 🔁 Callback Functions in Flutter (Simple to Class Method)

Flutter mein callback function ek bahut hi important concept hai — chaahe button dabana ho, toggle switch, ya custom widget create karna ho. Yahan humne sasta se lekar professional class method callback tak dono cover kiye hain.

---

## 🔥 Basic Callback — Anonymous Function

Sabse seedha example: Button ke onPressed mein ek anonymous function pass kar diya.

```dart
ElevatedButton(
  onPressed: () {
    print('Clicked'); // 👈 Callback triggered on press
  },
  child: Text("Hi", style: TextStyle(fontSize: 25)),
)
```

### 🔍 Explanation

| Part          | Description                          |
|---------------|--------------------------------------|
| onPressed     | Callback property of ElevatedButton   |
| () { ... }    | Anonymous function (naam nahi diya)  |
| print('...')  | Jab button dabega, yeh chalega       |

**Real life use:**  
- print() ki jagah navigation, API call, dialog, ya kisi variable ko update kar sakte ho.

---

## 🛠️ Named Function as Callback

Anonymous function ke bajaye, tum ek function define kar ke usko bhi pass kar sakte ho.

```dart
void handleTap() {
  print("Clicked from named function");
}

ElevatedButton(
  onPressed: handleTap, // 👈 No brackets!
  child: Text("Tap Me"),
)
```
> `onPressed: handleTap()` likhoge toh galat — woh turant call ho jayega!

---

## 🧩 Callback as a Class Method (Professional Approach)

Agar tumhare paas ek class hai, toh callback method ko class ke andar define karo aur use karo.

```dart
class _MyHomePageState extends State<MyHomePage> {
  void callback() {
    print('Button Clicked (from class method)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ElevatedButton(
        onPressed: () {
          callback(); // 👈 Class method call as callback
        },
        child: Text("hi", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
```

### 🧠 What’s Happening?

| Line                 | Meaning                                                      |
|----------------------|-------------------------------------------------------------|
| void callback()      | Function class ke andar, reuse bhi kar sakte ho              |
| onPressed: () { ... }| Button press par callback() wala function chalega            |

---

## ✅ Why Use Class Methods as Callbacks?
- Code clean aur reusable hota hai
- Test/manage karna aasan
- build() method clutter-free rehta hai

### 🔁 Alternate (Direct Pass, only single-line method)
```dart
ElevatedButton(
  onPressed: callback, // 👈 No brackets!
  child: Text("hi"),
)
```

---

## ⚠️ Callback Gotchas (Common Mistakes)

| Mistake                 | Why it's Wrong                          |
|-------------------------|-----------------------------------------|
| onPressed: handleTap()  | ❌ Ye function turant call ho jayega    |
| onPressed: handleTap    | ✅ Ye reference pass karega, sahi hai   |

---

## 📦 Callback Summary

| Concept           | Meaning                                      |
|-------------------|----------------------------------------------|
| Callback          | Function jo baad me call hoti hai            |
| Anonymous func    | () {} — bina naam ki function                |
| Named callback    | Function pehle define, phir reference pass   |
| Class method      | Class ke andar likha function                |

---

## 📚 Next Steps

- Custom widget me callback kaise pass karein
- VoidCallback ya Function() ka use
- Parent-child communication via callback
- Stateful examples (toggle, input, etc.)

Agar next level pe jaana hai toh custom widgets + callback ya stateful logic bhi bana ke dikha sakta hoon!  
**Bhai, ab tu callback master! 💪**
