library tap_hover_toggle;

import 'package:flutter/material.dart';

class TapHoverToggle extends StatefulWidget {
  ///builder function which return widget
  final Widget Function(bool isHoverOrTap) builder;
  final void Function()? onClick;
  const TapHoverToggle({super.key, required this.builder, this.onClick});

  @override
  State<StatefulWidget> createState() => TapHoverToggleState();
}

class TapHoverToggleState extends State<TapHoverToggle> {
  ///initialize the bool status
  bool isHoverOrTap = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,

      ///trigger when tap-in release
      onTapUp: (event) {
        setState(() {
          isHoverOrTap = false;
        });
      },

      ///trigger when tap-in
      onTapDown: (event) {
        setState(() {
          isHoverOrTap = true;
        });
      },

      ///trigger when tap in end
      onTapCancel: () {
        setState(() {
          isHoverOrTap = false;
        });
      },
      child: MouseRegion(

          ///trigger when cursor enter the widget zone
          onEnter: (event) {
            setState(() {
              isHoverOrTap = true;
            });
          },

          ///trigger when cursor go outside the widget zone
          onExit: (event) {
            setState(() {
              isHoverOrTap = false;
            });
          },
          child: widget.builder(isHoverOrTap)),
    );
  }
}
