import 'package:flutter/material.dart';
import 'package:module_5/main.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Practice",
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
    );
  }
}


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Hemo Screen"),
        ),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
            }, 
            child: Text("second Screen"))
          ],
        ),
    );
  }
}


class SeconScreen extends StatelessWidget {
  const SeconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){
             Navigator.pop(context);
            }, 
            child: Text("Previous screen")), 
            
            SizedBox(height: 30,),
            
            ElevatedButton(onPressed: (){
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>thirdScreen()),(route)=> false);
            }, 
            child: Text("Third Screen")),//jekan taka asca sekane fire jawa er kaj
        ],
      ),
    );
  }
}



class thirdScreen extends StatelessWidget {
  const thirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Third Screen"),
      ),


    );
  }
}