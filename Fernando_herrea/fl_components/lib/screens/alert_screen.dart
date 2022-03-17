import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialog(BuildContext context) {
    
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (contex){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          elevation: 5,
          title: const Text('Texto'),
          content:  Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20,),
              FlutterLogo(size: 30,)
            ]
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert', style: TextStyle(fontSize: 20),),
          onPressed: () => displayDialog(context)
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed:() => Navigator.pop(context)
        
      )
    );
  }

  
}