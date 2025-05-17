import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String title ;
  final String imagePath;
  const ItemDetail({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title) ,
      ),
      body: Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: NetworkImage(imagePath))
          ),
      ),
    );
  }
}
