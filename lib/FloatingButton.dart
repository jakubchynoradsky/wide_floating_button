import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  Widget child;
  Color backgroundColor;
  double borderRadius;
  double height;
  Function onTap;
  Function onLongPress;
  Function onHighlightChanged;
  bool autofocus;

  FloatingButton(
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
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: Container(
        child: new Material(
          child: new InkWell(
            autofocus: widget.autofocus,
            onHighlightChanged: widget.onHighlightChanged,
            onTap: widget.onTap,
            onLongPress: widget.onLongPress,
            child: new Container(
              height: widget.height,
              width: width - 30,
              child: Center(child: widget.child),
            ),
          ),
          color: Colors.transparent,
        ),
        color: widget.backgroundColor,
      ),
    );
  }
}