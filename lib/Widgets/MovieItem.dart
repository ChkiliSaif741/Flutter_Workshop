import 'package:flutter/material.dart';

class Movieitem extends StatelessWidget {
  const Movieitem({super.key,required this.image,required this.title});
  final String image;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset("assets/images/$image", width: 150,height: 90,),
            SizedBox(width: 20),
            Text(title,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),),
            Spacer(),
            Icon(Icons.delete,color: Colors.red,),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}