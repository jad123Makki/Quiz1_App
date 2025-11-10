import 'package:flutter/material.dart';

class Happy extends StatefulWidget {
  const Happy({super.key});

  @override
  State<Happy> createState() {
    return _HappyState();
  }
}
  class _HappyState extends State<Happy>{
String choice= "❓";

int happy=0;
int tired=0;
int angry=0;


void happy(){

setState(() {
  choice="😊";
  happy++;
  });
}
void tired(){
  setState(() {
    choice="😴";
    tired++:
  });
  void angry(){
  setState(() {
    choice="😡";
    angry++;
  });
}
}


@override
Widget build(BuildContext cotext)
{return Scaffold(backgroundColor: Colors.blue,
body:Column(mainAxisAlignment:MainAxisAlignment.center ,
children:[
  Center(child:Text('how do you feel today?', style : TextStyle(fontSize: 50)),
  SizedBox(height: 20),
  child:Text('$choice',style:TextStyle(fontSize: 50)),
   SizedBox(height: 20),
   Row(mainAxisAlignment: MainAxisAlignment.center ,
   children: [ElevatedButton(onPressed: happy, child: Text())],
   
   )
],

)
)


)
}



  }



}
