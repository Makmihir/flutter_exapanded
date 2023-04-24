import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Row(
              children: [
                Container(

                  padding: EdgeInsets.all(20),
                  color: Colors.lightBlue,
                  child: Text('1'),
                ),
                Expanded(flex: 2,
                  child: Container(
                   // width: 70,
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child: Text('2'),
                  ),
                ),
                Expanded(flex: 8,
                  child: Container(
                   // width: 100,
                    padding: EdgeInsets.all(20),
                    color: Colors.yellow,
                    child: Text('3'),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
