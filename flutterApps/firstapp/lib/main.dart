import 'package:flutter/material.dart';

void main() {
  print('first mobile app using flutter');

  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  /// Default Constructor funtion 
  const GradientContainer({super.key});
  
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 100, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText( Colors.lime),
        
      ),
    );
  }
}


// Widget for the Text
class StyleText extends StatelessWidget{
  
  final Color color ; 
  
  const StyleText(this.color, {super.key});
  
  @override
  Widget build(context){
    return Text(
          'Hello Flutter World From Custom Widget!',
          style: TextStyle(color: color, fontSize: 30),
        );
  }
}
