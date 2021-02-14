# Wide floating button

<img width="250px" alt="Example" src="https://raw.githubusercontent.com/jakubchynoradsky/wide_floating_button/main/Screenshots/sc_example.jpg"/>

## Simple usage
1. Download class `FloatingButton` and import it.
```Dart
import 'FloatingButton.dart';
```
2. Create Scaffold with `floatingActionButton` and as parametr use FloatingButton widget (onTap and child required).
```Dart
Scaffold(
  appBar: AppBar(
    title: Text('Wide floating button app'),
  ),
  body: Center(),
  floatingActionButton: FloatingButton(
    onTap: (){
      print('Tap');
    },
    child: Text('Press me!', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
  ),
);
```
I used Text as a child widget, but you can use anything.

<br>
