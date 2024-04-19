import 'package:flutter/material.dart';

class Cart_Screen extends StatelessWidget {
  const  Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 30, 41),
   
        body: Padding(
          padding: EdgeInsets.only(left: 150),
          child: Row(children: [
            Icon(Icons.arrow_back_ios,color: Colors.grey,),
            SizedBox(width: 20,),
            Text('My',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                Text('cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color.fromARGB(255, 123, 19, 61)),),
          ],),
        ));
  }
}
