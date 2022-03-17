import 'package:fl_components/widgets/custom_card_type2.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 5,),
          CustomCardType2(
            imageUrl: 'https://images.idgesg.net/images/article/2020/05/home-office-ideal-setup-angle-100843210-large.jpg?auto=webp&quality=85,70',
            imageText: 'Mac set up',),
          SizedBox(height: 5,),
          CustomCardType2(
            imageUrl: 'https://cdn.arstechnica.net/wp-content/uploads/2020/09/Ars-WFH-Office-Setup-Vari-Standing-Desk-4-800x534.jpg',
            imageText: 'General set up',),
          SizedBox(height: 5,),
          CustomCardType2(
            imageUrl: 'https://www.remotecompany.com/assets/blog/cover/remote-office-cover.jpg'),
        ],
      )
    );
  }
}
