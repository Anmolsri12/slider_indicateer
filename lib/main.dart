import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double valu1=0.0;
  void onChanged(double value)=>setState(() => valu1=value
    
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true  ,
        title: Text("Slider And indiacater"),
      ),
      
      body: Scaffold(
        appBar: AppBar(
          title: Text("It Is A slider"),

        ),
        body: Container(
          padding: EdgeInsets.all(50.6),
          child: Center(
            child: Column(
              children: [Slider(value :valu1, onChanged: onChanged),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: LinearProgressIndicator(value: valu1,valueColor:AlwaysStoppedAnimation<Color>(Colors.red)
                  )
                )
              ],
            ),
          ),
        ),),
    );
  }
}