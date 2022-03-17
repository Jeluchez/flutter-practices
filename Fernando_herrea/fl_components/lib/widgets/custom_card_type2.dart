
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   

  final String imageUrl;
  final String? imageText;

  const CustomCardType2({Key? key, required this.imageUrl, this.imageText}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(15) 
      ),
      elevation: 10,
      child: Column(
        children:  [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif') ,
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if(imageText != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.fromLTRB(0,10,20,10),
              child:  Text(imageText!),
            )
          
        ]
      ),
    );
  }
}