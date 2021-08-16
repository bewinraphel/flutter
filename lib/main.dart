import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        
        child: Padding(padding: EdgeInsets.all(15.0),
        
         child:SizedBox(
          height: 700,
          width:430,
          child: Column(children: [
            Text("algorthim",
             style:TextStyle(
               fontSize: 20,
               color: Colors.blueGrey
             )
            ),
            SizedBox(height: 10,),
           Row(
             children: [
               SizedBox(
                 width: 10,),
                 Text("selec the check box"),
                 SizedBox(
                   width: 10,),
                   Checkbox(value: this.value, onChanged: (bool value){
                        setState(() {
                          
                          this.value=value;
                        })

                   })
             
               
             ],
           )

          ],),
        )
        ),
       
      ),
    );
  }
}
