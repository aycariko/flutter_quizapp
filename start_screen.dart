import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  //constructor tanımlamamız gerekn durumlar 
// sınıfın değişkenlerini başlatmak
  const StartScreen(this.startQuiz,{super.key});
  @override
  // build methodu zaten stateless widgetlarda kullanılır
  //startscreen sınıfında kendi ihtiyaçlarımız için kullanıcaz 
final void Function() startQuiz;
Widget build(BuildContext context){
// build methodu return döndürmek zorundadır 
  return  Center (
    child : Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Image.asset(
          "assets/quiz.png",
          width: 300,
          
          ),
          const SizedBox(height: 20),
            Text(
              'Welcome to the Quiz!',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(200, 20),
                    const Offset(100, 20),
                    <Color>[  const Color.fromARGB(255, 116, 162, 103),
                    const Color.fromARGB(255, 3, 2, 7),
                    ],
                  )
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {

                startQuiz();

              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 5, 87, 86),
              ),
              icon: const Icon(Icons.play_arrow, size: 30),
              label: const Text("Start Quiz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              
            ),

          ],
      
      
    )
    
    
     );
}
}