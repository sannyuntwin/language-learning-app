import 'package:flutter/material.dart';
import '../models/language.dart';
import '../services/tts_service.dart';

class TestScreen extends StatefulWidget {
  final Test test;
  final Lesson lesson;
  final VoidCallback onTestComplete;

  const TestScreen({
    super.key,
    required this.test,
    required this.lesson,
    required this.onTestComplete,
  });

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  int _correctAnswers = 0;
  List<bool> _questionResults = [];
  bool _showExplanation = false;
  String? _selectedAnswer;
  final TTSService _ttsService = TTSService();
  
  // For sentence building and word order
  List<String> _userSentenceWords = [];
  List<String> _availableWords = [];

  @override
  void initState() {
    super.initState();
    _questionResults = List.filled(widget.test.questions.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.test.questions[_currentQuestionIndex];
    final isLastQuestion = _currentQuestionIndex == widget.test.questions.length - 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.lesson.icon} Test'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, size: 16, color: Colors.orange.shade600),
                const SizedBox(width: 4),
                Text(
                  '$_score',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange.shade800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.yellow.shade50,
            ],
          ),
        ),
        child: _buildTestContent(currentQuestion, isLastQuestion),
      ),
    );
  }

  Widget _buildTestContent(TestQuestion currentQuestion, bool isLastQuestion) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress indicator
          _buildProgressIndicator(),
          const SizedBox(height: 20),

          // Question
          Expanded(
            child: _buildQuestionWidget(currentQuestion),
          ),

          // Answer and Next button
          _buildAnswerSection(currentQuestion, isLastQuestion),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Question ${_currentQuestionIndex + 1} of ${widget.test.questions.length}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            Text(
              '${(_correctAnswers / widget.test.questions.length * 100).round()}% correct',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: (_currentQuestionIndex + 1) / widget.test.questions.length,
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        ),
      ],
    );
  }

  Widget _buildQuestionWidget(TestQuestion question) {
    if (question is MultipleChoiceQuestion) {
      return _buildMultipleChoiceQuestion(question);
    } else if (question is TranslationQuestion) {
      return _buildTranslationQuestion(question);
    } else if (question is FillInBlankQuestion) {
      return _buildFillInBlankQuestion(question);
    } else if (question is ListeningQuestion) {
      return _buildListeningQuestion(question);
    } else if (question is SentenceBuildingQuestion) {
      return _buildSentenceBuildingQuestion(question);
    } else if (question is WordOrderQuestion) {
      return _buildWordOrderQuestion(question);
    }
    return const Text('Unknown question type');
  }

  Widget _buildMultipleChoiceQuestion(MultipleChoiceQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  final option = question.options[index];
                  final isSelected = _selectedAnswer == option;
                  final isCorrect = index == question.correctAnswerIndex;
                  
                  Color buttonColor = Colors.grey.shade100;
                  if (_showExplanation) {
                    if (isCorrect) {
                      buttonColor = Colors.green.shade100;
                    } else if (isSelected && !isCorrect) {
                      buttonColor = Colors.red.shade100;
                    }
                  } else if (isSelected) {
                    buttonColor = Colors.yellow.shade100;
                  }

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ElevatedButton(
                      onPressed: _showExplanation ? null : () {
                        setState(() {
                          _selectedAnswer = option;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: isSelected ? Colors.green : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        elevation: _showExplanation ? 0 : 2,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected ? Colors.green : Colors.grey.shade300,
                            ),
                            child: Center(
                              child: Text(
                                String.fromCharCode(65 + index), // A, B, C, D
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected ? Colors.white : Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              option,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          if (_showExplanation && isCorrect)
                            Icon(Icons.check, color: Colors.green.shade600),
                          if (_showExplanation && isSelected && !isCorrect)
                            Icon(Icons.close, color: Colors.red.shade600),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTranslationQuestion(TranslationQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.yellow.shade200),
              ),
              child: Text(
                question.word,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Select the correct translation:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: question.translations.length,
                itemBuilder: (context, index) {
                  final translation = question.translations[index];
                  final isSelected = _selectedAnswer == translation;
                  final isCorrect = index == question.correctAnswerIndex;
                  
                  Color buttonColor = Colors.grey.shade100;
                  if (_showExplanation) {
                    if (isCorrect) {
                      buttonColor = Colors.green.shade100;
                    } else if (isSelected && !isCorrect) {
                      buttonColor = Colors.red.shade100;
                    }
                  } else if (isSelected) {
                    buttonColor = Colors.yellow.shade100;
                  }

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ElevatedButton(
                      onPressed: _showExplanation ? null : () {
                        setState(() {
                          _selectedAnswer = translation;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: isSelected ? Colors.green : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        elevation: _showExplanation ? 0 : 2,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected ? Colors.green : Colors.grey.shade300,
                            ),
                            child: Center(
                              child: Text(
                                String.fromCharCode(65 + index), // A, B, C, D
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected ? Colors.white : Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              translation,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          if (_showExplanation && isCorrect)
                            Icon(Icons.check, color: Colors.green.shade600),
                          if (_showExplanation && isSelected && !isCorrect)
                            Icon(Icons.close, color: Colors.red.shade600),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerSection(TestQuestion question, bool isLastQuestion) {
    return Column(
      children: [
        // Explanation
        if (_showExplanation && question.explanation != null) ...[
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.yellow.shade200),
            ),
            child: Row(
              children: [
                Icon(Icons.lightbulb, color: Colors.orange.shade600),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    question.explanation!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange.shade800,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],

        // Submit button (only visible before answering)
        if (!_showExplanation) ...[
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _selectedAnswer == null ? null : _submitAnswer,
              icon: const Icon(Icons.check),
              label: const Text('Submit Answer'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 3,
              ),
            ),
          ),
        ],

        // Auto-advance indicator (visible after answering)
        if (_showExplanation) ...[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.green.shade200),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.schedule, color: Colors.green.shade600),
                const SizedBox(width: 8),
                Text(
                  isLastQuestion ? 'Test will finish...' : 'Next question in 2 seconds...',
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  void _submitAnswer() {
    final currentQuestion = widget.test.questions[_currentQuestionIndex];
    bool isCorrect = false;

    if (currentQuestion is MultipleChoiceQuestion) {
      isCorrect = _selectedAnswer == currentQuestion.options[currentQuestion.correctAnswerIndex];
    } else if (currentQuestion is TranslationQuestion) {
      isCorrect = _selectedAnswer == currentQuestion.translations[currentQuestion.correctAnswerIndex];
    } else if (currentQuestion is FillInBlankQuestion) {
      isCorrect = _selectedAnswer == currentQuestion.correctWord;
    } else if (currentQuestion is ListeningQuestion) {
      isCorrect = _selectedAnswer == currentQuestion.options[currentQuestion.correctAnswerIndex];
    } else if (currentQuestion is SentenceBuildingQuestion) {
      isCorrect = _listEquals(_userSentenceWords, currentQuestion.correctSentence);
    } else if (currentQuestion is WordOrderQuestion) {
      isCorrect = _listEquals(_userSentenceWords, currentQuestion.correctOrder);
    }

    setState(() {
      _showExplanation = true;
      _questionResults[_currentQuestionIndex] = isCorrect;
      
      if (isCorrect) {
        _score += 10;
        _correctAnswers++;
      }
    });

    // Auto-advance to next question after showing explanation
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted && _showExplanation) {
        _nextQuestion();
      }
    });
  }

  bool _listEquals(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < widget.test.questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedAnswer = null;
        _showExplanation = false;
        _userSentenceWords.clear();
        _availableWords.clear();
      });
    } else {
      // Test completed
      widget.onTestComplete();
    }
  }

  // Fill in the Blank Question
  Widget _buildFillInBlankQuestion(FillInBlankQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.yellow.shade200),
              ),
              child: Column(
                children: [
                  Text(
                    question.sentence.replaceAll('___', '_____'),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Select the missing word:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  final option = question.options[index];
                  final isSelected = _selectedAnswer == option;
                  final isCorrect = option == question.correctWord;
                  
                  Color buttonColor = Colors.grey.shade100;
                  if (_showExplanation) {
                    if (isCorrect) {
                      buttonColor = Colors.green.shade100;
                    } else if (isSelected && !isCorrect) {
                      buttonColor = Colors.red.shade100;
                    }
                  } else if (isSelected) {
                    buttonColor = Colors.yellow.shade100;
                  }

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ElevatedButton(
                      onPressed: _showExplanation ? null : () {
                        setState(() {
                          _selectedAnswer = option;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: _showExplanation ? 0 : 2,
                      ),
                      child: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Listening Question
  Widget _buildListeningQuestion(ListeningQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.yellow.shade200),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.volume_up,
                    size: 60,
                    color: Colors.green.shade600,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () => _ttsService.speak(question.audioText, 'en'),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Play Audio'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'What did you hear?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  final option = question.options[index];
                  final isSelected = _selectedAnswer == option;
                  final isCorrect = index == question.correctAnswerIndex;
                  
                  Color buttonColor = Colors.grey.shade100;
                  if (_showExplanation) {
                    if (isCorrect) {
                      buttonColor = Colors.green.shade100;
                    } else if (isSelected && !isCorrect) {
                      buttonColor = Colors.red.shade100;
                    }
                  } else if (isSelected) {
                    buttonColor = Colors.yellow.shade100;
                  }

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ElevatedButton(
                      onPressed: _showExplanation ? null : () {
                        setState(() {
                          _selectedAnswer = option;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: _showExplanation ? 0 : 2,
                      ),
                      child: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Sentence Building Question
  Widget _buildSentenceBuildingQuestion(SentenceBuildingQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            
            // Available words to build sentence
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.yellow.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Available words:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: question.wordOptions.map((word) {
                      final isUsed = _userSentenceWords.contains(word);
                      return ElevatedButton(
                        onPressed: _showExplanation || isUsed ? null : () {
                          setState(() {
                            _userSentenceWords.add(word);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isUsed ? Colors.grey.shade300 : Colors.green.shade100,
                          foregroundColor: Colors.black87,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(word),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Built sentence
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your sentence:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: _userSentenceWords.isEmpty
                        ? const Text(
                            'Tap words above to build your sentence',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            ),
                          )
                        : Wrap(
                            children: _userSentenceWords.asMap().entries.map((entry) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8, bottom: 8),
                                child: ElevatedButton(
                                  onPressed: _showExplanation ? null : () {
                                    setState(() {
                                      _userSentenceWords.removeAt(entry.key);
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow.shade100,
                                    foregroundColor: Colors.black87,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Text(entry.value),
                                ),
                              );
                            }).toList(),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Word Order Question
  Widget _buildWordOrderQuestion(WordOrderQuestion question) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            
            // Scrambled words to arrange
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.yellow.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Arrange these words in the correct order:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: question.scrambledWords.map((word) {
                      return ElevatedButton(
                        onPressed: _showExplanation ? null : () {
                          setState(() {
                            _userSentenceWords.add(word);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade100,
                          foregroundColor: Colors.black87,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(word),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Correct order preview (shown after answering)
            if (_showExplanation) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Correct order:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      question.correctOrder.join(' '),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}