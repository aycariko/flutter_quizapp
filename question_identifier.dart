import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {


  const QuestionIdentifier({super.key,
    required this.questionIndex,
    required this.isCorrect,
  });
  final int questionIndex;
  final bool isCorrect;
 
  @override
  Widget build(BuildContext context) {
    final questionnumber = questionIndex + 1;
    return Container(
         width: 30,
         height: 30,
         alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isCorrect ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(105),
          ),
          child: Text(
            questionnumber.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),


    );
  }}
    

