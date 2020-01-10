import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('국악에서 자진모리, 중중모리, 휘모리 등의 빠르기말이 있는데 가장 빠른 것은 진양조이다', false),
    Question('달팽이도 이빨이 있다.', true),
    Question('구기 종목 중에 가장 작은 공을 사용하는 경기는 골프이다.', false),
    Question('제 1회 아테네 올림픽은 1896년에 열렸다', true),
    Question('딸기는 장미과에 속한다.', true),
    Question('아라비아 숫자 1부터 100사이에 9라는 숫자는 모두 합해 10개가 들어 있다', false),
    Question('벼락은 남자보다 여자를 칠 가능성이 더 많다', false),
    Question('우리나라에 가장 넓은 차선은 광화문 앞에 16차선 이다', true),
    Question('물고기도 기침을 한다', true),
    Question('여러번을 강조할 때 골백번이라고 흔히 말하는데 골은 10000을 뜻한다', true),
    Question('가장 강한 독을 가진 개구리 한마리의 독으로 사람 2000명 이상을 죽일 수 있다', true),
    Question('낙지의 심장은 3개이다', true),
    Question('로미오와 줄리엣 중에서 로미오가 더 나이가 많다', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
        print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
