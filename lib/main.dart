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
            child: Column(
              children: [
                _customContainer(
                  number: 8,
                  color: Colors.red,
                ),
                  Expanded(
                      flex: 5,
                      child: Row(
                         children: [
                           _customContainer(
                             number: 5,
                             color: Colors.indigo,
                           ),
                           _customContainer(
                             number: 3,
                             color: Colors.purple,
                           ),
                         ],
                      )
                  )
          ],
         ),
       ),
      ),
    );
  }
}

Widget _customContainer({
  required int number,
  required Color color}){
  return Expanded(
      flex: number,
      child:Container(
      constraints: BoxConstraints.expand(),
      color: color,
      child: Center(
      child: Text('${number}',
      style: TextStyle(
      color: Colors.white,
      fontSize: 30
          ),
        ),
       ),
      ),
   );
}