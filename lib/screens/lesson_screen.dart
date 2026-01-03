import 'package:flutter/material.dart';
import '../models/language.dart';
import '../services/tts_service.dart';
import '../theme/app_theme.dart';
import 'test_screen.dart';

class LessonScreen extends StatefulWidget {
  final Lesson lesson;
  final Language? language;

  const LessonScreen({super.key, required this.lesson, this.language});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int _currentWordIndex = 0;
  int _score = 0;
  bool _showMeaning = false;
  final TTSService _ttsService = TTSService();

  // Get vocabulary words from the lesson
  List<VocabularyWord> get _vocabularyWords {
    return widget.lesson.words;
  }

  @override
  Widget build(BuildContext context) {
    final vocabulary = _vocabularyWords;
    final language = widget.language;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${language?.flag ?? '📚'} ${widget.lesson.title}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryGreen,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: AppTheme.spaceM),
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.spaceS, 
              vertical: AppTheme.spaceXS
            ),
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star, 
                  size: 16, 
                  color: Colors.orange.shade600
                ),
                const SizedBox(width: AppTheme.spaceXS),
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
        decoration: AppTheme.screenGradient,
        child: vocabulary.isEmpty 
            ? _buildNoVocabularyScreen() 
            : _buildVocabularyLearning(vocabulary),
      ),
    );
  }

  Widget _buildNoVocabularyScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spaceXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              size: 80,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: AppTheme.spaceL),
            Text(
              'No vocabulary found',
              style: AppTheme.headerTextStyle,
            ),
            const SizedBox(height: AppTheme.spaceS),
            Text(
              'This lesson doesn\'t contain vocabulary words.',
              style: AppTheme.bodyTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppTheme.spaceL),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Go Back'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spaceM, 
                  vertical: AppTheme.spaceS
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVocabularyLearning(List<VocabularyWord> vocabulary) {
    final currentWord = vocabulary[_currentWordIndex];
    final isLastWord = _currentWordIndex == vocabulary.length - 1;

    return Column(
      children: [
        // Streamlined progress indicator
        _buildCompactProgressIndicator(vocabulary),

        // Optimized vocabulary card
        Expanded(
          child: Center(
            child: Padding(
              padding: AppTheme.getScreenPadding(),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 380),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(AppTheme.spaceL),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, AppTheme.lightGreen],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Word - optimized size
                        Text(
                          currentWord.word,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.primaryGreen,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        
                        const SizedBox(height: AppTheme.spaceM),
                        
                        // Pronunciation button - compact
                        StatefulBuilder(
                          builder: (context, setButtonState) {
                            bool isPlaying = false;
                            return Column(
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () async {
                                    setButtonState(() => isPlaying = true);
                                    await _speakWord(currentWord.word);
                                    setButtonState(() => isPlaying = false);
                                  },
                                  icon: Icon(
                                    isPlaying ? Icons.pause : Icons.volume_up, 
                                    size: 20
                                  ),
                                  label: Text(
                                    isPlaying ? 'Speaking...' : 'Listen',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: isPlaying 
                                        ? Colors.grey.shade500 
                                        : AppTheme.primaryGreen,
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
                                
                                // TTS Status indicator - compact
                                if (currentWord.pronunciation.isNotEmpty) ...[
                                  const SizedBox(height: AppTheme.spaceS),
                                  Text(
                                    '🔊 Tap to hear pronunciation',
                                    style: AppTheme.captionTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ],
                            );
                          },
                        ),
                        
                        const SizedBox(height: AppTheme.spaceM),
                        
                        // Arrow down - smaller
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 24,
                          color: Colors.grey.shade400,
                        ),
                        
                        const SizedBox(height: AppTheme.spaceM),
                        
                        // Meaning (show/hide) - optimized
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showMeaning = !_showMeaning;
                              if (_showMeaning) {
                                _score += 10; // Points for learning
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(AppTheme.spaceM),
                            decoration: BoxDecoration(
                              color: _showMeaning 
                                  ? Colors.yellow.shade50 
                                  : Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                              border: Border.all(
                                color: _showMeaning 
                                    ? Colors.yellow.shade200 
                                    : Colors.grey.shade300,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      _showMeaning ? Icons.visibility : Icons.visibility_off,
                                      color: _showMeaning 
                                          ? AppTheme.primaryGreen 
                                          : Colors.grey.shade500,
                                      size: 20,
                                    ),
                                    const SizedBox(width: AppTheme.spaceS),
                                    Text(
                                      _showMeaning ? 'Meaning Shown' : 'Tap to Reveal',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: _showMeaning 
                                            ? AppTheme.primaryGreen 
                                            : Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                                if (_showMeaning) ...[
                                  const SizedBox(height: AppTheme.spaceS),
                                  Text(
                                    currentWord.translation,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryGreen,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: AppTheme.spaceS),
                                  Text(
                                    'Pronunciation: ${currentWord.pronunciation}',
                                    style: AppTheme.captionTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  if (currentWord.example != null) ...[
                                    const SizedBox(height: AppTheme.spaceS),
                                    Text(
                                      'Example: ${currentWord.example}',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue.shade600,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ],
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        // Compact navigation buttons
        _buildCompactNavigationButtons(isLastWord),
      ],
    );
  }

  Widget _buildCompactProgressIndicator(List<VocabularyWord> vocabulary) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spaceM),
      margin: const EdgeInsets.all(AppTheme.spaceS),
      decoration: AppTheme.questionCardDecoration,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Word ${_currentWordIndex + 1} of ${vocabulary.length}',
                style: AppTheme.bodyTextStyle,
              ),
              Text(
                '${((_currentWordIndex + 1) / vocabulary.length * 100).round()}%',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppTheme.spaceS),
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
                value: (_currentWordIndex + 1) / vocabulary.length,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryGreen),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompactNavigationButtons(bool isLastWord) {
    return Container(
      padding: AppTheme.getScreenPadding(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: _currentWordIndex > 0 
                  ? () => setState(() => _currentWordIndex--)
                  : null,
              icon: const Icon(Icons.arrow_back, size: 20),
              label: const Text(
                'Previous',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade600,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spaceM,
                  vertical: AppTheme.spaceS,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                ),
                elevation: 2,
              ),
            ),
          ),
          const SizedBox(width: AppTheme.spaceM),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: isLastWord ? _showCompletionScreen : () {
                setState(() {
                  _currentWordIndex++;
                  _showMeaning = false;
                });
              },
              icon: Icon(
                isLastWord ? Icons.check : Icons.arrow_forward,
                size: 20,
              ),
              label: Text(
                isLastWord ? 'Complete' : 'Next',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryGreen,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spaceM,
                  vertical: AppTheme.spaceS,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                ),
                elevation: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCompletionScreen() {
    // If there's a test, show it; otherwise show completion
    if (widget.lesson.test != null) {
      // Navigate to comprehensive test screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TestScreen(
            test: widget.lesson.test!,
            lesson: widget.lesson,
            language: widget.language,
            onTestComplete: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => _buildCompletionDialog(),
                ),
              );
            },
          ),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => _buildCompletionDialog(),
        ),
      );
    }
  }

  Widget _buildCompletionDialog() {
    return Scaffold(
      body: Container(
        decoration: AppTheme.screenGradient,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.spaceXL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Completion icon
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [AppTheme.primaryGreen, AppTheme.secondaryGreen],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Icon(
                    Icons.emoji_events,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                
                const SizedBox(height: AppTheme.spaceL),
                
                Text(
                  'Lesson Complete! 🎉',
                  style: AppTheme.headerTextStyle,
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: AppTheme.spaceM),
                
                Text(
                  'You learned ${widget.lesson.words.length} vocabulary words!',
                  style: AppTheme.bodyTextStyle,
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: AppTheme.spaceM),
                
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppTheme.spaceM,
                    vertical: AppTheme.spaceS,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.orange.shade600),
                      const SizedBox(width: AppTheme.spaceS),
                      Text(
                        'Score: $_score points',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: AppTheme.spaceL),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            _currentWordIndex = 0;
                            _score = 0;
                            _showMeaning = false;
                          });
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.replay, size: 20),
                        label: const Text(
                          'Repeat',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryGreen,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppTheme.spaceM,
                            vertical: AppTheme.spaceS,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          ),
                          elevation: 2,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppTheme.spaceM),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                        icon: const Icon(Icons.home, size: 20),
                        label: const Text(
                          'Home',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryGreen,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppTheme.spaceM,
                            vertical: AppTheme.spaceS,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
                          ),
                          elevation: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _speakWord(String word) async {
    await _ttsService.speak(word, widget.language?.code ?? 'en');
  }
}
