import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultScreen extends StatelessWidget {
const ResultScreen({super.key, required this.chooseAnswer, required this.onRestart
});
final void Function() onRestart;
final List<String>chooseAnswer;
// map generic type oluşturur
List <Map<String,Object >> getSummaryData(){
final List<Map<String,Object>> summaryData = [];

for(var i = 0; i < chooseAnswer.length; i++){
  
  summaryData.add({
    'question_index': i,
    'question': questions[i].text,
    'correct_Answer': questions[i].answer[0],
    'user_Answer': chooseAnswer[i],
  });
}

return summaryData;
}


  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions
    .length;
    final numCorrectQuestions = summaryData.where((data) {
  return data['user_answer'] == data['correct_answer']; // Ensure proper comparison
}).length;


    return SizedBox(
      width :double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child :  Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered  $numCorrectQuestions out of $numTotalQuestions correctly",),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed:onRestart,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 78, 24, 87),
              ),

              icon : const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            )
          ],
          
          
          
          ),
      ),
    );
  }
}