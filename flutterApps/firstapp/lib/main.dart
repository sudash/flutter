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
        child: StyleText( Colors.lime, 40, 'Hello Flutter World!'),
        
      ),
    );
  }
}


// Widget for the Text
class StyleText extends StatelessWidget{
  
  final Color color ; 
  final double fontSize;
  final String message;
  
  const StyleText(this.color,this.message,this.fontSize, {super.key});
  
  @override
  Widget build(context){
    return Text(
          message,
          style: TextStyle(color: color, fontSize: fontSize),
        );
  }
}
