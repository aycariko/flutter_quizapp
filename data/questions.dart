import 'package:adv_basics/models/quiz_question.dart';

const questions = [

  //apı ile chatgptye bağlanmalı 
  // sonrasıonda bir yere yönlendirmeli veya kişi kendi aksiyon almalı 
  QuizQuestion(
     'Fill in the blank: A cross-functional project team is a team that has _____', 
    [
      'Diverse skill sets and works toward a common goal '//right answer
      'Similar skill sets and works toward a common goal',
      'Diverse skill sets and works toward individual goals',
      'Similar skill sets and works toward individual goals',
    ],
  ),
  QuizQuestion('Fill in the blank: _____ is when a project manager supports each individual on their team to meet expectations and exceed their own sense of personal potential.', [
    'Mentoring',//right answer
    'Promoting',
    'Communicating',
    'Planning',
  ]),
  QuizQuestion(
    'As a project manager you are transparent, which means being up front with plans and ideas and making information readily available. What project management value does this represent?',
    [ 
      'Effective communication',// right answer
      'Prioritization',
      'Optimism',
      'Delegation',
    ],
  ),
  QuizQuestion(
    'As a project manager, you create plans, timelines, schedules, and other forms of documentation to track project completion. Which project management responsibility does this represent?',
    [   'Planning and organizing',//right answer
      'Removing unforeseen barriers',
      'Managing the budget',
      'Managing tasks',
    ],
  ),
  QuizQuestion(
    'Suppose you have two teammates who disagree on the best way to complete a task. Which interpersonal skill can you use to help them resolve their disagreement?',
    [
      'Conflict mediation'// righnt answer,
      'Understanding motivations',
      'Negotiation',
      'Positive attitude',
    ],
  ),
  QuizQuestion(
    'Which of the following is true of an effective project manager in an organization?',
    [
      'Have the necessary skills, knowledge, tools, and techniques for the project',// righnt answer
      'Must know all of the specific details of the project',
      'Have personally met the project’s stakeholders',
      'Have had a previous role in the organization sponsoring the project',
    ],
  ),
];