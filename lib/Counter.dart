import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int Counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
    backgroundColor: Colors.tealAccent,
    title: Text('Counter',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
     centerTitle: true,),
     body: Center(child: Container(
      height: 320,
      width: 320,
      decoration: BoxDecoration(color: Colors.lightBlueAccent,
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Counter=$Counter',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,),),
      SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [FloatingActionButton(onPressed: (){
        Counter++;
        setState(() {

        });

      },
        backgroundColor: Colors.brown,child: Icon(Icons.add,color: Colors.white,),
      ),
      SizedBox(width: 10,),
      FloatingActionButton(onPressed:(){
        if(Counter>0){
          Counter--;
        }
        setState(() {

        });
      },
        backgroundColor: Colors.brown,child: Icon(Icons.remove_circle_sharp,color: Colors.white,),
      ),
SizedBox(width: 10,),
        FloatingActionButton(onPressed: (){
          Counter=0;
          setState(() {

          });
        },
          backgroundColor: Colors.brown,child: Icon(Icons.refresh_sharp,color: Colors.white,),
        )


      ],
      )
    ],
    ),
    ),
    )   );
  }
}

