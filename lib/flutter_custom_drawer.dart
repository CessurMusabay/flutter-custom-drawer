library flutter_custom_drawer;
import 'package:flutter/material.dart';



class ModernDrawer extends StatefulWidget{
  Color backgroundColor;
  double drawWidth;
  double swipableAreaWidth;
  Widget backgroundWidget;
  Widget foregroundWidget;
  double top;
  double bottom;
  ModernDrawer({
    @required this.drawWidth
    ,@required this.backgroundWidget
    ,@required this.foregroundWidget
    ,@required this.swipableAreaWidth
    ,this.top
    ,this.bottom
    ,this.backgroundColor});
  createState() => _ModernDrawerState();
}


class _ModernDrawerState extends State<ModernDrawer>{
  bool opened = false;
  Widget build(BuildContext context){
    var mQuery  = MediaQuery.of(context);
    return Container(
      color: widget.backgroundColor == null ? Colors.white : widget.backgroundColor,
      child: Stack(
        children: <Widget>[
          widget.backgroundWidget,
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            child: widget.foregroundWidget,
            right: opened ?  widget.drawWidth : 0,
            top: opened ? widget.top : 0,
            bottom: opened ? widget.bottom : 0,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onHorizontalDragEnd: (a){
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
              child: Row(
                children: <Widget>[
                  opened ?
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        opened = false;
                      });
                    },
                    child: Container(
                      height: mQuery.size.height,
                      width: mQuery.size.width - widget.swipableAreaWidth,
                      color: Colors.transparent,
                    ),
                  ):SizedBox(width: 0,height: 0,),
                  Container(
                    height: mQuery.size.height,
                    width: widget.swipableAreaWidth,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}