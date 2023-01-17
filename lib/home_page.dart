import 'package:flutter/material.dart';

class HomePage  extends StatefulWidget {
  HomePage ({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeep =  [
    Icon(Icons.check, color: Colors.green,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff001d3d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          
          const Expanded(
            flex: 9,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "¿Los gatos son animales que tienen una gran actitud ante los ratones?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.2, color: Colors.white),
                  
                ),
              )
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  scoreKeep.add(
                    Icon(Icons.check, color: Colors.green,), 
                  );
                  
                });
              }, 
              color: const Color(0xff00b4d8),
              child: const Text("Verdadero"),
            )
          ),

          const SizedBox(height: 15.0,),
          Expanded(
            child: MaterialButton(
              onPressed: (){}, 
              color:const Color(0xffef476f),
              child:  const Text("Falso"),
            )
          ),
          Row(
            children: scoreKeep
          )
        ],
      )
    );
  }
}