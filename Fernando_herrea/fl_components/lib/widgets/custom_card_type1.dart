
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
   
  const CustomCardType1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.app_blocking),
            title: Text('I am a title'),
            subtitle: Text('Qui sit ipsum consectetur exercitation cupidatat consectetur non laborum sit. Et quis exercitation consectetur aliqua esse aliquip consequat fugiat.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right:6.0),
            child: Row(  
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ]
        )
    );
  }
}