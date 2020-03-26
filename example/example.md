### How to use
‘‘‘
drag right to open drawer and drag left to close drawer,
width of draggable area is drawWidth in ModernDrawer widget
’’’

### Example
```
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: ModernDrawer(
          drawWidth: size.width * 0.5,
          top: size.height * 0.05,
          bottom: size.height * 0.05,
          swipableAreaWidth: size.width * 0.5,
          backgroundWidget: Container(
            color: Colors.black.withOpacity(0.2),
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.center,
              width: size.width * 0.48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Button",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Button",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Button",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Button",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          foregroundWidget: Container(
            color: Colors.lightBlue,
            width: size.width,
            height: size.height,
          ),
        ),
    );
  }
}
```