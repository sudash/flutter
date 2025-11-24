import 'package:flutter/material.dart';

void main() {
  print('first mobile app using flutter');

  runApp(
     MaterialApp(
       home: Scaffold(
          /// body: GradientContainer(Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 150, 7, 98) ),
         body: GradientContainer.purple(),
       ),
     ),
  );
}

class GradientContainer extends StatelessWidget {
  /// Default Constructor funtion 
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purple({super.key}): 
    color1 = Colors.deepPurple,
    color2 = Colors.pink;
  
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
      child:  Center(
        /// child: StyleText( Colors.lime,  'Hello Flutter World!', 50),
        
        // loading a dice image from internet as using dartpad. 
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS41uC6K7LYuOabuncZer2fTt4hb2I0bENWdw&s", width: 100)
        
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
