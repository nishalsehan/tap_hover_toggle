library tap_hover_toggle;

import 'package:flutter/material.dart';

class TapHoverToggle extends StatefulWidget{
  final Widget Function(bool) builder;
  final void Function()? onClick;
  const TapHoverToggle({super.key, required this.builder, this.onClick});

  @override
  State<StatefulWidget> createState() => TapHoverToggleState();
}

class TapHoverToggleState extends State<TapHoverToggle>{

  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      onTapUp: (event){
        setState((){
          hover = false;
        });
      },
      onTapDown: (event){
        setState((){
          hover = true;
        });
      },
      onTapCancel: (){
        setState((){
          hover = false;
        });
      },
      child: MouseRegion(
          onEnter: (event){
            setState((){
              hover = true;
            });
          },
          onExit: (event){
            setState((){
              hover = false;
            });
          },
          child: widget.builder(hover)
      ),
    );
  }
}