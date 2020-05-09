
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: CounterApp(),
));

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  int colorChanger =0;
  addCount(){
    setState(() {
      counter++;
    });
  }
  lowerCount(){
    setState(() {
      counter--;
    });
  }
  colorChangeLower(){
    if(counter==0){
      setState(() {
        colorChanger=0;
      });
    }
    if (counter< 0){
      setState(() {
        colorChanger = 1;
      });
    }
  }
  colorChangeAdd(){
    if(counter==0){
      setState(() {
        colorChanger=0;
      });
    }
    if (counter > 0){
      setState(() {
        colorChanger =2;
      });
    }
  }
  List <Color> counterColors = [
    Colors.yellow[600],
    Colors.red,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
            "Counter App"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  child: Text('$counter',
                  style: TextStyle(
                    fontSize: 40,
                    color: counterColors[colorChanger],
                  )),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                 lowerCount();
                  colorChangeLower();
                },
                 color: Colors.grey[800],
                child: Text('Lower Count',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  addCount();
                  colorChangeAdd();
                },
                color: Colors.grey[800],
                child: Text('Add Count',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
