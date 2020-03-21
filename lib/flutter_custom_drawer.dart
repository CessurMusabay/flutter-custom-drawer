library flutter_custom_drawer;
import 'package:flutter/material.dart';



class ModernDrawer extends StatefulWidget{
  Color backgroundColor;
  double drawWidth;
  Widget backgroundWidget;
  Widget foregroundWidget;
  double topAndBottom;
  ModernDrawer({
    @required this.drawWidth
    ,@required this.backgroundWidget
    ,@required this.foregroundWidget
    ,this.topAndBottom
    ,this.backgroundColor});
  createState() => _ModernDrawerState();
}


class _ModernDrawerState extends State<ModernDrawer>{
  bool opened = false;
  Widget build(BuildContext context){
    return Container(
      color: widget.backgroundColor == null ? Colors.white : widget.backgroundColor,
      child: Stack(
        children: <Widget>[
          widget.backgroundWidget,
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            child: widget.foregroundWidget,
            right: opened ?  widget.drawWidth : 0,
            top: opened ? widget.topAndBottom : 0,
            bottom: opened ? widget.topAndBottom : 0,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onHorizontalDragEnd: (a){
                print(opened);
                if(a.primaryVelocity.toDouble() < 0){
                  setState(() {
                    opened = true;
                  });
                }
                else if(a.primaryVelocity.toDouble() > 0){
                  setState(() {
                    opened = false;
                  });
                }
              },
              child: Container(
                height: 100000,
                width: widget.drawWidth,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}