//inside this question, we also have to give these variables a value
// when we create a new question, in order to do that,
//we have to create a constructor, so that when we construct this
// question object, we give it a value, which is String and bool

// create a class with two properties
class Question {
  String qText;
  bool qAnswer;

  //constructor (similar like a function)

  //this is a named argument
  //with curly braces, this parameter is also optional unless @required
//  Question({String q, bool a}) {
//    qText = q;
//    qAnswer = a;
//  }

  //this is a positional argument
  Question(String q, bool a) {
    qText = q;
    qAnswer = a;
  }
}

//  Question q1 = Question(
//      qText: 'You can lead a cow down stairs but not up stairs.',
//      qAnswer: false
//  );

class Questions {
  //this class has a property call _qList, we made it private so that
  // people can not access out of this class.
  // we don't need to have a constructor, we only set a default value for this list
  List<Question> _qList = [
    //use the Question class to create question object/instance.
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  //this class has method too.
  int _qNumber = 0;

  String getQuestion() {
    return _qList[_qNumber].qText;
  }

  bool getAnswer() {
    return _qList[_qNumber].qAnswer;
  }

  void nextQuestion() {
    if (_qNumber < _qList.length - 1) {
      _qNumber++;
    }
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_qNumber >= _qList.length - 1) {
      //>=12
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qNumber = 0;
  }
}

//// or why not create a map/dictionary
//List qMapList = [
//  {
//    'qText': 'You can lead a cow down stairs but not up stairs.',
//    'qAnswer': false
//  },
//  {
//    'qText': 'Approximately one quarter of human bones are in the feet.',
//    'qAnswer': true
//  },
//  {
//    'qText': 'You can lead a cow down stairs but not up stairs.',
//    'qAnswer': true
//  }
//];
