import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls=[
      'assets/derma3.jpg',
      'assets/dermacarousel2.jpg'

    ];
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 24, 30, 41),
       appBar: AppBar(backgroundColor:const Color.fromARGB(255, 24, 30, 41) ,
        actions: const [
        Icon(Icons.hdr_auto,color: Color.fromARGB(255, 111, 110, 110),size: 40,)
       ],
       leading: const Icon(Icons.menu_sharp,color: Color.fromARGB(255, 111, 110, 110),size: 40,),),
       body: 
      Column(
        children: [
          // Text('Hello',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          const Row(children: [
            Text('Welcome to',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(width: 10,),
                       Text('DermaCare',style: TextStyle(color: Color.fromARGB(255, 123, 19, 61),fontWeight: FontWeight.bold,fontSize: 20),),
                    
          ],),
          CarouselSlider.builder(itemCount: imageUrls.length,
           itemBuilder: (BuildContext context, index, realIndex) {
            return Image.asset(
              imageUrls[index],
              fit: BoxFit.cover,
              width: 330,
            );
             
           },
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16/9,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            )),
            const SizedBox(height: 20,),
            Row(
              children: [
                circleavatar(image: 'assets/derma3.jpg'),
                const SizedBox(width: 10,),
                circleavatar(image: 'assets/dermacarousel2.jpg'),
                const SizedBox(width: 10,),
                circleavatar(image: 'assets/dermacarousel.jpg'),
                const SizedBox(width: 10,),
                circleavatar(image: 'assets/skincare.jpg')

                
              ],
            )
         
        ],
        
      ),
      
        
        
    );
    
  }

  CircleAvatar circleavatar(
    {required String image}
  ) => CircleAvatar(radius: 40,backgroundImage:AssetImage(image));
}