import 'package:flutter/material.dart';
import '../models/language.dart';
import '../services/tts_service.dart';
import '../widgets/drag_drop_widgets.dart';
import '../theme/app_theme.dart';

class TestScreen extends StatefulWidget {
  final Test test;
  final Lesson lesson;
  final Language? language;
  final VoidCallback onTestComplete;

  const TestScreen({
    super.key,
    required this.test,
    required this.lesson,
    this.language,
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
  final List<String> _userSentenceWords = [];
  final List<String> _availableWords = [];

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
      body: Container(
        decoration: AppTheme.screenGradient,
        child: SafeArea(
          child: Column(
            children: [
              // Streamlined header
              _buildStreamlinedHeader(),
              
              // Compact progress indicator
              _buildCompactProgressIndicator(),
              
              // Main content - optimized spacing
              Expanded(
                child: Padding(
                  padding: AppTheme.getScreenPadding(),
                  child: _buildQuestionWidget(currentQuestion),
                ),
              ),
              
              // Compact answer section
              _buildCompactAnswerSection(currentQuestion, isLastQuestion),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStreamlinedHeader() {
    return Container(
      padding: AppTheme.getScreenPadding(),
      margin: const EdgeInsets.all(AppTheme.spaceS),
      decoration: AppTheme.questionCardDecoration,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.all(AppTheme.spaceS),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
              ),
              child: Icon(
                Icons.close,
                color: Colors.grey.shade700,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: AppTheme.spaceM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.lesson.icon} ${widget.lesson.title}',
                  style: AppTheme.titleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppTheme.spaceXS),
                Text(
                  'Question ${_currentQuestionIndex + 1} of ${widget.test.questions.length}',
                  style: AppTheme.captionTextStyle,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.spaceM, 
              vertical: AppTheme.spaceS
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.green, Color(0xFF2E7D32)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.local_fire_department,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(width: AppTheme.spaceXS),
                Text(
                  '$_score',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompactProgressIndicator() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppTheme.spaceS),
      padding: const EdgeInsets.all(AppTheme.spaceM),
      decoration: AppTheme.questionCardDecoration,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spaceS, 
                  vertical: AppTheme.spaceXS
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.green.shade200,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flag,
                      size: 14,
                      color: AppTheme.successColor,
                    ),
                    const SizedBox(width: AppTheme.spaceXS),
                    Text(
                      '${_currentQuestionIndex + 1}/${widget.test.questions.length}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.successColor,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.only(left: AppTheme.spaceXS),
                    child: Icon(
                      index < _correctAnswers ? Icons.favorite : Icons.favorite_border,
                      color: index < _correctAnswers ? Colors.red : Colors.grey.shade300,
                      size: 20,
                    ),
                  );
                }),
              ),
            ],
          ),
          const SizedBox(height: AppTheme.spaceM),
          Container(
            width: double.infinity,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(3),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: LinearProgressIndicator(
                value: (_currentQuestionIndex + 1) / widget.test.questions.length,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppTheme.successColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionWidget(TestQuestion question) {
    if (question is MultipleChoiceQuestion) {
      return _buildEnhancedMultipleChoiceQuestion(question);
    } else if (question is TranslationQuestion) {
      return _buildEnhancedTranslationQuestion(question);
    } else if (question is FillInBlankQuestion) {
      return _buildEnhancedFillInBlankQuestion(question);
    } else if (question is ListeningQuestion) {
      return _buildEnhancedListeningQuestion(question);
    } else if (question is SentenceBuildingQuestion) {
      return _buildEnhancedSentenceBuildingQuestion(question);
    } else if (question is WordOrderQuestion) {
      return _buildEnhancedWordOrderQuestion(question);
    }
    return const Text('Unknown question type');
  }

  Widget _buildEnhancedMultipleChoiceQuestion(MultipleChoiceQuestion question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Drop target - streamlined
        Container(
          width: double.infinity,
          height: 60,
          decoration: AppTheme.dropTargetDecoration.copyWith(
            border: Border.all(
              color: _selectedAnswer != null 
                  ? AppTheme.successColor 
                  : Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: DragTarget<String>(
            onWillAccept: (data) => !_showExplanation,
            onAccept: (data) {
              if (!_showExplanation) {
                setState(() {
                  _selectedAnswer = data;
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return Center(
                child: _selectedAnswer != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.successColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(
                            color: AppTheme.successColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          _selectedAnswer!,
                          style: AppTheme.wordTextStyle,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                          const SizedBox(height: AppTheme.spaceXS),
                          Text(
                            'Drop answer here',
                            style: AppTheme.captionTextStyle,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Draggable options - compact
        Expanded(
          child: ListView.builder(
            itemCount: question.options.length,
            itemBuilder: (context, index) {
              final option = question.options[index];
              final isCorrect = index == question.correctAnswerIndex;
              final isSelected = _selectedAnswer == option;
              
              return Container(
                margin: const EdgeInsets.only(bottom: AppTheme.spaceS),
                child: DraggableWordTile(
                  word: option,
                  isUsed: _showExplanation ? false : isSelected,
                  isCorrect: _showExplanation && isCorrect,
                  showResult: _showExplanation,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEnhancedTranslationQuestion(TranslationQuestion question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Word to translate - streamlined
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppTheme.spaceL),
          decoration: AppTheme.getQuestionTypeDecoration('translation'),
          child: Column(
            children: [
              Text(
                'Translate this word:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppTheme.spaceS),
              Text(
                question.word,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.translationColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Drop target - streamlined
        Container(
          width: double.infinity,
          height: 60,
          decoration: AppTheme.dropTargetDecoration.copyWith(
            border: Border.all(
              color: _selectedAnswer != null 
                  ? AppTheme.successColor 
                  : Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: DragTarget<String>(
            onWillAccept: (data) => !_showExplanation,
            onAccept: (data) {
              if (!_showExplanation) {
                setState(() {
                  _selectedAnswer = data;
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return Center(
                child: _selectedAnswer != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.successColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(
                            color: AppTheme.successColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          _selectedAnswer!,
                          style: AppTheme.wordTextStyle,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                          const SizedBox(height: AppTheme.spaceXS),
                          Text(
                            'Drop translation here',
                            style: AppTheme.captionTextStyle,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Draggable translations - compact
        Expanded(
          child: ListView.builder(
            itemCount: question.translations.length,
            itemBuilder: (context, index) {
              final translation = question.translations[index];
              final isCorrect = index == question.correctAnswerIndex;
              final isSelected = _selectedAnswer == translation;
              
              return Container(
                margin: const EdgeInsets.only(bottom: AppTheme.spaceS),
                child: DraggableWordTile(
                  word: translation,
                  isUsed: _showExplanation ? false : isSelected,
                  isCorrect: _showExplanation && isCorrect,
                  showResult: _showExplanation,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEnhancedFillInBlankQuestion(FillInBlankQuestion question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Sentence with blank to fill
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppTheme.spaceL),
          decoration: AppTheme.getQuestionTypeDecoration('fill_blank'),
          child: Column(
            children: [
              Text(
                'Complete the sentence:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppTheme.spaceS),
              _buildSentenceWithBlank(question.sentence, question.correctWord),
            ],
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Drop target - streamlined
        Container(
          width: double.infinity,
          height: 60,
          decoration: AppTheme.dropTargetDecoration.copyWith(
            border: Border.all(
              color: _selectedAnswer != null 
                  ? AppTheme.successColor 
                  : Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: DragTarget<String>(
            onWillAccept: (data) => !_showExplanation,
            onAccept: (data) {
              if (!_showExplanation) {
                setState(() {
                  _selectedAnswer = data;
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return Center(
                child: _selectedAnswer != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.successColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(
                            color: AppTheme.successColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          _selectedAnswer!,
                          style: AppTheme.wordTextStyle,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                          const SizedBox(height: AppTheme.spaceXS),
                          Text(
                            'Drop answer here',
                            style: AppTheme.captionTextStyle,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Draggable options - compact
        Expanded(
          child: ListView.builder(
            itemCount: question.options.length,
            itemBuilder: (context, index) {
              final option = question.options[index];
              final isCorrect = option == question.correctWord;
              final isSelected = _selectedAnswer == option;
              
              return Container(
                margin: const EdgeInsets.only(bottom: AppTheme.spaceS),
                child: DraggableWordTile(
                  word: option,
                  isUsed: _showExplanation ? false : isSelected,
                  isCorrect: _showExplanation && isCorrect,
                  showResult: _showExplanation,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSentenceWithBlank(String sentence, String correctWord) {
    // Find the blank position (underscore)
    final parts = sentence.split('_____');
    
    if (parts.length == 2) {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1E293B),
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: parts[0],
              style: const TextStyle(
                color: Color(0xFF1E293B),
              ),
            ),
            TextSpan(
              text: '_____',
              style: const TextStyle(
                color: AppTheme.fillBlankColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: parts[1],
              style: const TextStyle(
                color: Color(0xFF1E293B),
              ),
            ),
          ],
        ),
      );
    } else {
      // Fallback if no blank found
      return Text(
        sentence,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xFF1E293B),
        ),
        textAlign: TextAlign.center,
      );
    }
  }

  Widget _buildEnhancedListeningQuestion(ListeningQuestion question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Audio player - streamlined
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppTheme.spaceL),
          decoration: AppTheme.getQuestionTypeDecoration('listening'),
          child: Column(
            children: [
              Icon(
                Icons.volume_up,
                size: 32,
                color: AppTheme.listeningColor,
              ),
              const SizedBox(height: AppTheme.spaceS),
              ElevatedButton.icon(
                onPressed: () => _ttsService.speak(question.audioText, widget.language?.code ?? 'en'),
                icon: const Icon(Icons.play_arrow, size: 20),
                label: const Text(
                  'Play Audio', 
                  style: TextStyle(
                    fontSize: 14, 
                    fontWeight: FontWeight.w600
                  )
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.listeningColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppTheme.spaceM,
                    vertical: AppTheme.spaceS,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                  ),
                ),
              ),
              const SizedBox(height: AppTheme.spaceS),
              Text(
                'What did you hear?',
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.listeningColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Drop target - streamlined
        Container(
          width: double.infinity,
          height: 60,
          decoration: AppTheme.dropTargetDecoration.copyWith(
            border: Border.all(
              color: _selectedAnswer != null 
                  ? AppTheme.successColor 
                  : Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: DragTarget<String>(
            onWillAccept: (data) => !_showExplanation,
            onAccept: (data) {
              if (!_showExplanation) {
                setState(() {
                  _selectedAnswer = data;
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return Center(
                child: _selectedAnswer != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.successColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(
                            color: AppTheme.successColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          _selectedAnswer!,
                          style: AppTheme.wordTextStyle,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                          const SizedBox(height: AppTheme.spaceXS),
                          Text(
                            'Drag answer here',
                            style: AppTheme.captionTextStyle,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Draggable options - compact
        Expanded(
          child: ListView.builder(
            itemCount: question.options.length,
            itemBuilder: (context, index) {
              final option = question.options[index];
              final isCorrect = index == question.correctAnswerIndex;
              final isSelected = _selectedAnswer == option;
              
              return Container(
                margin: const EdgeInsets.only(bottom: AppTheme.spaceS),
                child: DraggableWordTile(
                  word: option,
                  isUsed: _showExplanation ? false : isSelected,
                  isCorrect: _showExplanation && isCorrect,
                  showResult: _showExplanation,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEnhancedSentenceBuildingQuestion(SentenceBuildingQuestion question) {
    return _buildEnhancedSentenceQuestion(question, question.correctSentence, question.wordOptions);
  }

  Widget _buildEnhancedWordOrderQuestion(WordOrderQuestion question) {
    return _buildEnhancedSentenceQuestion(question, question.correctOrder, question.scrambledWords);
  }

  Widget _buildEnhancedQuestionSkeleton(TestQuestion question, bool Function(String) isCorrect, String? Function() getSelectedAnswer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Drop target - streamlined
        Container(
          width: double.infinity,
          height: 60,
          decoration: AppTheme.dropTargetDecoration.copyWith(
            border: Border.all(
              color: getSelectedAnswer() != null 
                  ? AppTheme.successColor 
                  : Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: DragTarget<String>(
            onWillAccept: (data) => !_showExplanation,
            onAccept: (data) {
              if (!_showExplanation) {
                setState(() {
                  _selectedAnswer = data;
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return Center(
                child: getSelectedAnswer() != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.successColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(
                            color: AppTheme.successColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          getSelectedAnswer()!,
                          style: AppTheme.wordTextStyle,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drag_indicator,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                          const SizedBox(height: AppTheme.spaceXS),
                          Text(
                            'Drag answer here',
                            style: AppTheme.captionTextStyle,
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Draggable options - compact
        Expanded(
          child: ListView.builder(
            itemCount: (question as dynamic).options.length,
            itemBuilder: (context, index) {
              final option = (question as dynamic).options[index];
              final isCorrectOption = isCorrect(option);
              final isSelected = getSelectedAnswer() == option;
              
              return Container(
                margin: const EdgeInsets.only(bottom: AppTheme.spaceS),
                child: DraggableWordTile(
                  word: option,
                  isUsed: _showExplanation ? false : isSelected,
                  isCorrect: _showExplanation && isCorrectOption,
                  showResult: _showExplanation,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEnhancedSentenceQuestion(TestQuestion question, List<String> correctWords, List<String> wordOptions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text - optimized
        Container(
          width: double.infinity,
          padding: AppTheme.getCardPadding(),
          decoration: AppTheme.questionCardDecoration,
          child: Text(
            question.question,
            style: AppTheme.questionTextStyle,
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Sentence building area - enhanced
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppTheme.spaceM),
          decoration: AppTheme.getQuestionTypeDecoration('sentence'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.edit_note,
                    size: 16,
                    color: AppTheme.sentenceColor,
                  ),
                  const SizedBox(width: AppTheme.spaceXS),
                  Text(
                    'Your sentence:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.sentenceColor,
                    ),
                  ),
                  const Spacer(),
                  if (_userSentenceWords.isNotEmpty && !_showExplanation)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _userSentenceWords.clear();
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.spaceS,
                          vertical: AppTheme.spaceXS,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          border: Border.all(color: Colors.red.shade200),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.clear_all,
                              size: 14,
                              color: Colors.red.shade600,
                            ),
                            const SizedBox(width: AppTheme.spaceXS),
                            Text(
                              'Clear all',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.red.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: AppTheme.spaceS),
              Container(
                width: double.infinity,
                height: 80,
                constraints: const BoxConstraints(minHeight: 80),
                padding: const EdgeInsets.all(AppTheme.spaceS),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                  border: Border.all(
                    color: _userSentenceWords.isEmpty 
                        ? Colors.grey.shade300 
                        : AppTheme.successColor.withValues(alpha: 0.3),
                    width: 2,
                  ),
                ),
                child: DragTarget<String>(
                  onWillAcceptWithDetails: (data) => !_showExplanation && !_userSentenceWords.contains(data.data),
                  onAcceptWithDetails: (data) {
                    if (!_showExplanation && !_userSentenceWords.contains(data.data)) {
                      setState(() {
                        _userSentenceWords.add(data.data);
                      });
                    }
                  },
                  builder: (context, candidateData, rejectedData) {
                    return _userSentenceWords.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.drag_indicator,
                                  size: 32,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(height: AppTheme.spaceS),
                                Text(
                                  'Drag words here to build your sentence',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        : Wrap(
                            spacing: AppTheme.spaceXS,
                            runSpacing: AppTheme.spaceXS,
                            alignment: WrapAlignment.start,
                            children: _userSentenceWords.asMap().entries.map((entry) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: AppTheme.spaceXS),
                                child: GestureDetector(
                                  onTap: _showExplanation ? null : () {
                                    setState(() {
                                      _userSentenceWords.removeAt(entry.key);
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: AppTheme.spaceS,
                                      vertical: AppTheme.spaceXS,
                                    ),
                                    decoration: BoxDecoration(
                                      color: _showExplanation 
                                          ? (entry.value == correctWords[entry.key] 
                                              ? AppTheme.successColor.withValues(alpha: 0.1)
                                              : Colors.red.shade50)
                                          : AppTheme.sentenceColor.withValues(alpha: 0.1),
                                      borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                                      border: Border.all(
                                        color: _showExplanation 
                                            ? (entry.value == correctWords[entry.key] 
                                                ? AppTheme.successColor
                                                : Colors.red.shade300)
                                            : AppTheme.sentenceColor.withValues(alpha: 0.3),
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          entry.value,
                                          style: AppTheme.wordTextStyle.copyWith(
                                            color: _showExplanation 
                                                ? (entry.value == correctWords[entry.key] 
                                                    ? AppTheme.successColor
                                                    : Colors.red.shade700)
                                                : AppTheme.sentenceColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        if (!_showExplanation) ...[
                                          const SizedBox(width: AppTheme.spaceXS),
                                          Icon(
                                            Icons.close,
                                            size: 14,
                                            color: Colors.grey.shade600,
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                  },
                ),
              ),
              if (_userSentenceWords.isNotEmpty && !_showExplanation) ...[
                const SizedBox(height: AppTheme.spaceS),
                Container(
                  padding: const EdgeInsets.all(AppTheme.spaceS),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 16,
                        color: Colors.blue.shade600,
                      ),
                      const SizedBox(width: AppTheme.spaceXS),
                      Expanded(
                        child: Text(
                          'Tap any word to remove it from your sentence',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: AppTheme.spaceM),
        
        // Available words - enhanced
        Container(
          padding: const EdgeInsets.all(AppTheme.spaceM),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.library_add,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: AppTheme.spaceXS),
                  Text(
                    'Available words:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppTheme.spaceS),
              Wrap(
                spacing: AppTheme.spaceXS,
                runSpacing: AppTheme.spaceXS,
                children: wordOptions.map((word) {
                  final isUsed = _userSentenceWords.contains(word);
                  final isCorrect = _showExplanation && correctWords.contains(word);
                  
                  return Opacity(
                    opacity: isUsed ? 0.3 : 1.0,
                    child: DraggableWordTile(
                      word: word,
                      isUsed: isUsed,
                      isCorrect: _showExplanation && isCorrect,
                      showResult: _showExplanation,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCompactAnswerSection(TestQuestion question, bool isLastQuestion) {
    return Container(
      padding: AppTheme.getScreenPadding(),
      margin: const EdgeInsets.all(AppTheme.spaceS),
      decoration: AppTheme.questionCardDecoration,
      child: Column(
        children: [
          // Explanation
          if (_showExplanation && question.explanation != null) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppTheme.spaceM),
              decoration: BoxDecoration(
                color: AppTheme.warningColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                border: Border.all(
                  color: AppTheme.warningColor.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lightbulb, 
                    color: AppTheme.warningColor, 
                    size: 20
                  ),
                  const SizedBox(width: AppTheme.spaceS),
                  Expanded(
                    child: Text(
                      question.explanation!,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.warningColor,
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppTheme.spaceM),
          ],

          // Submit button
          if (!_showExplanation) ...[
            // Progress indicator for sentence building
            if (question is SentenceBuildingQuestion || 
                question is WordOrderQuestion) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppTheme.spaceS),
                decoration: BoxDecoration(
                  color: _isReadyToSubmit() 
                      ? AppTheme.successColor.withValues(alpha: 0.1)
                      : Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                  border: Border.all(
                    color: _isReadyToSubmit() 
                        ? AppTheme.successColor
                        : Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _isReadyToSubmit() ? Icons.check_circle : Icons.pending,
                      size: 16,
                      color: _isReadyToSubmit() 
                          ? AppTheme.successColor 
                          : Colors.grey.shade600,
                    ),
                    const SizedBox(width: AppTheme.spaceXS),
                    Text(
                      _isReadyToSubmit() 
                          ? 'Ready to submit!' 
                          : 'Need ${_getRequiredWordCount() - _userSentenceWords.length} more word(s)',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _isReadyToSubmit() 
                            ? AppTheme.successColor 
                            : Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppTheme.spaceS),
            ],
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: _isReadyToSubmit() ? _submitAnswer : null,
                icon: Icon(
                  _isReadyToSubmit() ? Icons.check : Icons.lock,
                  size: 20,
                ),
                label: Text(
                  _isReadyToSubmit() ? 'Submit Answer' : 'Complete Sentence First', 
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w600
                  )
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isReadyToSubmit() 
                      ? AppTheme.successColor 
                      : Colors.grey.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                  ),
                  elevation: _isReadyToSubmit() ? 2 : 0,
                ),
              ),
            ),
          ],

          // Auto-advance indicator
          if (_showExplanation) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppTheme.spaceM),
              decoration: BoxDecoration(
                color: AppTheme.successColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                border: Border.all(
                  color: AppTheme.successColor.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.schedule, 
                    color: AppTheme.successColor, 
                    size: 20
                  ),
                  const SizedBox(width: AppTheme.spaceS),
                  Text(
                    isLastQuestion 
                        ? 'Test will finish...' 
                        : 'Next question in 2 seconds...',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.successColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  bool _isReadyToSubmit() {
    final currentQuestion = widget.test.questions[_currentQuestionIndex];
    
    if (currentQuestion is SentenceBuildingQuestion || 
        currentQuestion is WordOrderQuestion) {
      final expectedLength = currentQuestion is SentenceBuildingQuestion 
          ? (currentQuestion as SentenceBuildingQuestion).correctSentence.length 
          : (currentQuestion as WordOrderQuestion).correctOrder.length;
      final isReady = _userSentenceWords.length == expectedLength && expectedLength > 0;
      
      return isReady;
    } else {
      return _selectedAnswer != null;
    }
  }

  int _getRequiredWordCount() {
    final currentQuestion = widget.test.questions[_currentQuestionIndex];
    
    if (currentQuestion is SentenceBuildingQuestion) {
      return currentQuestion.correctSentence.length;
    } else if (currentQuestion is WordOrderQuestion) {
      return currentQuestion.correctOrder.length;
    }
    return 0;
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

  @override
  void dispose() {
    super.dispose();
  }
}
