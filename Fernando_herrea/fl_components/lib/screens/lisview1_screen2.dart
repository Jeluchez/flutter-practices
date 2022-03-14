import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const['Megaman','Metal Gear','Super Smash','Final fFantasy'];
  
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
        elevation:0,
      ),
      body: ListView.separated(
        itemBuilder:(context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.warning,color:Colors.indigo),
            onTap: (){
              final game = options[i];
            }
        ), 
        separatorBuilder: (_,__) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}