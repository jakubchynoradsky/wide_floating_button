# Wide floating button

<img width="250px" alt="Example" src="https://raw.githubusercontent.com/jakubchynoradsky/wide_floating_button/main/Screenshots/sc_example.jpg"/>

## Simple usage
1. Download class `FloatingButton` and import it.
```Dart
import 'FloatingButton.dart';
```
2. Create Scaffold with property `floatingActionButton` and as value use FloatingButton widget (onTap and child required).
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

| :exclamation:  Parrent of `FloatingButton` must be `floatingActionButton(Scaffold)`.  |
|---------------------------------------------------------------------------------------|

<br>

## Properties

| Name          | Type          | Default | Description  |
| ------------- |:-------------:| :-------------:| :-----|
| `child*`        | Widget        |  null       |  Widget that will be inside button.  |
| `onTap*`        | Function      |  null       |  What happens on button tap.  |
| `onLongPress`   | Function      |  null       |  What happens on button long press.  |
| `onHighlightChanged` | Function |  null       |  What happens on highlight change.  |
| `autofocus`     | bool          |  false      |  True if this widget will be selected as the initial focus.  |
| `backgroundColor` | Color       |  Color.blue |  Background color of button.  |
| `borderRadius`  | double        |  10         |  How much do you want corners to be rounded. (0 = sharp corners)   |
| `height`        | double        |  55         |  Height of button.   |
