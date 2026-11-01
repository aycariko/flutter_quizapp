import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/questions.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onselectedAnswer,});
  final void Function (String answer) onselectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
 var currentquestionIndex = 0;

 void answerQuestion(String selectedAnswers) {
    widget.onselectedAnswer('answer');
setState(() {
    currentquestionIndex = currentquestionIndex + 1;
  
});

 }
  @override
  Widget build(context) {
   final currentQuestion = questions[currentquestionIndex];
  
    return  SizedBox(
      width :double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children:  [
           Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 95, 27, 104),
              ),
            ),
            textAlign: TextAlign.center,
            ),
            
          const SizedBox(height: 30),
           
          ...currentQuestion.getShuffledAnswers().map((answer){
            return AnswerButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              }
              
            );
          })
           
        ],),
      ),
    );
  }
}
