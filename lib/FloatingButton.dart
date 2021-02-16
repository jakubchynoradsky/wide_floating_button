import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double borderRadius;
  final double height;
  final Function onTap;
  final Function onLongPress;
  final Function onHighlightChanged;
  final bool autofocus;

  const FloatingButton(
    {
      Key key,
      @required this.child,
      @required this.onTap,
      this.onLongPress,
      this.onHighlightChanged,
      this.autofocus = false,
      this.height = 55,
      this.backgroundColor = Colors.blue,
      this.borderRadius = 10
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(this.borderRadius),
      child: Container(
        child: new Material(
          child: new InkWell(
            autofocus: this.autofocus,
            onHighlightChanged: this.onHighlightChanged,
            onTap: this.onTap,
            onLongPress: this.onLongPress,
            child: new Container(
              height: this.height,
              width: width - 32,
              child: Center(child: this.child),
            ),
          ),
          color: Colors.transparent,
        ),
        color: this.backgroundColor,
      ),
    );
  }
}