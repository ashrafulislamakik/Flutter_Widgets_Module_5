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
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.blue)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink
          )
        )
      ),


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
          backgroundColor: Colors.lightGreen,
            title: Align(
              alignment: Alignment.center,
              child: Text("Home Screen")),
        ),

        body: Center(
          child: Column(
            children: [
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
          
          
          
          
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen")),
          
              SizedBox(height: 5,),
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen")),
          
              SizedBox(height: 5,),
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen"))
            ],
          ),
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
        backgroundColor: Colors.lightGreen,
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
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>thirdScreen()),);
            }, 
            child: Text("Third Screen")),
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