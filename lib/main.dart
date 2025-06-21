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
              child: Text("second Screen")),

              SizedBox(height: 10,),

              CircleAvatar(
                backgroundColor: Colors.black54,
                radius: 40,
                backgroundImage: NetworkImage("https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-6/455500123_807672808210237_6760134894964916096_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHTsA7l-9DQ_3QIHsEeTT5WKFLMMlmtzTgoUswyWa3NONtk-HWZt3Fzlb8_UjdW_sETIufQmHfR82ynKhvo_brq&_nc_ohc=EyvlhPfR1WIQ7kNvwF7Rbqk&_nc_oc=Admn_9xmW3qIQyNv3cT0JuGLLb8fFKLmp-HcRd2yiPZ70hb0_kjZRRufHzSI6JRzYtw&_nc_zt=23&_nc_ht=scontent.fdac138-1.fna&_nc_gid=Z7L2G0AbYSxd-kGPMJfdNQ&oh=00_AfPCZK6tHqBgVIUwKjX9ACdt0kGkps7YscPJXHU0JJ9obA&oe=685C82A0"),

              )
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
        title: Align(
          alignment: Alignment.center,
          child: Text("Second Screen")),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5,),
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
        backgroundColor: Colors.pink,
        title: Align(
          alignment: Alignment.center,
          child: Text(" Third Screen")),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text(" I Am Not Complete")),
            )
          ],
        ),
      ),

    );
  }
}