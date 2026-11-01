import 'package:adv_basics/questions_screens.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:adv_basics/data/questions.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz > createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
   List <String> selectedAnswers= [];
  var activeScreen = "Start Screen";
 void switchScreen() {
   setState(() {
     activeScreen ="questions-screen";
   });
 }

 void chooseAnswer(String answer){
   selectedAnswers.add(answer);
   if(selectedAnswers.length == questions.length ){
    setState(() {
      
      activeScreen = "result-Screen";
     
    });
     
   }
 }

 void restartQuiz() {
  setState(() {
    selectedAnswers = [];
    activeScreen = "Start Screen"; // Reset to start screen
  });
}

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen'){
    screenWidget =  QuestionsScreen(
      onselectedAnswer: chooseAnswer,
      );

    }

    if (activeScreen == 'result-Screen'){
      screenWidget =  ResultScreen(chooseAnswer: selectedAnswers,
      onRestart: restartQuiz,
      );
    }

    return MaterialApp(
       theme: ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
  ),
     home: Scaffold(
       body: Container (
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 41, 113, 172), Colors.purple]
          ),
        ),
        child: screenWidget,
        
       ),
     ),
   );
  }
}
