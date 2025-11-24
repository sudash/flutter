import 'package:flutter/material.dart';

void main() {
  print('first mobile app using flutter');

  runApp(
     MaterialApp(
       home: Scaffold(
          body: GradientContainer(Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 150, 7, 98) ),
       ),
     ),
  );
}

class GradientContainer extends StatelessWidget {
  /// Default Constructor funtion 
  const GradientContainer(this.color1, this.color2, {super.key});
  
  final Color color1; 
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText( Colors.lime,  'Hello Flutter World!', 50),
        
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
