class QuizQuestion {
// logic ve datalar burda 
  const QuizQuestion(this.text,this.answer);
//different quiz questions objects with differnt text
// diffrent objects
//constructor func that can recieve a argumants
final String text;
final List<String> answer;

List <String> getShuffledAnswers(){
  
//copying existing list of answers
final shuffledList = List.of(answer);
//shuffling the list
shuffledList.shuffle();
return shuffledList;


}
}