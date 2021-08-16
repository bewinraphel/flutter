import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate(){
    if(formkey.currentState.validate()){
      print("validate");
    }else{
      print("not validate");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Kindacode.com',
          ),
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
           key: formkey,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "email",
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "required";
                        }else
                        return null;
                      },
                    ),
                    ),
                  
                  Padding(
                    padding: EdgeInsets.all(
                      25.0,
                    ),
                    child: ElevatedButton(
                        onPressed: validate, child: Text("signing")),
                  ),
                ],
              ),
            )));
  }
}
