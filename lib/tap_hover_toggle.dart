library tap_hover_toggle;

import 'package:flutter/material.dart';

class TapHoverToggle extends StatefulWidget{
  final Widget Function(bool isHoverOrTap) builder;
  final void Function()? onClick;
  const TapHoverToggle({super.key, required this.builder, this.onClick});

  @override
  State<StatefulWidget> createState() => TapHoverToggleState();
}

class TapHoverToggleState extends State<TapHoverToggle>{

  bool isHoverOrTap = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTapUp: (event){
        setState((){
          isHoverOrTap = false;
        });
      },
      onTapDown: (event){
        setState((){
          isHoverOrTap = true;
        });
      },
      onTapCancel: (){
        setState((){
          isHoverOrTap = false;
        });
      },
      child: MouseRegion(
          onEnter: (event){
            setState((){
              isHoverOrTap = true;
            });
          },
          onExit: (event){
            setState((){
              isHoverOrTap = false;
            });
          },
          child: widget.builder(isHoverOrTap)
      ),
    );
  }
}