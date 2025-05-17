import 'package:dhaman_e_services/controller/home_controller.dart';
import 'package:dhaman_e_services/screens/home/item_detail.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
         scrollDirection: Axis.horizontal,
       itemCount: HomeController.images.length,
         itemBuilder: (context,index){
         return InkWell(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemDetail(
               title: HomeController.titles[index],
               imagePath: HomeController.images[index],
             )));
           },
           child: Container(
             height: 100,
             width: 100,
             decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage(HomeController.images[index]))
             ),
           ),
         );
         })     ,
   );
  }
}
