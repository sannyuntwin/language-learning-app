// Duolingo-style language learning models

class Language {
  final String code;
  final String name;
  final String flag;
  final List<Lesson> lessons;

  const Language({
    required this.code,
    required this.name,
    required this.flag,
    required this.lessons,
  });
}

class Lesson {
  final String id;
  final String title;
  final String description;
  final String icon;
  final List<VocabularyWord> words;
  final Test? test;

  const Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.words,
    this.test,
  });
}

class VocabularyWord {
  final String id;
  final String word;
  final String translation;
  final String pronunciation;
  final String? example;

  const VocabularyWord({
    required this.id,
    required this.word,
    required this.translation,
    required this.pronunciation,
    this.example,
  });
}

class Test {
  final String id;
  final String title;
  final List<TestQuestion> questions;

  const Test({
    required this.id,
    required this.title,
    required this.questions,
  });
}

abstract class TestQuestion {
  final String id;
  final String question;
  final String? explanation;

  const TestQuestion({
    required this.id,
    required this.question,
    this.explanation,
  });
}

class MultipleChoiceQuestion extends TestQuestion {
  final List<String> options;
  final int correctAnswerIndex;

  const MultipleChoiceQuestion({
    required super.id,
    required super.question,
    required this.options,
    required this.correctAnswerIndex,
    super.explanation,
  });
}

class TranslationQuestion extends TestQuestion {
  final String word;
  final List<String> translations;
  final int correctAnswerIndex;

  const TranslationQuestion({
    required super.id,
    required super.question,
    required this.word,
    required this.translations,
    required this.correctAnswerIndex,
    super.explanation,
  });
}

class FillInBlankQuestion extends TestQuestion {
  final String sentence;
  final String correctWord;
  final List<String> options;

  const FillInBlankQuestion({
    required super.id,
    required super.question,
    required this.sentence,
    required this.correctWord,
    required this.options,
    super.explanation,
  });
}

class ListeningQuestion extends TestQuestion {
  final String audioText;
  final List<String> options;
  final int correctAnswerIndex;

  const ListeningQuestion({
    required super.id,
    required super.question,
    required this.audioText,
    required this.options,
    required this.correctAnswerIndex,
    super.explanation,
  });
}

class SentenceBuildingQuestion extends TestQuestion {
  final List<String> wordOptions;
  final List<String> correctSentence;

  const SentenceBuildingQuestion({
    required super.id,
    required super.question,
    required this.wordOptions,
    required this.correctSentence,
    super.explanation,
  });
}

class WordOrderQuestion extends TestQuestion {
  final List<String> scrambledWords;
  final List<String> correctOrder;

  const WordOrderQuestion({
    required super.id,
    required super.question,
    required this.scrambledWords,
    required this.correctOrder,
    super.explanation,
  });
}