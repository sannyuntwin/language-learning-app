import '../models/language.dart';

List<Language> getLanguages() {
  return [
    // English Language
    Language(
      code: 'en',
      name: 'English',
      flag: '🇺🇸',
      lessons: [
        // English - Basic Greetings
        Lesson(
          id: 'en_greetings',
          title: 'Basic Greetings',
          description: 'Learn essential greeting words',
          icon: '👋',
          words: [
            VocabularyWord(
              id: 'hello',
              word: 'hello',
              translation: 'မင်္ဂလာပါ',
              pronunciation: '/həˈloʊ/',
              example: 'Hello, how are you?',
            ),
            VocabularyWord(
              id: 'goodbye',
              word: 'goodbye',
              translation: 'နှုတ်ဆက်ပါတယ်',
              pronunciation: '/ɡʊdˈbaɪ/',
              example: 'Goodbye, see you later!',
            ),
            VocabularyWord(
              id: 'thank_you',
              word: 'thank you',
              translation: '‌ကျေးဇူးတင်ပါတယ်',
              pronunciation: '/θæŋk juː/',
              example: 'Thank you for your help.',
            ),
            VocabularyWord(
              id: 'please',
              word: 'please',
              translation: 'ကျေးဇူးပြု၍',
              pronunciation: '/pliːz/',
              example: 'Please help me.',
            ),
            VocabularyWord(
              id: 'sorry',
              word: 'sorry',
              translation: 'တောင်းပန်းပါတယ်',
              pronunciation: '/ˈsɑːri/',
              example: 'I\'m sorry for being late.',
            ),
          ],
          test: Test(
            id: 'en_greetings_test',
            title: 'Test: Basic Greetings',
            questions: [
              MultipleChoiceQuestion(
                id: 'greeting_1',
                question: 'hello',
                options: ['ขอบคุณ', 'สวัสดี', 'ลาก่อน', 'กรุณา'],
                correctAnswerIndex: 1,
                explanation: '"Hello" in Thai is "สวัสดี"',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_2',
                question: 'How do you say "thank you" in English?',
                options: ['please', 'sorry', 'thank you', 'goodbye'],
                correctAnswerIndex: 2,
                explanation: '"Thank you" is the correct way to express gratitude in English.',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_3',
                question: 'What is the correct way to say "please"?',
                options: ['please', 'pleas', 'pleaz', 'pleese'],
                correctAnswerIndex: 0,
                explanation: '"Please" is spelled with double "e" at the end.',
              ),
              TranslationQuestion(
                id: 'greeting_4',
                question: 'ขอบคุณ',
                word: 'ขอบคุณ',
                translations: ['hello', 'thank you', 'sorry', 'goodbye'],
                correctAnswerIndex: 1,
                explanation: '"ขอบคุณ" means "thank you" in English.',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_5',
                question: 'Which greeting is most commonly used?',
                options: ['goodbye', 'hello', 'sorry', 'please'],
                correctAnswerIndex: 1,
                explanation: '"Hello" is the most common greeting in English.',
              ),
              TranslationQuestion(
                id: 'greeting_6',
                question: 'goodbye',
                word: 'goodbye',
                translations: ['hello', 'thank you', 'farewell', 'sorry'],
                correctAnswerIndex: 2,
                explanation: '"Goodbye" means farewell or see you later.',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_7',
                question: 'When do you say "sorry"?',
                options: ['when greeting', 'when apologizing', 'when thanking', 'when leaving'],
                correctAnswerIndex: 1,
                explanation: '"Sorry" is used when apologizing or expressing regret.',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_8',
                question: 'What comes after "please"?',
                options: ['thank you', 'hello', 'sorry', 'goodbye'],
                correctAnswerIndex: 0,
                explanation: '"Please" and "thank you" often go together in polite conversation.',
              ),
              TranslationQuestion(
                id: 'greeting_9',
                question: 'please',
                word: 'please',
                translations: ['ขอบคุณ', 'กรุณา', 'สวัสดี', 'ขอโทษ'],
                correctAnswerIndex: 1,
                explanation: '"กรุณา" means "please" in Thai.',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_10',
                question: 'Complete: "Hello, how are ___?"',
                options: ['your', 'you', 'yours', 'you\'re'],
                correctAnswerIndex: 1,
                explanation: 'The correct phrase is "Hello, how are you?"',
              ),
              MultipleChoiceQuestion(
                id: 'greeting_11',
                question: 'Which is NOT a greeting?',
                options: ['hello', 'goodbye', 'sorry', 'hi'],
                correctAnswerIndex: 2,
                explanation: '"Sorry" is an apology, not a greeting.',
              ),
              TranslationQuestion(
                id: 'greeting_12',
                question: 'thank you',
                word: 'thank you',
                translations: ['greeting', 'gratitude', 'apology', 'question'],
                correctAnswerIndex: 1,
                explanation: '"Thank you" expresses gratitude or appreciation.',
              ),
              
              // Fill in the Blank Question
              FillInBlankQuestion(
                id: 'greeting_13',
                question: 'Complete the sentence:',
                sentence: 'Hello, how are ___ today?',
                correctWord: 'you',
                options: ['your', 'you', 'yours', 'you\'re'],
                explanation: 'The correct phrase is "Hello, how are you today?"',
              ),
              
              // Listening Question
              ListeningQuestion(
                id: 'greeting_14',
                question: 'Listen and select what you heard:',
                audioText: 'thank you',
                options: ['hello', 'thank you', 'goodbye', 'please'],
                correctAnswerIndex: 1,
                explanation: 'You heard "thank you" which means expressing gratitude.',
              ),
              
              // Sentence Building Question
              SentenceBuildingQuestion(
                id: 'greeting_15',
                question: 'Build a sentence:',
                wordOptions: ['Hello', 'my', 'friend', 'how', 'are', 'you'],
                correctSentence: ['Hello', 'my', 'friend', 'how', 'are', 'you'],
                explanation: 'A friendly greeting in English.',
              ),
              
              // Word Order Question
              WordOrderQuestion(
                id: 'greeting_16',
                question: 'Arrange these words to form a correct sentence:',
                scrambledWords: ['thank', 'very', 'you', 'much'],
                correctOrder: ['thank', 'you', 'very', 'much'],
                explanation: '"Thank you very much" is the correct order.',
              ),
            ],
          ),
        ),
        
        // English - Numbers
        Lesson(
          id: 'en_numbers',
          title: 'Numbers 1-10',
          description: 'Learn basic numbers in English',
          icon: '🔢',
          words: [
            VocabularyWord(
              id: 'one',
              word: 'one',
              translation: 'หนึ่ง',
              pronunciation: '/wʌn/',
              example: 'I have one apple.',
            ),
            VocabularyWord(
              id: 'two',
              word: 'two',
              translation: 'สอง',
              pronunciation: '/tuː/',
              example: 'Two birds in the tree.',
            ),
            VocabularyWord(
              id: 'three',
              word: 'three',
              translation: 'สาม',
              pronunciation: '/θriː/',
              example: 'Three little pigs.',
            ),
            VocabularyWord(
              id: 'four',
              word: 'four',
              translation: 'สี่',
              pronunciation: '/fɔːr/',
              example: 'Four wheels on a car.',
            ),
            VocabularyWord(
              id: 'five',
              word: 'five',
              translation: 'ห้า',
              pronunciation: '/faɪv/',
              example: 'Five fingers on a hand.',
            ),
          ],
        ),
        
        // English - Colors
        Lesson(
          id: 'en_colors',
          title: 'Basic Colors',
          description: 'Learn color names in English',
          icon: '🎨',
          words: [
            VocabularyWord(
              id: 'red',
              word: 'red',
              translation: 'แดง',
              pronunciation: '/red/',
              example: 'The apple is red.',
            ),
            VocabularyWord(
              id: 'blue',
              word: 'blue',
              translation: 'น้ำเงิน',
              pronunciation: '/bluː/',
              example: 'The sky is blue.',
            ),
            VocabularyWord(
              id: 'green',
              word: 'green',
              translation: 'เขียว',
              pronunciation: '/ɡriːn/',
              example: 'Grass is green.',
            ),
            VocabularyWord(
              id: 'yellow',
              word: 'yellow',
              translation: 'เหลือง',
              pronunciation: '/ˈjeloʊ/',
              example: 'The sun is yellow.',
            ),
          ],
          test: Test(
            id: 'en_numbers_test',
            title: 'Test: Numbers 1-5',
            questions: [
              MultipleChoiceQuestion(
                id: 'number_1',
                question: 'What number comes after 2?',
                options: ['1', '3', '4', '5'],
                correctAnswerIndex: 1,
                explanation: '3 comes after 2 in the number sequence.',
              ),
              MultipleChoiceQuestion(
                id: 'number_2',
                question: 'How do you write "three"?',
                options: ['2', '3', '4', '5'],
                correctAnswerIndex: 1,
                explanation: '3 is the numerical representation of "three".',
              ),
              TranslationQuestion(
                id: 'number_3',
                question: 'สาม',
                word: 'สาม',
                translations: ['one', 'two', 'three', 'four'],
                correctAnswerIndex: 2,
                explanation: '"สาม" means "three" in English.',
              ),
              MultipleChoiceQuestion(
                id: 'number_4',
                question: 'What is the smallest number shown?',
                options: ['1', '2', '3', '5'],
                correctAnswerIndex: 0,
                explanation: '1 is the smallest number in the list.',
              ),
              MultipleChoiceQuestion(
                id: 'number_5',
                question: 'How many fingers on one hand?',
                options: ['3', '4', '5', '6'],
                correctAnswerIndex: 2,
                explanation: 'There are 5 fingers on one hand.',
              ),
              TranslationQuestion(
                id: 'number_6',
                question: 'ห้า',
                word: 'ห้า',
                translations: ['two', 'three', 'four', 'five'],
                correctAnswerIndex: 3,
                explanation: '"ห้า" means "five" in English.',
              ),
              MultipleChoiceQuestion(
                id: 'number_7',
                question: 'Complete the sequence: 1, 2, 3, ?',
                options: ['2', '4', '5', '6'],
                correctAnswerIndex: 1,
                explanation: 'The pattern increases by 1, so 4 comes next.',
              ),
              MultipleChoiceQuestion(
                id: 'number_8',
                question: 'Which number is spelled with 4 letters?',
                options: ['one', 'two', 'four', 'five'],
                correctAnswerIndex: 2,
                explanation: '"four" has 4 letters.',
              ),
              TranslationQuestion(
                id: 'number_9',
                question: '4',
                word: '4',
                translations: ['หนึ่ง', 'สอง', 'สาม', 'สี่'],
                correctAnswerIndex: 3,
                explanation: '"สี่" means "4" in Thai.',
              ),
              MultipleChoiceQuestion(
                id: 'number_10',
                question: 'What is the sum of 2 + 3?',
                options: ['4', '5', '6', '7'],
                correctAnswerIndex: 1,
                explanation: '2 + 3 = 5',
              ),
              MultipleChoiceQuestion(
                id: 'number_11',
                question: 'Which number is even?',
                options: ['1', '2', '3', '5'],
                correctAnswerIndex: 1,
                explanation: '2 is an even number.',
              ),
              MultipleChoiceQuestion(
                id: 'number_12',
                question: 'How many sides does a triangle have?',
                options: ['2', '3', '4', '5'],
                correctAnswerIndex: 1,
                explanation: 'A triangle has 3 sides.',
              ),
            ],
          ),
        ),
    
      ],
    ),
    
    // Thai Language
    Language(
      code: 'th',
      name: 'Thai',
      flag: '🇹🇭',
      lessons: [
        // Thai - Basic Greetings
        Lesson(
          id: 'th_greetings',
          title: 'Thai Greetings',
          description: 'ထိုင်းဘာသာ မင်္ဂလာစကားများကို လေ့လာမည်',
          icon: '🙏',
          words: [
            VocabularyWord(
              id: 'th_hello',
              word: 'สวัสดี',
              translation: 'မင်္ဂလာပါ',
              pronunciation: '/sa-wa-dee/',
              example: 'สวัสดีครับ (မင်္ဂလာပါ)',
            ),
            VocabularyWord(
              id: 'th_thank_you',
              word: 'ขอบคุณ',
              translation: 'ကျေးဇူးတင်ပါတယ်',
              pronunciation: '/khop-khun/',
              example: 'ขอบคุณครับ (ကျေးဇူးတင်ပါတယ်)',
            ),
            VocabularyWord(
              id: 'th_sorry',
              word: 'ขอโทษ',
              translation: 'တောင်းပန်ပါတယ်',
              pronunciation: '/khor-thot/',
              example: 'ขอโทษครับ (တောင်းပန်ပါတယ်)',
            ),
            VocabularyWord(
              id: 'th_goodbye',
              word: 'ลาก่อน',
              translation: 'နှုတ်ဆက်ပါတယ်',
              pronunciation: '/la-gorn/',
              example: 'ลาก่อนนะ (နှုတ်ဆက်ပါတယ်)',
            ),
            VocabularyWord(
              id: 'th_yes',
              word: 'ใช่',
              translation: 'ဟုတ်ပါတယ်',
              pronunciation: '/chai/',
              example: 'ใช่ครับ (ဟုတ်ပါတယ်)',
            ),
            VocabularyWord(
              id: 'th_no',
              word: 'ไม่',
              translation: 'မဟုတ်ပါ',
              pronunciation: '/mai/',
              example: 'ไม่ครับ (မဟုတ်ပါ)',
            ),
            VocabularyWord(
              id: 'th_please',
              word: 'กรุณา',
              translation: 'ကျေးဇူးပြု၍',
              pronunciation: '/ka-ru-na/',
              example: 'กรุณารอ (ကျေးဇူးပြု၍ စောင့်ပါ)',
            ),
            VocabularyWord(
              id: 'th_welcome',
              word: 'ยินดีต้อนรับ',
              translation: 'ကြိုဆိုပါတယ်',
              pronunciation: '/yin-dee-ton-rub/',
              example: 'ยินดีต้อนรับครับ (ကြိုဆိုပါတယ်)',
            ),
            VocabularyWord(
              id: 'th_morning',
              word: 'สวัสดีตอนเช้า',
              translation: 'မနက်ခင်းမင်္ဂလာပါ',
              pronunciation: '/sa-wa-dee-ton-chao/',
              example: 'สวัสดีตอนเช้าครับ (မနက်ခင်းမင်္ဂလာပါ)',
            ),
            VocabularyWord(
              id: 'th_night',
              word: 'ราตรีสวัสดิ์',
              translation: 'ညချမ်းသာပါစေ',
              pronunciation: '/ra-tree-sa-wat/',
              example: 'ราตรีสวัสดิ์ครับ (ညချမ်းသာပါစေ)',
            ),

          ],

  test: Test(
    id: 'th_greetings_test',
    title: 'စမ်းသပ်မှု - မင်္ဂလာစကားများ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_mc_1',
        question: 'สวัสดี',
        options: ['နှုတ်ဆက်ပါတယ်', 'မင်္ဂလာပါ', 'တောင်းပန်ပါတယ်', 'ကျေးဇူးတင်ပါတယ်'],
        correctAnswerIndex: 1,
        explanation: 'สวัสดี = မင်္ဂလာပါ',
      ),
      MultipleChoiceQuestion(
        id: 'th_mc_2',
        question: 'ขอบคุณ',
        options: ['ขอโทษ', 'ลาก่อน', 'ขอบคุณ', 'ไม่'],
        correctAnswerIndex: 2,
        explanation: 'ขอบคุณ = ကျေးဇူးတင်ပါတယ်',
      ),
      MultipleChoiceQuestion(
        id: 'th_mc_3',
        question: 'ไม่',
        options: ['ဟုတ်ပါတယ်', 'မဟုတ်ပါ', 'ကြိုဆိုပါတယ်', 'မင်္ဂလာပါ'],
        correctAnswerIndex: 1,
        explanation: 'ไม่ = မဟုတ်ပါ',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_tr_1',
        question: 'translate',
        word: 'မင်္ဂလာပါ',
        translations: ['สวัสดี', 'ลาก่อน', 'ขอบคุณ', 'ขอโทษ'],
        correctAnswerIndex: 0,
        explanation: 'မင်္ဂလာပါ = สวัสดี',
      ),
      TranslationQuestion(
        id: 'th_tr_2',
        question: 'translate',
        word: 'ขอโทษ',
        translations: ['နှုတ်ဆက်ပါတယ်', 'တောင်းပန်ပါတယ်', 'ကျေးဇူးတင်ပါတယ်', 'ကြိုဆိုပါတယ်'],
        correctAnswerIndex: 1,
        explanation: 'ขอโทษ = တောင်းပန်ပါတယ်',
      ),
      TranslationQuestion(
        id: 'th_tr_3',
        question: 'translate',
        word: 'တောင်းပန်ပါတယ်',
        translations: ['ขอบคุณ', 'ขอโทษ', 'ลาก่อน', 'ไม่'],
        correctAnswerIndex: 1,
        explanation: 'တောင်းပန်ပါတယ် = ขอโทษ',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_fill_1',
        question: 'fill in the blank',
        sentence: '_____ ครับ',
        correctWord: 'สวัสดี',
        options: ['สวัสดี', 'ลาก่อน', 'ขอบคุณ', 'ไม่'],
        explanation: 'สวัสดีครับ = မင်္ဂလာပါ',
      ),
      FillInBlankQuestion(
        id: 'th_fill_2',
        question: 'fill in the blank',
        sentence: '_____ ครับ',
        correctWord: 'ขอบคุณ',
        options: ['ขอโทษ', 'ขอบคุณ', 'ลาก่อน', 'ไม่'],
        explanation: 'ขอบคุณครับ = ကျေးဇူးတင်ပါတယ်',
      ),
      FillInBlankQuestion(
        id: 'th_fill_3',
        question: 'fill in the blank',
        sentence: '_____ ครับ',
        correctWord: 'ขอโทษ',
        options: ['ขอโทษ', 'ขอบคุณ', 'ไม่', 'กรุณา'],
        explanation: 'ขอโทษครับ = တောင်းပန်ပါတယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_listen_1',
        audioText: 'สวัสดี',
        question: 'listen and select what you heard',
        options: ['မင်္ဂလာပါ', 'နှုတ်ဆက်ပါတယ်', 'ကျေးဇူးတင်ပါတယ်', 'မဟုတ်ပါ'],
        correctAnswerIndex: 0,
        explanation: 'สวัสดี = မင်္ဂလာပါ',
      ),
      ListeningQuestion(
        id: 'th_listen_2',
        audioText: 'ขอบคุณ',
        question: 'listen and select what you heard',
        options: ['တောင်းပန်ပါတယ်', 'ကျေးဇူးတင်ပါတယ်', 'ကြိုဆိုပါတယ်', 'မဟုတ်ပါ'],
        correctAnswerIndex: 1,
        explanation: 'ขอบคุณ = ကျေးဇူးတင်ပါတယ်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_sentence_1',
        question: 'set up the sentence',
        wordOptions: ['สวัสดี', 'ครับ'],
        correctSentence: ['สวัสดี', 'ครับ'],
        explanation: 'ထိုင်းဘာသာတွင် ယဉ်ကျေးစကားဖြစ်သည်',
      ),
      SentenceBuildingQuestion(
        id: 'th_sentence_2',
        question: 'set up the sentence',
        wordOptions: ['ขอบคุณ', 'ครับ'],
        correctSentence: ['ขอบคุณ', 'ครับ'],
        explanation: 'ယဉ်ကျေးစွာ ကျေးဇူးတင်ပြောခြင်း',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_order_1',
        question: 'word order',
        scrambledWords: ['ครับ', 'สวัสดี'],
        correctOrder: ['สวัสดี', 'ครับ'],
        explanation: 'ครับ သည် နောက်ဆုံးတွင် လာသည်',
      ),
      WordOrderQuestion(
        id: 'th_order_2',
        question: 'word order',
        scrambledWords: ['ครับ', 'ขอบคุณ'],
        correctOrder: ['ขอบคุณ', 'ครับ'],
        explanation: 'ယဉ်ကျေးစကားအဆုံးတွင် ထည့်သည်',
      ),

    ],
  ),
),
    
        // Thai - Numbers
        Lesson(
          id: 'th_numbers',
          title: 'Thai Numbers',
          description: 'ထိုင်းဘာသာ ကိန်းဂဏန်းများကို လေ့လာမည်',
          icon: '🔢',
          words: [

            VocabularyWord(
              id: 'th_zero',
              word: 'ศูนย์',
              translation: 'သုည',
              pronunciation: '/soon/',
              example: 'ศูนย์บาท (သုည ဘတ်)',
            ),
            VocabularyWord(
              id: 'th_one',
              word: 'หนึ่ง',
              translation: 'တစ်',
              pronunciation: '/nueng/',
              example: 'หนึ่งคน (လူတစ်ယောက်)',
            ),
            VocabularyWord(
              id: 'th_two',
              word: 'สอง',
              translation: 'နှစ်',
              pronunciation: '/song/',
              example: 'สองคน (လူနှစ်ယောက်)',
            ),
            VocabularyWord(
              id: 'th_three',
              word: 'สาม',
              translation: 'သုံး',
              pronunciation: '/saam/',
              example: 'สามวัน (သုံးရက်)',
            ),
            VocabularyWord(
              id: 'th_four',
              word: 'สี่',
              translation: 'လေး',
              pronunciation: '/see/',
              example: 'สี่โมง (လေးနာရီ)',
            ),
            VocabularyWord(
              id: 'th_five',
              word: 'ห้า',
              translation: 'ငါး',
              pronunciation: '/ha/',
              example: 'ห้าคน (လူငါးယောက်)',
            ),
            VocabularyWord(
              id: 'th_six',
              word: 'หก',
              translation: 'ခြောက်',
              pronunciation: '/hok/',
              example: 'หกวัน (ခြောက်ရက်)',
            ),
            VocabularyWord(
              id: 'th_seven',
              word: 'เจ็ด',
              translation: 'ခုနှစ်',
              pronunciation: '/jet/',
              example: 'เจ็ดโมง (ခုနှစ်နာရီ)',
            ),
            VocabularyWord(
              id: 'th_eight',
              word: 'แปด',
              translation: 'ရှစ်',
              pronunciation: '/paet/',
              example: 'แปดบาท (ရှစ်ဘတ်)',
            ),
            VocabularyWord(
              id: 'th_nine',
              word: 'เก้า',
              translation: 'ကိုး',
              pronunciation: '/gao/',
              example: 'เก้าคน (လူကိုးယောက်)',
            ),
  ],

  test: Test(
    id: 'th_numbers_test',
    title: 'စမ်းသပ်မှု - ကိန်းဂဏန်းများ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_num_mc_1',
        question: 'หนึ่ง',
        options: ['နှစ်', 'တစ်', 'သုံး', 'လေး'],
        correctAnswerIndex: 1,
        explanation: 'หนึ่ง = တစ်',
      ),
      MultipleChoiceQuestion(
        id: 'th_num_mc_2',
        question: 'ห้า',
        options: ['လေး', 'ငါး', 'ခြောက်', 'ခုနှစ်'],
        correctAnswerIndex: 1,
        explanation: 'ห้า = ငါး',
      ),
      MultipleChoiceQuestion(
        id: 'th_num_mc_3',
        question: 'ศูนย์',
        options: ['တစ်', 'သုည', 'နှစ်', 'သုံး'],
        correctAnswerIndex: 1,
        explanation: 'ศูนย์ = သုည',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_num_tr_1',
        question: 'သုံး',
        word: 'သုံး',
        translations: ['สอง', 'สาม', 'สี่', 'ห้า'],
        correctAnswerIndex: 1,
        explanation: 'သုံး = สาม',
      ),
      TranslationQuestion(
        id: 'th_num_tr_2',
        question: 'เจ็ด',
        word: 'เจ็ด',
        translations: ['ခြောက်', 'ခုနှစ်', 'ရှစ်', 'ကိုး'],
        correctAnswerIndex: 1,
        explanation: 'เจ็ด = ခုနှစ်',
      ),
      TranslationQuestion(
        id: 'th_num_tr_3',
        question: 'ကိုး',
        word: 'ကိုး',
        translations: ['แปด', 'เก้า', 'เจ็ด', 'หก'],
        correctAnswerIndex: 1,
        explanation: 'ကိုး = เก้า',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_num_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: '_____ คน',
        correctWord: 'สอง',
        options: ['หนึ่ง', 'สอง', 'สาม', 'สี่'],
        explanation: 'สองคน = လူနှစ်ယောက်',
      ),
      FillInBlankQuestion(
        id: 'th_num_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: '_____ บาท',
        correctWord: 'ห้า',
        options: ['สาม', 'สี่', 'ห้า', 'หก'],
        explanation: 'ห้าบาท = ငါးဘတ်',
      ),
      FillInBlankQuestion(
        id: 'th_num_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: '_____ วัน',
        correctWord: 'เจ็ด',
        options: ['หก', 'เจ็ด', 'แปด', 'เก้า'],
        explanation: 'เจ็ดวัน = ခုနှစ်ရက်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_num_listen_1',
        audioText: 'สาม',
        question: 'ကြားရသော ကိန်းဂဏန်းမှာ?',
        options: ['နှစ်', 'သုံး', 'လေး', 'ငါး'],
        correctAnswerIndex: 1,
        explanation: 'สาม = သုံး',
      ),
      ListeningQuestion(
        id: 'th_num_listen_2',
        audioText: 'แปด',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ခုနှစ်', 'ရှစ်', 'ကိုး', 'ခြောက်'],
        correctAnswerIndex: 1,
        explanation: 'แปด = ရှစ်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_num_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['สาม', 'คน'],
        correctSentence: ['สาม', 'คน'],
        explanation: 'လူသုံးယောက်',
      ),
      SentenceBuildingQuestion(
        id: 'th_num_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ห้า', 'บาท'],
        correctSentence: ['ห้า', 'บาท'],
        explanation: 'ငါးဘတ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_num_order_1',
        question: 'စီပါ',
        scrambledWords: ['คน', 'สอง'],
        correctOrder: ['สอง', 'คน'],
        explanation: 'ထိုင်းဘာသာတွင် ကိန်းဂဏန်းအရင် လာသည်',
      ),
      WordOrderQuestion(
        id: 'th_num_order_2',
        question: 'စီပါ',
        scrambledWords: ['บาท', 'เก้า'],
        correctOrder: ['เก้า', 'บาท'],
        explanation: 'ကိန်းဂဏန်း + ယူနစ်',
      ),

    ],
  ),
),
        
        // Thai - Daily Activities
        Lesson(
  id: 'th_daily_activities',
  title: 'Thai Daily Activities',
  description: 'ထိုင်းဘာသာ နေ့စဉ် လုပ်ဆောင်မှုများကို လေ့လာမည်',
  icon: '🕒',
  words: [

    VocabularyWord(
      id: 'th_wake_up',
      word: 'ตื่น',
      translation: 'နိုးထ',
      pronunciation: '/tuen/',
      example: 'ฉันตื่นเช้า (ကျွန်တော် မနက်စောစော နိုးတယ်)',
    ),
    VocabularyWord(
      id: 'th_sleep',
      word: 'นอน',
      translation: 'အိပ်',
      pronunciation: '/non/',
      example: 'ฉันนอนเร็ว (ကျွန်တော် စောစော အိပ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_eat',
      word: 'กิน',
      translation: 'စား',
      pronunciation: '/gin/',
      example: 'ฉันกินข้าว (ကျွန်တော် ထမင်းစားတယ်)',
    ),
    VocabularyWord(
      id: 'th_drink',
      word: 'ดื่ม',
      translation: 'သောက်',
      pronunciation: '/duem/',
      example: 'ฉันดื่มน้ำ (ကျွန်တော် ရေသောက်တယ်)',
    ),
    VocabularyWord(
      id: 'th_work',
      word: 'ทำงาน',
      translation: 'အလုပ်လုပ်',
      pronunciation: '/tham-ngan/',
      example: 'ฉันทำงานทุกวัน (ကျွန်တော် နေ့တိုင်း အလုပ်လုပ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_study',
      word: 'เรียน',
      translation: 'လေ့လာ / စာသင်',
      pronunciation: '/rian/',
      example: 'ฉันเรียนภาษาไทย (ကျွန်တော် ထိုင်းစာ လေ့လာတယ်)',
    ),
    VocabularyWord(
      id: 'th_go',
      word: 'ไป',
      translation: 'သွား',
      pronunciation: '/pai/',
      example: 'ฉันไปโรงเรียน (ကျွန်တော် ကျောင်းသွားတယ်)',
    ),
    VocabularyWord(
      id: 'th_come',
      word: 'มา',
      translation: 'လာ',
      pronunciation: '/maa/',
      example: 'เขามาบ้าน (သူ အိမ်ကို လာတယ်)',
    ),
    VocabularyWord(
      id: 'th_bathe',
      word: 'อาบน้ำ',
      translation: 'ရေချိုး',
      pronunciation: '/aap-nam/',
      example: 'ฉันอาบน้ำเช้า (ကျွန်တော် မနက်ရေချိုးတယ်)',
    ),
    VocabularyWord(
      id: 'th_rest',
      word: 'พัก',
      translation: 'အနားယူ',
      pronunciation: '/phak/',
      example: 'ฉันพักผ่อน (ကျွန်တော် အနားယူတယ်)',
    ),

  ],

  test: Test(
    id: 'th_daily_test',
    title: 'စမ်းသပ်မှု - နေ့စဉ် လုပ်ဆောင်မှုများ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_day_mc_1',
        question: 'กิน',
        options: ['သောက်', 'စား', 'သွား', 'အိပ်'],
        correctAnswerIndex: 1,
        explanation: 'กิน = စား',
      ),
      MultipleChoiceQuestion(
        id: 'th_day_mc_2',
        question: 'นอน',
        options: ['နိုးထ', 'အိပ်', 'လာ', 'အလုပ်လုပ်'],
        correctAnswerIndex: 1,
        explanation: 'นอน = အိပ်',
      ),
      MultipleChoiceQuestion(
        id: 'th_day_mc_3',
        question: 'ทำงาน',
        options: ['စာသင်', 'အလုပ်လုပ်', 'အနားယူ', 'ရေချိုး'],
        correctAnswerIndex: 1,
        explanation: 'ทำงาน = အလုပ်လုပ်',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_day_tr_1',
        question: 'စား',
        word: 'စား',
        translations: ['ดื่ม', 'กิน', 'ไป', 'มา'],
        correctAnswerIndex: 1,
        explanation: 'စား = กิน',
      ),
      TranslationQuestion(
        id: 'th_day_tr_2',
        question: 'เรียน',
        word: 'เรียน',
        translations: ['အလုပ်လုပ်', 'လေ့လာ', 'အနားယူ', 'အိပ်'],
        correctAnswerIndex: 1,
        explanation: 'เรียน = လေ့လာ / စာသင်',
      ),
      TranslationQuestion(
        id: 'th_day_tr_3',
        question: 'လာ',
        word: 'လာ',
        translations: ['ไป', 'มา', 'พัก', 'นอน'],
        correctAnswerIndex: 1,
        explanation: 'လာ = มา',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_day_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ ข้าว',
        correctWord: 'กิน',
        options: ['กิน', 'ดื่ม', 'นอน', 'ไป'],
        explanation: 'กินข้าว = ထမင်းစား',
      ),
      FillInBlankQuestion(
        id: 'th_day_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ น้ำ',
        correctWord: 'ดื่ม',
        options: ['กิน', 'ดื่ม', 'พัก', 'มา'],
        explanation: 'ดื่มน้ำ = ရေသောက်',
      ),
      FillInBlankQuestion(
        id: 'th_day_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ ภาษาไทย',
        correctWord: 'เรียน',
        options: ['ทำงาน', 'เรียน', 'พัก', 'ไป'],
        explanation: 'เรียนภาษาไทย = ထိုင်းစာ လေ့လာ',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_day_listen_1',
        audioText: 'นอน',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['အိပ်', 'စား', 'သောက်', 'လာ'],
        correctAnswerIndex: 0,
        explanation: 'นอน = အိပ်',
      ),
      ListeningQuestion(
        id: 'th_day_listen_2',
        audioText: 'ไป',
        question: 'အဓိပ္ပါယ်?',
        options: ['လာ', 'သွား', 'အလုပ်လုပ်', 'အနားယူ'],
        correctAnswerIndex: 1,
        explanation: 'ไป = သွား',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_day_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'กิน', 'ข้าว'],
        correctSentence: ['ฉัน', 'กิน', 'ข้าว'],
        explanation: 'ကျွန်တော် ထမင်းစားတယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_day_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'อาบน้ำ'],
        correctSentence: ['ฉัน', 'อาบน้ำ'],
        explanation: 'ကျွန်တော် ရေချိုးတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_day_order_1',
        question: 'စီပါ',
        scrambledWords: ['ทำงาน', 'ฉัน'],
        correctOrder: ['ฉัน', 'ทำงาน'],
        explanation: 'ထိုင်းဘာသာတွင် အကြောင်းအရာအရင် လာသည်',
      ),
      WordOrderQuestion(
        id: 'th_day_order_2',
        question: 'စီပါ',
        scrambledWords: ['ภาษาไทย', 'เรียน', 'ฉัน'],
        correctOrder: ['ฉัน', 'เรียน', 'ภาษาไทย'],
        explanation: 'စံထားသော ထိုင်း စာကြောင်းပုံစံ',
      ),

    ],
  ),
),

        // Thai - Family
        Lesson(
  id: 'th_family',
  title: 'Thai Family',
  description: 'ထိုင်းဘာသာ မိသားစုဆိုင်ရာ စကားလုံးများကို လေ့လာမည်',
  icon: '👨‍👩‍👧',
  words: [

    VocabularyWord(
      id: 'th_family',
      word: 'ครอบครัว',
      translation: 'မိသားစု',
      pronunciation: '/krop-krua/',
      example: 'ฉันรักครอบครัว (ကျွန်တော် မိသားစုကို ချစ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_father',
      word: 'พ่อ',
      translation: 'အဖေ',
      pronunciation: '/phor/',
      example: 'พ่อของฉัน (ကျွန်တော်၏ အဖေ)',
    ),
    VocabularyWord(
      id: 'th_mother',
      word: 'แม่',
      translation: 'အမေ',
      pronunciation: '/mae/',
      example: 'แม่ของฉัน (ကျွန်တော်၏ အမေ)',
    ),
    VocabularyWord(
      id: 'th_son',
      word: 'ลูกชาย',
      translation: 'သား',
      pronunciation: '/luk-chaai/',
      example: 'เขาเป็นลูกชาย (သူက သား ဖြစ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_daughter',
      word: 'ลูกสาว',
      translation: 'သမီး',
      pronunciation: '/luk-sao/',
      example: 'เธอเป็นลูกสาว (သူမက သမီး ဖြစ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_older_brother',
      word: 'พี่ชาย',
      translation: 'အစ်ကို',
      pronunciation: '/phii-chaai/',
      example: 'พี่ชายของฉัน (ကျွန်တော်၏ အစ်ကို)',
    ),
    VocabularyWord(
      id: 'th_younger_brother',
      word: 'น้องชาย',
      translation: 'ညီ',
      pronunciation: '/nong-chaai/',
      example: 'น้องชายของฉัน (ကျွန်တော်၏ ညီ)',
    ),
    VocabularyWord(
      id: 'th_older_sister',
      word: 'พี่สาว',
      translation: 'အစ်မ',
      pronunciation: '/phii-sao/',
      example: 'พี่สาวของฉัน (ကျွန်တော်၏ အစ်မ)',
    ),
    VocabularyWord(
      id: 'th_younger_sister',
      word: 'น้องสาว',
      translation: 'ညီမ',
      pronunciation: '/nong-sao/',
      example: 'น้องสาวของฉัน (ကျွန်တော်၏ ညီမ)',
    ),
    VocabularyWord(
      id: 'th_parent',
      word: 'พ่อแม่',
      translation: 'မိဘ',
      pronunciation: '/phor-mae/',
      example: 'ฉันรักพ่อแม่ (ကျွန်တော် မိဘကို ချစ်တယ်)',
    ),

  ],

  test: Test(
    id: 'th_family_test',
    title: 'စမ်းသပ်မှု - မိသားစု',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_fam_mc_1',
        question: 'พ่อ',
        options: ['အမေ', 'အဖေ', 'အစ်ကို', 'ညီ'],
        correctAnswerIndex: 1,
        explanation: 'พ่อ = အဖေ',
      ),
      MultipleChoiceQuestion(
        id: 'th_fam_mc_2',
        question: 'แม่',
        options: ['အမေ', 'အဖေ', 'သမီး', 'သား'],
        correctAnswerIndex: 0,
        explanation: 'แม่ = အမေ',
      ),
      MultipleChoiceQuestion(
        id: 'th_fam_mc_3',
        question: 'ครอบครัว',
        options: ['မိဘ', 'ညီအစ်ကို', 'မိသားစု', 'သူငယ်ချင်း'],
        correctAnswerIndex: 2,
        explanation: 'ครอบครัว = မိသားစု',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_fam_tr_1',
        question: 'အစ်မ',
        word: 'အစ်မ',
        translations: ['พี่สาว', 'น้องสาว', 'แม่', 'ลูกสาว'],
        correctAnswerIndex: 0,
        explanation: 'အစ်မ = พี่สาว',
      ),
      TranslationQuestion(
        id: 'th_fam_tr_2',
        question: 'ลูกชาย',
        word: 'ลูกชาย',
        translations: ['သမီး', 'သား', 'အဖေ', 'ညီ'],
        correctAnswerIndex: 1,
        explanation: 'ลูกชาย = သား',
      ),
      TranslationQuestion(
        id: 'th_fam_tr_3',
        question: 'ညီ',
        word: 'ညီ',
        translations: ['พี่ชาย', 'น้องชาย', 'ลูกชาย', 'พ่อ'],
        correctAnswerIndex: 1,
        explanation: 'ညီ = น้องชาย',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_fam_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'พ่อ และ _____ ของฉัน',
        correctWord: 'แม่',
        options: ['แม่', 'พี่ชาย', 'ลูกสาว', 'น้องชาย'],
        explanation: 'พ่อ และ แม่ = မိဘ',
      ),
      FillInBlankQuestion(
        id: 'th_fam_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: 'ฉันรัก _____',
        correctWord: 'ครอบครัว',
        options: ['ครอบครัว', 'พี่สาว', 'ลูกชาย', 'น้องสาว'],
        explanation: 'ฉันรักครอบครัว = မိသားစုကို ချစ်တယ်',
      ),
      FillInBlankQuestion(
        id: 'th_fam_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'เธอเป็น _____',
        correctWord: 'ลูกสาว',
        options: ['ลูกสาว', 'พ่อ', 'พี่ชาย', 'น้องชาย'],
        explanation: 'ลูกสาว = သမီး',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_fam_listen_1',
        audioText: 'พี่ชาย',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['အစ်ကို', 'ညီ', 'အဖေ', 'သား'],
        correctAnswerIndex: 0,
        explanation: 'พี่ชาย = အစ်ကို',
      ),
      ListeningQuestion(
        id: 'th_fam_listen_2',
        audioText: 'น้องสาว',
        question: 'နားထောင်ပြီး ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['အစ်မ', 'ညီမ', 'သမီး', 'အမေ'],
        correctAnswerIndex: 1,
        explanation: 'น้องสาว = ညီမ',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_fam_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'รัก', 'ครอบครัว'],
        correctSentence: ['ฉัน', 'รัก', 'ครอบครัว'],
        explanation: 'ကျွန်တော် မိသားစုကို ချစ်တယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_fam_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['พ่อ', 'แม่'],
        correctSentence: ['พ่อ', 'แม่'],
        explanation: 'အဖေ နှင့် အမေ',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_fam_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['ครอบครัว', 'ฉัน'],
        correctOrder: ['ฉัน', 'ครอบครัว'],
        explanation: 'အကြောင်းအရာကို အရင်ထားရသည်',
      ),
      WordOrderQuestion(
        id: 'th_fam_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['รัก', 'ฉัน', 'พ่อแม่'],
        correctOrder: ['ฉัน', 'รัก', 'พ่อแม่'],
        explanation: 'ထိုင်း စာကြောင်းစံပုံစံ',
      ),

    ],
  ),
),
        
        // Thai - Colors
        Lesson(
  id: 'th_colors',
  title: 'Thai Colors',
  description: 'ထိုင်းဘာသာ အရောင်များကို လေ့လာမည်',
  icon: '🎨',
  words: [

    VocabularyWord(
      id: 'th_color_red',
      word: 'สีแดง',
      translation: 'အနီရောင်',
      pronunciation: '/see-daeng/',
      example: 'เสื้อสีแดง (အနီရောင် အင်္ကျီ)',
    ),
    VocabularyWord(
      id: 'th_color_blue',
      word: 'สีน้ำเงิน',
      translation: 'အပြာရောင်',
      pronunciation: '/see-nam-ngoen/',
      example: 'ท้องฟ้าสีน้ำเงิน (အပြာရောင် မိုးကောင်းကင်)',
    ),
    VocabularyWord(
      id: 'th_color_green',
      word: 'สีเขียว',
      translation: 'အစိမ်းရောင်',
      pronunciation: '/see-khiao/',
      example: 'ใบไม้สีเขียว (အစိမ်းရောင် သစ်ရွက်)',
    ),
    VocabularyWord(
      id: 'th_color_yellow',
      word: 'สีเหลือง',
      translation: 'အဝါရောင်',
      pronunciation: '/see-lueang/',
      example: 'ดอกไม้สีเหลือง (အဝါရောင် ပန်း)',
    ),
    VocabularyWord(
      id: 'th_color_black',
      word: 'สีดำ',
      translation: 'အနက်ရောင်',
      pronunciation: '/see-dam/',
      example: 'รถสีดำ (အနက်ရောင် ကား)',
    ),
    VocabularyWord(
      id: 'th_color_white',
      word: 'สีขาว',
      translation: 'အဖြူရောင်',
      pronunciation: '/see-khao/',
      example: 'เสื้อสีขาว (အဖြူရောင် အင်္ကျီ)',
    ),
    VocabularyWord(
      id: 'th_color_orange',
      word: 'สีส้ม',
      translation: 'လိမ္မော်ရောင်',
      pronunciation: '/see-som/',
      example: 'ผลไม้สีส้ม (လိမ္မော်ရောင် အသီး)',
    ),
    VocabularyWord(
      id: 'th_color_pink',
      word: 'สีชมพู',
      translation: 'ပန်းရောင်',
      pronunciation: '/see-chom-phu/',
      example: 'ดอกไม้สีชมพู (ပန်းရောင် ပန်း)',
    ),
    VocabularyWord(
      id: 'th_color_purple',
      word: 'สีม่วง',
      translation: 'ခရမ်းရောင်',
      pronunciation: '/see-muang/',
      example: 'เสื้อสีม่วง (ခရမ်းရောင် အင်္ကျီ)',
    ),
    VocabularyWord(
      id: 'th_color_brown',
      word: 'สีน้ำตาล',
      translation: 'အညိုရောင်',
      pronunciation: '/see-nam-tan/',
      example: 'รองเท้าสีน้ำตาล (အညိုရောင် ဖိနပ်)',
    ),

  ],

  test: Test(
    id: 'th_colors_test',
    title: 'စမ်းသပ်မှု - အရောင်များ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_col_mc_1',
        question: 'สีแดง',
        options: ['အပြာရောင်', 'အနီရောင်', 'အစိမ်းရောင်', 'အဖြူရောင်'],
        correctAnswerIndex: 1,
        explanation: 'สีแดง = အနီရောင်',
      ),
      MultipleChoiceQuestion(
        id: 'th_col_mc_2',
        question: 'สีเขียว',
        options: ['အနက်ရောင်', 'ပန်းရောင်', 'အစိမ်းရောင်', 'အဝါရောင်'],
        correctAnswerIndex: 2,
        explanation: 'สีเขียว = အစိမ်းရောင်',
      ),
      MultipleChoiceQuestion(
        id: 'th_col_mc_3',
        question: 'အဖြူရောင်',
        options: ['สีดำ', 'สีขาว', 'สีเหลือง', 'สีชมพู'],
        correctAnswerIndex: 1,
        explanation: 'အဖြူရောင် = สีขาว',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_col_tr_1',
        question: 'ပန်းရောင်',
        word: 'ပန်းရောင်',
        translations: ['สีม่วง', 'สีชมพู', 'สีส้ม', 'สีแดง'],
        correctAnswerIndex: 1,
        explanation: 'ပန်းရောင် = สีชมพู',
      ),
      TranslationQuestion(
        id: 'th_col_tr_2',
        question: 'สีน้ำเงิน',
        word: 'สีน้ำเงิน',
        translations: ['အပြာရောင်', 'အစိမ်းရောင်', 'အနက်ရောင်', 'အဝါရောင်'],
        correctAnswerIndex: 0,
        explanation: 'สีน้ำเงิน = အပြာရောင်',
      ),
      TranslationQuestion(
        id: 'th_col_tr_3',
        question: 'အနက်ရောင်',
        word: 'အနက်ရောင်',
        translations: ['สีขาว', 'สีดำ', 'สีม่วง', 'สีแดง'],
        correctAnswerIndex: 1,
        explanation: 'အနက်ရောင် = สีดำ',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_col_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'เสื้อสี _____',
        correctWord: 'แดง',
        options: ['แดง', 'เขียว', 'ขาว', 'ดำ'],
        explanation: 'เสื้อสีแดง = အနီရောင် အင်္ကျီ',
      ),
      FillInBlankQuestion(
        id: 'th_col_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'ดอกไม้สี _____',
        correctWord: 'เหลือง',
        options: ['เหลือง', 'น้ำเงิน', 'ม่วง', 'น้ำตาล'],
        explanation: 'ดอกไม้สีเหลือง = အဝါရောင် ပန်း',
      ),
      FillInBlankQuestion(
        id: 'th_col_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'รถสี _____',
        correctWord: 'ดำ',
        options: ['ขาว', 'ดำ', 'ชมพู', 'ส้ม'],
        explanation: 'รถสีดำ = အနက်ရောင် ကား',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_col_listen_1',
        audioText: 'สีชมพู',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ပန်းရောင်', 'ခရမ်းရောင်', 'လိမ္မော်ရောင်', 'အနီရောင်'],
        correctAnswerIndex: 0,
        explanation: 'สีชมพู = ပန်းရောင်',
      ),
      ListeningQuestion(
        id: 'th_col_listen_2',
        audioText: 'สีม่วง',
        question: 'အဓိပ္ပါယ်?',
        options: ['ခရမ်းရောင်', 'အစိမ်းရောင်', 'အပြာရောင်', 'အဖြူရောင်'],
        correctAnswerIndex: 0,
        explanation: 'สีม่วง = ခရမ်းရောင်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_col_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['เสื้อ', 'สี', 'ขาว'],
        correctSentence: ['เสื้อ', 'สี', 'ขาว'],
        explanation: 'အဖြူရောင် အင်္ကျီ',
      ),
      SentenceBuildingQuestion(
        id: 'th_col_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['รถ', 'สี', 'แดง'],
        correctSentence: ['รถ', 'สี', 'แดง'],
        explanation: 'အနီရောင် ကား',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_col_order_1',
        question: 'စီပါ',
        scrambledWords: ['สี', 'เขียว', 'เสื้อ'],
        correctOrder: ['เสื้อ', 'สี', 'เขียว'],
        explanation: 'အရာဝတ္ထု → สี → အရောင်',
      ),
      WordOrderQuestion(
        id: 'th_col_order_2',
        question: 'စီပါ',
        scrambledWords: ['สี', 'น้ำเงิน', 'ท้องฟ้า'],
        correctOrder: ['ท้องฟ้า', 'สี', 'น้ำเงิน'],
        explanation: 'နာမ်ကို အရင်ထားပြီး အရောင်ကို နောက်ထားသည်',
      ),

    ],
  ),
),

        // Thai - Time and Date
        Lesson(
  id: 'th_time_date',
  title: 'Thai Time and Date',
  description: 'ထိုင်းဘာသာ အချိန်နှင့် နေ့စွဲဆိုင်ရာ စကားလုံးများကို လေ့လာမည်',
  icon: '⏰',
  words: [

    VocabularyWord(
      id: 'th_time',
      word: 'เวลา',
      translation: 'အချိန်',
      pronunciation: '/way-laa/',
      example: 'ตอนนี้เวลาเท่าไร (အခု အချိန် ဘယ်လောက်လဲ)',
    ),
    VocabularyWord(
      id: 'th_today',
      word: 'วันนี้',
      translation: 'ဒီနေ့',
      pronunciation: '/wan-nii/',
      example: 'วันนี้ฉันเรียนภาษาไทย (ဒီနေ့ ထိုင်းစာ လေ့လာတယ်)',
    ),
    VocabularyWord(
      id: 'th_tomorrow',
      word: 'พรุ่งนี้',
      translation: 'မနက်ဖြန်',
      pronunciation: '/phrung-nii/',
      example: 'พรุ่งนี้ฉันไปโรงเรียน (မနက်ဖြန် ကျောင်းသွားမယ်)',
    ),
    VocabularyWord(
      id: 'th_yesterday',
      word: 'เมื่อวาน',
      translation: 'မနေ့က',
      pronunciation: '/meua-wan/',
      example: 'เมื่อวานฉันทำงาน (မနေ့က အလုပ်လုပ်ခဲ့တယ်)',
    ),
    VocabularyWord(
      id: 'th_morning',
      word: 'ตอนเช้า',
      translation: 'မနက်',
      pronunciation: '/ton-chao/',
      example: 'ตอนเช้าฉันตื่นเร็ว (မနက် အမြန်နိုးတယ်)',
    ),
    VocabularyWord(
      id: 'th_noon',
      word: 'ตอนเที่ยง',
      translation: 'မွန်းတည့်',
      pronunciation: '/ton-thiang/',
      example: 'ตอนเที่ยงกินข้าว (မွန်းတည့် ထမင်းစားတယ်)',
    ),
    VocabularyWord(
      id: 'th_evening',
      word: 'ตอนเย็น',
      translation: 'ညနေ',
      pronunciation: '/ton-yen/',
      example: 'ตอนเย็นพักผ่อน (ညနေ အနားယူတယ်)',
    ),
    VocabularyWord(
      id: 'th_night',
      word: 'ตอนกลางคืน',
      translation: 'ည',
      pronunciation: '/ton-klang-khuen/',
      example: 'ตอนกลางคืนนอน (ညအိပ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_day',
      word: 'วัน',
      translation: 'နေ့',
      pronunciation: '/wan/',
      example: 'หนึ่งวันมี 24 ชั่วโมง (တစ်နေ့မှာ ၂၄ နာရီရှိတယ်)',
    ),
    VocabularyWord(
      id: 'th_week',
      word: 'สัปดาห์',
      translation: 'အပတ်',
      pronunciation: '/sap-daa/',
      example: 'หนึ่งสัปดาห์มี 7 วัน (အပတ်တစ်ပတ်မှာ ၇ ရက်ရှိတယ်)',
    ),

  ],

  test: Test(
    id: 'th_time_date_test',
    title: 'စမ်းသပ်မှု - အချိန်နှင့် နေ့စွဲ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_time_mc_1',
        question: 'วันนี้',
        options: ['မနက်ဖြန်', 'မနေ့က', 'ဒီနေ့', 'အပတ်'],
        correctAnswerIndex: 2,
        explanation: 'วันนี้ = ဒီနေ့',
      ),
      MultipleChoiceQuestion(
        id: 'th_time_mc_2',
        question: 'พรุ่งนี้',
        options: ['မနေ့က', 'ဒီနေ့', 'ည', 'မနက်ဖြန်'],
        correctAnswerIndex: 3,
        explanation: 'พรุ่งนี้ = မနက်ဖြန်',
      ),
      MultipleChoiceQuestion(
        id: 'th_time_mc_3',
        question: 'เวลา',
        options: ['အချိန်', 'နေ့', 'အပတ်', 'မနက်'],
        correctAnswerIndex: 0,
        explanation: 'เวลา = အချိန်',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_time_tr_1',
        question: 'ည',
        word: 'ည',
        translations: ['ตอนเย็น', 'ตอนเช้า', 'ตอนกลางคืน', 'เมื่อวาน'],
        correctAnswerIndex: 2,
        explanation: 'ည = ตอนกลางคืน',
      ),
      TranslationQuestion(
        id: 'th_time_tr_2',
        question: 'မနက်',
        word: 'မနက်',
        translations: ['ตอนเช้า', 'ช', 'ตอนเย็น', 'ตอนเที่ยง'],
        correctAnswerIndex: 0,
        explanation: 'မနက် = ตอนเช้า',
      ),
      TranslationQuestion(
        id: 'th_time_tr_3',
        question: 'เมื่อวาน',
        word: 'เมื่อวาน',
        translations: ['ဒီနေ့', 'မနက်ဖြန်', 'မနေ့က', 'ညအိပ်'],
        correctAnswerIndex: 2,
        explanation: 'เมื่อวาน = မနေ့က',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_time_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: '_____ ฉันเที่ยว',
        correctWord: 'วันนี้',
        options: ['วันนี้', 'พรุ่งนี้', 'เมื่อวาน', 'ตอนเช้า'],
        explanation: 'วันนี้ = ဒီနေ့',
      ),
      FillInBlankQuestion(
        id: 'th_time_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'ตอน_____ ဉันพัก',
        correctWord: 'เที่ยง',
        options: ['เช้า', 'เที่ยง', 'เย็น', 'กลางคืน'],
        explanation: 'เที่ยง = မွန်းတည့်',
      ),
      FillInBlankQuestion(
        id: 'th_time_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'หนึ่ง_____ အ ၇ วัน',
        correctWord: 'สัปดาห์',
        options: ['วัน', 'เดือน', 'ปี', 'สัปดาห์'],
        explanation: 'สัปดาห์ = အပတ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_time_listen_1',
        audioText: 'พรุ่งนี้',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['မနေ့က', 'ဒီနေ့', 'မနက်ဖြန်', 'ည'],
        correctAnswerIndex: 2,
        explanation: 'พรุ่งนี้ = မနက်ဖြန်',
      ),
      ListeningQuestion(
        id: 'th_time_listen_2',
        audioText: 'ตอนเย็น',
        question: 'အဓိပ္ပါယ်?',
        options: ['မနက်', 'ညနေ', 'ည', 'မွန်းတည့်'],
        correctAnswerIndex: 1,
        explanation: 'ตอนเย็น = ညနေ',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_time_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['วันนี้', 'ฉัน', 'เรียน'],
        correctSentence: ['วันนี้', 'ฉัน', 'เรียน'],
        explanation: 'ဒီနေ့ ကျွန်တော် လေ့လာတယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_time_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ตอนเช้า', 'ฉัน', 'ตื่น'],
        correctSentence: ['ตอนเช้า', 'ฉัน', 'ตื่น'],
        explanation: 'မနက် ကျွန်တော် နိုးတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_time_order_1',
        question: 'စီပါ',
        scrambledWords: ['ฉัน', 'พรุ่งนี้', 'ไปโรงเรียน'],
        correctOrder: ['พรุ่งนี้', 'ฉัน', 'ไปโรงเรียน'],
        explanation: 'အချိန်ကို အစမှာထားသည်',
      ),
      WordOrderQuestion(
        id: 'th_time_order_2',
        question: 'စီပါ',
        scrambledWords: ['กินข้าว', 'ตอนเที่ยง', 'ฉัน'],
        correctOrder: ['ตอนเที่ยง', 'ฉัน', 'กินข้าว'],
        explanation: 'အချိန် → အကြောင်းအရာ → လုပ်ဆောင်ချက်',
      ),

    ],
  ),
),
        
        // Thai - Emotions
        Lesson(
  id: 'th_emotions',
  title: 'Thai Emotions',
  description: 'ထိုင်းဘာသာ ခံစားချက်များကို လေ့လာမည်',
  icon: '😊',
  words: [

    VocabularyWord(
      id: 'th_happy',
      word: 'ดีใจ',
      translation: 'ပျော်ရွှင်',
      pronunciation: '/dee-jai/',
      example: 'ฉันดีใจ (ကျွန်တော် ပျော်တယ်)',
    ),
    VocabularyWord(
      id: 'th_sad',
      word: 'เสียใจ',
      translation: 'ဝမ်းနည်း',
      pronunciation: '/sia-jai/',
      example: 'เขาเสียใจ (သူ ဝမ်းနည်းတယ်)',
    ),
    VocabularyWord(
      id: 'th_angry',
      word: 'โกรธ',
      translation: 'ဒေါသဖြစ်',
      pronunciation: '/grot/',
      example: 'อย่าโกรธ (မဒေါသပါနဲ့)',
    ),
    VocabularyWord(
      id: 'th_afraid',
      word: 'กลัว',
      translation: 'ကြောက်',
      pronunciation: '/glua/',
      example: 'ฉันกลัว (ကျွန်တော် ကြောက်တယ်)',
    ),
    VocabularyWord(
      id: 'th_love',
      word: 'รัก',
      translation: 'ချစ်',
      pronunciation: '/rak/',
      example: 'ฉันรักครอบครัว (ကျွန်တော် မိသားစုကို ချစ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_tired',
      word: 'เหนื่อย',
      translation: 'ပင်ပန်း',
      pronunciation: '/nueai/',
      example: 'ฉันเหนื่อย (ကျွန်တော် ပင်ပန်းတယ်)',
    ),
    VocabularyWord(
      id: 'th_excited',
      word: 'ตื่นเต้น',
      translation: 'စိတ်လှုပ်ရှား',
      pronunciation: '/tuen-ten/',
      example: 'ฉันตื่นเต้นมาก (ကျွန်တော် အရမ်း စိတ်လှုပ်ရှားတယ်)',
    ),
    VocabularyWord(
      id: 'th_relaxed',
      word: 'สบาย',
      translation: 'သက်သာ',
      pronunciation: '/sa-bai/',
      example: 'ฉันรู้สึกสบาย (ကျွန်တော် သက်သာတယ်)',
    ),
    VocabularyWord(
      id: 'th_worried',
      word: 'กังวล',
      translation: 'စိုးရိမ်',
      pronunciation: '/kang-won/',
      example: 'ฉันกังวล (ကျွန်တော် စိုးရိမ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_proud',
      word: 'ภูมิใจ',
      translation: 'ဂုဏ်ယူ',
      pronunciation: '/phum-jai/',
      example: 'ฉันภูมิใจในตัวคุณ (မင်းကို ဂုဏ်ယူတယ်)',
    ),

  ],

  test: Test(
    id: 'th_emotions_test',
    title: 'စမ်းသပ်မှု - ခံစားချက်များ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_emo_mc_1',
        question: 'ดีใจ',
        options: ['ဝမ်းနည်း', 'ပျော်ရွှင်', 'ကြောက်', 'ဒေါသဖြစ်'],
        correctAnswerIndex: 1,
        explanation: 'ดีใจ = ပျော်ရွှင်',
      ),
      MultipleChoiceQuestion(
        id: 'th_emo_mc_2',
        question: 'โกรธ',
        options: ['ပင်ပန်း', 'ဒေါသဖြစ်', 'သက်သာ', 'စိုးရိမ်'],
        correctAnswerIndex: 1,
        explanation: 'โกรธ = ဒေါသဖြစ်',
      ),
      MultipleChoiceQuestion(
        id: 'th_emo_mc_3',
        question: 'စိတ်လှုပ်ရှား',
        options: ['เหนื่อย', 'ตื่นเต้น', 'กังวล', 'เสียใจ'],
        correctAnswerIndex: 1,
        explanation: 'စိတ်လှုပ်ရှား = ตื่นเต้น',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_emo_tr_1',
        question: 'ဝမ်းနည်း',
        word: 'ဝမ်းနည်း',
        translations: ['ดีใจ', 'เสียใจ', 'กลัว', 'รัก'],
        correctAnswerIndex: 1,
        explanation: 'ဝမ်းနည်း = เสียใจ',
      ),
      TranslationQuestion(
        id: 'th_emo_tr_2',
        question: 'กลัว',
        word: 'กลัว',
        translations: ['ကြောက်', 'ပင်ပန်း', 'ပျော်ရွှင်', 'ဂုဏ်ယူ'],
        correctAnswerIndex: 0,
        explanation: 'กลัว = ကြောက်',
      ),
      TranslationQuestion(
        id: 'th_emo_tr_3',
        question: 'ဂုဏ်ယူ',
        word: 'ဂုဏ်ယူ',
        translations: ['ภูมิใจ', 'รัก', 'สบาย', 'กังวล'],
        correctAnswerIndex: 0,
        explanation: 'ဂုဏ်ယူ = ภูมิใจ',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_emo_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ มาก',
        correctWord: 'ดีใจ',
        options: ['ดีใจ', 'เสียใจ', 'โกรธ', 'กลัว'],
        explanation: 'ฉันดีใจมาก = ကျွန်တော် အရမ်း ပျော်တယ်',
      ),
      FillInBlankQuestion(
        id: 'th_emo_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'อย่า _____',
        correctWord: 'โกรธ',
        options: ['รัก', 'โกรธ', 'สบาย', 'ภูมิใจ'],
        explanation: 'อย่าโกรธ = မဒေါသပါနဲ့',
      ),
      FillInBlankQuestion(
        id: 'th_emo_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉันรู้สึก _____',
        correctWord: 'เหนื่อย',
        options: ['เหนื่อย', 'ดีใจ', 'รัก', 'ภูมิใจ'],
        explanation: 'ฉันรู้สึกเหนื่อย = ကျွန်တော် ပင်ပန်းတယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_emo_listen_1',
        audioText: 'เสียใจ',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ပျော်ရွှင်', 'ဝမ်းနည်း', 'ကြောက်', 'ဒေါသဖြစ်'],
        correctAnswerIndex: 1,
        explanation: 'เสียใจ = ဝမ်းနည်း',
      ),
      ListeningQuestion(
        id: 'th_emo_listen_2',
        audioText: 'สบาย',
        question: 'အဓိပ္ပါယ်?',
        options: ['ပင်ပန်း', 'စိုးရိမ်', 'သက်သာ', 'ဂုဏ်ယူ'],
        correctAnswerIndex: 2,
        explanation: 'สบาย = သက်သာ',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_emo_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'รัก', 'คุณ'],
        correctSentence: ['ฉัน', 'รัก', 'คุณ'],
        explanation: 'ကျွန်တော် မင်းကို ချစ်တယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_emo_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'รู้สึก', 'สบาย'],
        correctSentence: ['ฉัน', 'รู้สึก', 'สบาย'],
        explanation: 'ကျွန်တော် သက်သာတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_emo_order_1',
        question: 'စီပါ',
        scrambledWords: ['ดีใจ', 'ฉัน'],
        correctOrder: ['ฉัน', 'ดีใจ'],
        explanation: 'အကြောင်းအရာကို အရင်ထားရသည်',
      ),
      WordOrderQuestion(
        id: 'th_emo_order_2',
        question: 'စီပါ',
        scrambledWords: ['ฉัน', 'ภูมิใจ', 'มาก'],
        correctOrder: ['ฉัน', 'ภูมิใจ', 'มาก'],
        explanation: 'စကားစု အစဉ်အတိုင်း စီရသည်',
      ),

    ],
  ),
),

        // Thai - Shopping
        Lesson(
  id: 'th_shopping',
  title: 'Thai Shopping',
  description: 'ထိုင်းဘာသာဖြင့် စျေးဝယ်ခြင်းကို လေ့လာမည်',
  icon: '🛒',
  words: [

    VocabularyWord(
      id: 'th_buy',
      word: 'ซื้อ',
      translation: 'ဝယ်',
      pronunciation: '/sue/',
      example: 'ฉันซื้อของ (ကျွန်တော် ပစ္စည်း ဝယ်တယ်)',
    ),
    VocabularyWord(
      id: 'th_sell',
      word: 'ขาย',
      translation: 'ရောင်း',
      pronunciation: '/khai/',
      example: 'เขาขายของ (သူ ပစ္စည်း ရောင်းတယ်)',
    ),
    VocabularyWord(
      id: 'th_price',
      word: 'ราคา',
      translation: 'စျေးနှုန်း',
      pronunciation: '/ra-khaa/',
      example: 'ราคานี้แพง (ဒီစျေး ဈေးကြီးတယ်)',
    ),
    VocabularyWord(
      id: 'th_cheap',
      word: 'ถูก',
      translation: 'စျေးသက်သာ',
      pronunciation: '/thuk/',
      example: 'ของนี้ถูก (ဒီပစ္စည်း စျေးသက်သာတယ်)',
    ),
    VocabularyWord(
      id: 'th_expensive',
      word: 'แพง',
      translation: 'စျေးကြီး',
      pronunciation: '/paeng/',
      example: 'ของนี้แพง (ဒီပစ္စည်း ဈေးကြီးတယ်)',
    ),
    VocabularyWord(
      id: 'th_shop',
      word: 'ร้าน',
      translation: 'ဆိုင်',
      pronunciation: '/raan/',
      example: 'ไปร้านนี้ (ဒီဆိုင် သွားမယ်)',
    ),
    VocabularyWord(
      id: 'th_market',
      word: 'ตลาด',
      translation: 'ဈေး',
      pronunciation: '/ta-laat/',
      example: 'ไปตลาด (ဈေးသွားမယ်)',
    ),
    VocabularyWord(
      id: 'th_money',
      word: 'เงิน',
      translation: 'ငွေ',
      pronunciation: '/ngoen/',
      example: 'ฉันมีเงิน (ကျွန်တော် ငွေရှိတယ်)',
    ),
    VocabularyWord(
      id: 'th_discount',
      word: 'ลดราคา',
      translation: 'စျေးလျှော့',
      pronunciation: '/lot ra-khaa/',
      example: 'ร้านนี้ลดราคา (ဒီဆိုင် စျေးလျှော့ထားတယ်)',
    ),
    VocabularyWord(
      id: 'th_pay',
      word: 'จ่าย',
      translation: 'ပေးချေ',
      pronunciation: '/jaai/',
      example: 'ฉันจ่ายเงิน (ကျွန်တော် ငွေပေးတယ်)',
    ),

  ],

  test: Test(
    id: 'th_shopping_test',
    title: 'စမ်းသပ်မှု - စျေးဝယ်ခြင်း',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_shop_mc_1',
        question: 'ซื้อ',
        options: ['ရောင်း', 'ဝယ်', 'ပေးချေ', 'စျေးလျှော့'],
        correctAnswerIndex: 1,
        explanation: 'ซื้อ = ဝယ်',
      ),
      MultipleChoiceQuestion(
        id: 'th_shop_mc_2',
        question: 'แพง',
        options: ['စျေးသက်သာ', 'စျေးကြီး', 'ဈေး', 'ငွေ'],
        correctAnswerIndex: 1,
        explanation: 'แพง = စျေးကြီး',
      ),
      MultipleChoiceQuestion(
        id: 'th_shop_mc_3',
        question: 'ဈေး',
        options: ['ร้าน', 'เงิน', 'ตลาด', 'ราคา'],
        correctAnswerIndex: 2,
        explanation: 'ဈေး = ตลาด',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_shop_tr_1',
        question: 'စျေးနှုန်း',
        word: 'စျေးနှုန်း',
        translations: ['เงิน', 'ราคา', 'ตลาด', 'ร้าน'],
        correctAnswerIndex: 1,
        explanation: 'စျေးနှုန်း = ราคา',
      ),
      TranslationQuestion(
        id: 'th_shop_tr_2',
        question: 'เงิน',
        word: 'เงิน',
        translations: ['ဆိုင်', 'ဈေး', 'ငွေ', 'ရောင်း'],
        correctAnswerIndex: 2,
        explanation: 'เงิน = ငွေ',
      ),
      TranslationQuestion(
        id: 'th_shop_tr_3',
        question: 'စျေးလျှော့',
        word: 'စျေးလျှော့',
        translations: ['ถูก', 'แพง', 'ลดราคา', 'จ่าย'],
        correctAnswerIndex: 2,
        explanation: 'စျေးလျှော့ = ลดราคา',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_shop_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ ของ',
        correctWord: 'ซื้อ',
        options: ['ซื้อ', 'ขาย', 'จ่าย', 'ลดราคา'],
        explanation: 'ฉันซื้อของ = ကျွန်တော် ပစ္စည်း ဝယ်တယ်',
      ),
      FillInBlankQuestion(
        id: 'th_shop_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'ของนี้ _____',
        correctWord: 'ถูก',
        options: ['แพง', 'ถูก', 'เงิน', 'ตลาด'],
        explanation: 'ของนี้ถูก = ဒီပစ္စည်း စျေးသက်သာတယ်',
      ),
      FillInBlankQuestion(
        id: 'th_shop_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ เงิน',
        correctWord: 'จ่าย',
        options: ['ซื้อ', 'ขาย', 'จ่าย', 'ลดราคา'],
        explanation: 'ฉันจ่ายเงิน = ကျွန်တော် ငွေပေးတယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_shop_listen_1',
        audioText: 'ราคา',
        question: 'အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ဈေး', 'ငွေ', 'စျေးနှုန်း', 'ဆိုင်'],
        correctAnswerIndex: 2,
        explanation: 'ราคา = စျေးနှုန်း',
      ),
      ListeningQuestion(
        id: 'th_shop_listen_2',
        audioText: 'ร้าน',
        question: 'အဓိပ္ပါယ်?',
        options: ['ဈေး', 'ဆိုင်', 'ရောင်း', 'ဝယ်'],
        correctAnswerIndex: 1,
        explanation: 'ร้าน = ဆိုင်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_shop_sentence_1',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'ไป', 'ตลาด'],
        correctSentence: ['ฉัน', 'ไป', 'ตลาด'],
        explanation: 'ကျွန်တော် ဈေး သွားမယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_shop_sentence_2',
        question: 'တည်ဆောက်ပါ',
        wordOptions: ['ร้านนี้', 'ลดราคา'],
        correctSentence: ['ร้านนี้', 'ลดราคา'],
        explanation: 'ဒီဆိုင် စျေးလျှော့ထားတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_shop_order_1',
        question: 'စီပါ',
        scrambledWords: ['ของ', 'ซื้อ', 'ฉัน'],
        correctOrder: ['ฉัน', 'ซื้อ', 'ของ'],
        explanation: 'အကြောင်းအရာကို အရင်ထားရသည်',
      ),
      WordOrderQuestion(
        id: 'th_shop_order_2',
        question: 'စီပါ',
        scrambledWords: ['แพง', 'นี้', 'ของ'],
        correctOrder: ['ของ', 'นี้', 'แพง'],
        explanation: 'ထိုင်းဘာသာ စာလုံးအစဉ်အတိုင်း စီရသည်',
      ),

    ],
  ),
),
        
        // Thai - Food
        Lesson(
  id: 'th_food',
  title: 'Thai Food',
  description: 'ထိုင်းဘာသာဖြင့် စားသောက်ခြင်းကို လေ့လာမည်',
  icon: '🍜',
  words: [

    VocabularyWord(
      id: 'th_eat',
      word: 'กิน',
      translation: 'စား',
      pronunciation: '/gin/',
      example: 'ฉันกินข้าว (ကျွန်တော် ထမင်းစားတယ်)',
    ),
    VocabularyWord(
      id: 'th_drink',
      word: 'ดื่ม',
      translation: 'သောက်',
      pronunciation: '/duem/',
      example: 'ฉันดื่มน้ำ (ကျွန်တော် ရေသောက်တယ်)',
    ),
    VocabularyWord(
      id: 'th_rice',
      word: 'ข้าว',
      translation: 'ထမင်း',
      pronunciation: '/khao/',
      example: 'กินข้าวแล้ว (ထမင်းစားပြီးပြီ)',
    ),
    VocabularyWord(
      id: 'th_water',
      word: 'น้ำ',
      translation: 'ရေ',
      pronunciation: '/nam/',
      example: 'น้ำเย็น (ရေအေး)',
    ),
    VocabularyWord(
      id: 'th_food',
      word: 'อาหาร',
      translation: 'အစားအစာ',
      pronunciation: '/aa-han/',
      example: 'อาหารอร่อย (အစားအစာ အရသာကောင်း)',
    ),
    VocabularyWord(
      id: 'th_delicious',
      word: 'อร่อย',
      translation: 'အရသာကောင်း',
      pronunciation: '/a-roi/',
      example: 'อาหารนี้อร่อย (ဒီအစားအစာ အရသာကောင်းတယ်)',
    ),
    VocabularyWord(
      id: 'th_not_delicious',
      word: 'ไม่อร่อย',
      translation: 'အရသာမကောင်း',
      pronunciation: '/mai a-roi/',
      example: 'อาหารนี้ไม่อร่อย',
    ),
    VocabularyWord(
      id: 'th_restaurant',
      word: 'ร้านอาหาร',
      translation: 'စားသောက်ဆိုင်',
      pronunciation: '/raan aa-han/',
      example: 'ไปร้านอาหาร',
    ),
    VocabularyWord(
      id: 'th_hungry',
      word: 'หิว',
      translation: 'ဗိုက်ဆာ',
      pronunciation: '/hiw/',
      example: 'ฉันหิว (ကျွန်တော် ဗိုက်ဆာတယ်)',
    ),
    VocabularyWord(
      id: 'th_full',
      word: 'อิ่ม',
      translation: 'ဗိုက်ပြည့်',
      pronunciation: '/im/',
      example: 'ฉันอิ่มแล้ว',
    ),

  ],

  test: Test(
    id: 'th_food_test',
    title: 'စမ်းသပ်မှု - စားသောက်ခြင်း',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'th_food_mc_1',
        question: 'กิน',
        options: ['သောက်', 'စား', 'ဗိုက်ဆာ', 'ရေ'],
        correctAnswerIndex: 1,
        explanation: 'กิน = စား',
      ),
      MultipleChoiceQuestion(
        id: 'th_food_mc_2',
        question: 'อร่อย',
        options: ['အရသာမကောင်း', 'အရသာကောင်း', 'ဗိုက်ပြည့်', 'ဗိုက်ဆာ'],
        correctAnswerIndex: 1,
        explanation: 'อร่อย = အရသာကောင်း',
      ),
      MultipleChoiceQuestion(
        id: 'th_food_mc_3',
        question: 'စားသောက်ဆိုင်',
        options: ['ร้าน', 'ตลาด', 'ร้านอาหาร', 'อาหาร'],
        correctAnswerIndex: 2,
        explanation: 'စားသောက်ဆိုင် = ร้านอาหาร',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'th_food_tr_1',
        question: 'ရေ',
        word: 'ရေ',
        translations: ['ข้าว', 'น้ำ', 'อาหาร', 'ดื่ม'],
        correctAnswerIndex: 1,
        explanation: 'ရေ = น้ำ',
      ),
      TranslationQuestion(
        id: 'th_food_tr_2',
        question: 'หิว',
        word: 'หิว',
        translations: ['ဗိုက်ပြည့်', 'ဗိုက်ဆာ', 'စား', 'သောက်'],
        correctAnswerIndex: 1,
        explanation: 'หิว = ဗိုက်ဆာ',
      ),
      TranslationQuestion(
        id: 'th_food_tr_3',
        question: 'အရသာမကောင်း',
        word: 'အရသာမကောင်း',
        translations: ['อร่อย', 'ไม่อร่อย', 'อิ่ม', 'หิว'],
        correctAnswerIndex: 1,
        explanation: 'အရသာမကောင်း = ไม่อร่อย',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'th_food_fill_1',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ ข้าว',
        correctWord: 'กิน',
        options: ['กิน', 'ดื่ม', 'หิว', 'อิ่ม'],
        explanation: 'ฉันกินข้าว = ကျွန်တော် ထမင်းစားတယ်',
      ),
      FillInBlankQuestion(
        id: 'th_food_fill_2',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ น้ำ',
        correctWord: 'ดื่ม',
        options: ['กิน', 'ดื่ม', 'หิว', 'อร่อย'],
        explanation: 'ฉันดื่มน้ำ = ကျွန်တော် ရေသောက်တယ်',
      ),
      FillInBlankQuestion(
        id: 'th_food_fill_3',
        question: 'ဖြည့်ပါ',
        sentence: 'ฉัน _____ แล้ว',
        correctWord: 'อิ่ม',
        options: ['หิว', 'อิ่ม', 'กิน', 'ดื่ม'],
        explanation: 'ฉันอิ่มแล้ว = ကျွန်တော် ဗိုက်ပြည့်ပြီးပြီ',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'th_food_listen_1',
        audioText: 'ข้าว',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ရေ', 'ထမင်း', 'အစားအစာ', 'စား'],
        correctAnswerIndex: 1,
        explanation: 'ข้าว = ထမင်း',
      ),
      ListeningQuestion(
        id: 'th_food_listen_2',
        audioText: 'อร่อย',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['အရသာမကောင်း', 'ဗိုက်ပြည့်', 'အရသာကောင်း', 'ဗိုက်ဆာ'],
        correctAnswerIndex: 2,
        explanation: 'อร่อย = အရသာကောင်း',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'th_food_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['ฉัน', 'กิน', 'ข้าว'],
        correctSentence: ['ฉัน', 'กิน', 'ข้าว'],
        explanation: 'ကျွန်တော် ထမင်းစားတယ်',
      ),
      SentenceBuildingQuestion(
        id: 'th_food_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['อาหารนี้', 'อร่อย'],
        correctSentence: ['อาหารนี้', 'อร่อย'],
        explanation: 'ဒီအစားအစာ အရသာကောင်းတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'th_food_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['กิน', 'ฉัน', 'ข้าว'],
        correctOrder: ['ฉัน', 'กิน', 'ข้าว'],
        explanation: 'ထိုင်းဘာသာတွင် အကြောင်းအရာကို အရင်ထားသည်',
      ),
      WordOrderQuestion(
        id: 'th_food_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['แล้ว', 'อิ่ม', 'ฉัน'],
        correctOrder: ['ฉัน', 'อิ่ม', 'แล้ว'],
        explanation: 'အချိန်ပြ စကားလုံးကို နောက်ဆုံးထားသည်',
      ),

    ],
  ),
),

      ],
    ),
    
    // Chinese Language
    Language(
      code: 'zh',
      name: 'Chinese',
      flag: '🇨🇳',
      lessons: [
        // Chinese - Basic Greetings
        Lesson(
  id: 'zh_greetings',
  title: 'Chinese Greetings',
  description: 'တရုတ်ဘာသာဖြင့် မင်္ဂလာဆောင်ခြင်းကို လေ့လာမည်',
  icon: '👋',
  words: [

    VocabularyWord(
      id: 'zh_hello',
      word: '你好',
      translation: 'မင်္ဂလာပါ',
      pronunciation: '/ni hao/',
      example: '你好！ (မင်္ဂလာပါ)',
    ),
    VocabularyWord(
      id: 'zh_thank_you',
      word: '谢谢',
      translation: 'ကျေးဇူးတင်ပါတယ်',
      pronunciation: '/xie xie/',
      example: '谢谢你 (ကျေးဇူးတင်ပါတယ်)',
    ),
    VocabularyWord(
      id: 'zh_sorry',
      word: '对不起',
      translation: 'တောင်းပန်ပါတယ်',
      pronunciation: '/dui bu qi/',
      example: '对不起 (တောင်းပန်ပါတယ်)',
    ),
    VocabularyWord(
      id: 'zh_goodbye',
      word: '再见',
      translation: 'နောက်မှတွေ့မယ်',
      pronunciation: '/zai jian/',
      example: '再见！',
    ),
    VocabularyWord(
      id: 'zh_you_are_welcome',
      word: '不客气',
      translation: 'မလိုအပ်ပါဘူး',
      pronunciation: '/bu ke qi/',
      example: '不客气 (မလိုအပ်ပါဘူး)',
    ),
    VocabularyWord(
      id: 'zh_good_morning',
      word: '早上好',
      translation: 'မနက်ခင်းမင်္ဂလာပါ',
      pronunciation: '/zao shang hao/',
      example: '早上好！',
    ),
    VocabularyWord(
      id: 'zh_good_evening',
      word: '晚上好',
      translation: 'ညနေခင်းမင်္ဂလာပါ',
      pronunciation: '/wan shang hao/',
      example: '晚上好！',
    ),
    VocabularyWord(
      id: 'zh_how_are_you',
      word: '你好吗',
      translation: 'နေကောင်းလား',
      pronunciation: '/ni hao ma/',
      example: '你好吗？',
    ),
    VocabularyWord(
      id: 'zh_yes',
      word: '是',
      translation: 'ဟုတ်ပါတယ်',
      pronunciation: '/shi/',
      example: '是的',
    ),
    VocabularyWord(
      id: 'zh_no',
      word: '不是',
      translation: 'မဟုတ်ပါဘူး',
      pronunciation: '/bu shi/',
      example: '不是',
    ),

  ],

  test: Test(
    id: 'zh_greetings_test',
    title: 'စမ်းသပ်မှု - မင်္ဂလာဆောင်ခြင်း',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_mc_1',
        question: '「你好」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['ကျေးဇူးတင်ပါတယ်', 'မင်္ဂလာပါ', 'နောက်မှတွေ့မယ်', 'တောင်းပန်ပါတယ်'],
        correctAnswerIndex: 1,
        explanation: '你好 = မင်္ဂလာပါ',
      ),
      MultipleChoiceQuestion(
        id: 'zh_mc_2',
        question: 'ကျေးဇူးတင်ပါတယ် ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['对不起', '谢谢', '再见', '不客气'],
        correctAnswerIndex: 1,
        explanation: '谢谢 = ကျေးဇူးတင်ပါတယ်',
      ),
      MultipleChoiceQuestion(
        id: 'zh_mc_3',
        question: '「再见」 ဆိုသည်မှာ?',
        options: ['မင်္ဂလာပါ', 'တောင်းပန်ပါတယ်', 'နောက်မှတွေ့မယ်', 'နေကောင်းလား'],
        correctAnswerIndex: 2,
        explanation: '再见 = နောက်မှတွေ့မယ်',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_tr_1',
        question: 'တောင်းပန်ပါတယ်',
        word: 'တောင်းပန်ပါတယ်',
        translations: ['谢谢', '你好', '对不起', '不客气'],
        correctAnswerIndex: 2,
        explanation: '对不起 = တောင်းပန်ပါတယ်',
      ),
      TranslationQuestion(
        id: 'zh_tr_2',
        question: '不客气',
        word: '不客气',
        translations: ['မလိုအပ်ပါဘူး', 'ကျေးဇူးတင်ပါတယ်', 'တောင်းပန်ပါတယ်', 'နောက်မှတွေ့မယ်'],
        correctAnswerIndex: 0,
        explanation: '不客气 = မလိုအပ်ပါဘူး',
      ),
      TranslationQuestion(
        id: 'zh_tr_3',
        question: 'မင်္ဂလာပါ',
        word: 'မင်္ဂလာပါ',
        translations: ['你好', '再见', '谢谢', '对不起'],
        correctAnswerIndex: 0,
        explanation: '你好 = မင်္ဂလာပါ',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ ！',
        correctWord: '你好',
        options: ['你好', '谢谢', '再见', '对不起'],
        explanation: '你好 = မင်္ဂလာပါ',
      ),
      FillInBlankQuestion(
        id: 'zh_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 你',
        correctWord: '谢谢',
        options: ['你好', '谢谢', '不客气', '再见'],
        explanation: '谢谢你 = ကျေးဇူးတင်ပါတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ ！',
        correctWord: '再见',
        options: ['你好', '再见', '谢谢', '对不起'],
        explanation: '再见 = နောက်မှတွေ့မယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_listen_1',
        audioText: '你好',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['မင်္ဂလာပါ', 'ကျေးဇူးတင်ပါတယ်', 'နောက်မှတွေ့မယ်', 'တောင်းပန်ပါတယ်'],
        correctAnswerIndex: 0,
        explanation: '你好 = မင်္ဂလာပါ',
      ),
      ListeningQuestion(
        id: 'zh_listen_2',
        audioText: '谢谢',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['မလိုအပ်ပါဘူး', 'တောင်းပန်ပါတယ်', 'ကျေးဇူးတင်ပါတယ်', 'နောက်မှတွေ့မယ်'],
        correctAnswerIndex: 2,
        explanation: '谢谢 = ကျေးဇူးတင်ပါတယ်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['你好'],
        correctSentence: ['你好'],
        explanation: 'မင်္ဂလာပါ',
      ),
      SentenceBuildingQuestion(
        id: 'zh_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['谢谢', '你'],
        correctSentence: ['谢谢', '你'],
        explanation: 'ကျေးဇူးတင်ပါတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['你', '好'],
        correctOrder: ['你', '好'],
        explanation: '你好 = မင်္ဂလာပါ',
      ),
      WordOrderQuestion(
        id: 'zh_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['再', '见'],
        correctOrder: ['再', '见'],
        explanation: '再见 = နောက်မှတွေ့မယ်',
      ),

    ],
  ),
),
        
        // Chinese - Numbers
        Lesson(
  id: 'zh_numbers',
  title: 'Chinese Numbers',
  description: 'တရုတ်ဘာသာဖြင့် နံပါတ်များကို လေ့လာမည်',
  icon: '🔢',
  words: [

    VocabularyWord(
      id: 'zh_one',
      word: '一',
      translation: 'တစ်',
      pronunciation: '/yi/',
      example: '一 คน (လူတစ်ယောက်)',
    ),
    VocabularyWord(
      id: 'zh_two',
      word: '二',
      translation: 'နှစ်',
      pronunciation: '/er/',
      example: '二 本书 (စာအုပ်နှစ်အုပ်)',
    ),
    VocabularyWord(
      id: 'zh_three',
      word: '三',
      translation: 'သုံး',
      pronunciation: '/san/',
      example: '三 天 (သုံးရက်)',
    ),
    VocabularyWord(
      id: 'zh_four',
      word: '四',
      translation: 'လေး',
      pronunciation: '/si/',
      example: '四 个人 (လူလေးယောက်)',
    ),
    VocabularyWord(
      id: 'zh_five',
      word: '五',
      translation: 'ငါး',
      pronunciation: '/wu/',
      example: '五 分钟 (ငါးမိနစ်)',
    ),
    VocabularyWord(
      id: 'zh_six',
      word: '六',
      translation: 'ခြောက်',
      pronunciation: '/liu/',
      example: '六 个月 (ခြောက်လ)',
    ),
    VocabularyWord(
      id: 'zh_seven',
      word: '七',
      translation: 'ခုနစ်',
      pronunciation: '/qi/',
      example: '七 天 (ခုနစ်ရက်)',
    ),
    VocabularyWord(
      id: 'zh_eight',
      word: '八',
      translation: 'ရှစ်',
      pronunciation: '/ba/',
      example: '八 点 (ရှစ်နာရီ)',
    ),
    VocabularyWord(
      id: 'zh_nine',
      word: '九',
      translation: 'ကိုး',
      pronunciation: '/jiu/',
      example: '九 岁 (ကိုးနှစ်)',
    ),
    VocabularyWord(
      id: 'zh_ten',
      word: '十',
      translation: 'ဆယ်',
      pronunciation: '/shi/',
      example: '十 个 (ဆယ်ခု)',
    ),

  ],

  test: Test(
    id: 'zh_numbers_test',
    title: 'စမ်းသပ်မှု - နံပါတ်များ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_num_mc_1',
        question: '「一」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['နှစ်', 'တစ်', 'သုံး', 'လေး'],
        correctAnswerIndex: 1,
        explanation: '一 = တစ်',
      ),
      MultipleChoiceQuestion(
        id: 'zh_num_mc_2',
        question: 'ကိုး ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['七', '八', '九', '十'],
        correctAnswerIndex: 2,
        explanation: 'ကိုး = 九',
      ),
      MultipleChoiceQuestion(
        id: 'zh_num_mc_3',
        question: '「十」 ဆိုသည်မှာ?',
        options: ['ရှစ်', 'ကိုး', 'ဆယ်', 'ငါး'],
        correctAnswerIndex: 2,
        explanation: '十 = ဆယ်',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_num_tr_1',
        question: 'လေး',
        word: 'လေး',
        translations: ['三', '四', '五', '六'],
        correctAnswerIndex: 1,
        explanation: 'လေး = 四',
      ),
      TranslationQuestion(
        id: 'zh_num_tr_2',
        question: '七',
        word: '七',
        translations: ['ခြောက်', 'ခုနစ်', 'ရှစ်', 'ငါး'],
        correctAnswerIndex: 1,
        explanation: '七 = ခုနစ်',
      ),
      TranslationQuestion(
        id: 'zh_num_tr_3',
        question: 'ငါး',
        word: 'ငါး',
        translations: ['四', '五', '六', '七'],
        correctAnswerIndex: 1,
        explanation: 'ငါး = 五',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_num_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 个',
        correctWord: '三',
        options: ['二', '三', '四', '五'],
        explanation: '三 个 = သုံးခု',
      ),
      FillInBlankQuestion(
        id: 'zh_num_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 点',
        correctWord: '八',
        options: ['六', '七', '八', '九'],
        explanation: '八 点 = ရှစ်နာရီ',
      ),
      FillInBlankQuestion(
        id: 'zh_num_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 天',
        correctWord: '七',
        options: ['五', '六', '七', '十'],
        explanation: '七 天 = ခုနစ်ရက်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_num_listen_1',
        audioText: '五',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['လေး', 'ငါး', 'ခြောက်', 'သုံး'],
        correctAnswerIndex: 1,
        explanation: '五 = ငါး',
      ),
      ListeningQuestion(
        id: 'zh_num_listen_2',
        audioText: '十',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['ရှစ်', 'ကိုး', 'ဆယ်', 'ငါး'],
        correctAnswerIndex: 2,
        explanation: '十 = ဆယ်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_num_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['三', '个'],
        correctSentence: ['三', '个'],
        explanation: 'သုံးခု',
      ),
      SentenceBuildingQuestion(
        id: 'zh_num_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['十', '个'],
        correctSentence: ['十', '个'],
        explanation: 'ဆယ်ခု',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_num_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['个', '五'],
        correctOrder: ['五', '个'],
        explanation: 'နံပါတ်ကို အရင်ရေးပြီး 个 ကို နောက်ထားသည်',
      ),
      WordOrderQuestion(
        id: 'zh_num_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['点', '八'],
        correctOrder: ['八', '点'],
        explanation: 'နာရီကို ပြောရာတွင် နံပါတ်ကို အရင်ထားသည်',
      ),

    ],
  ),
),
        
        // Chinese - Family
        Lesson(
  id: 'zh_family',
  title: 'Chinese Family',
  description: 'တရုတ်ဘာသာဖြင့် မိသားစုဆိုင်ရာ စကားလုံးများကို လေ့လာမည်',
  icon: '👨‍👩‍👧',
  words: [

    VocabularyWord(
      id: 'zh_family_word',
      word: '家庭',
      translation: 'မိသားစု',
      pronunciation: '/jia ting/',
      example: '我的家庭 (ကျွန်တော့် မိသားစု)',
    ),
    VocabularyWord(
      id: 'zh_father',
      word: '爸爸',
      translation: 'အဖေ',
      pronunciation: '/ba ba/',
      example: '我爸爸 (ကျွန်တော့်အဖေ)',
    ),
    VocabularyWord(
      id: 'zh_mother',
      word: '妈妈',
      translation: 'အမေ',
      pronunciation: '/ma ma/',
      example: '我妈妈 (ကျွန်တော့်အမေ)',
    ),
    VocabularyWord(
      id: 'zh_older_brother',
      word: '哥哥',
      translation: 'အကို',
      pronunciation: '/ge ge/',
      example: '我哥哥 (ကျွန်တော့်အကို)',
    ),
    VocabularyWord(
      id: 'zh_younger_brother',
      word: '弟弟',
      translation: 'မောင်',
      pronunciation: '/di di/',
      example: '我弟弟',
    ),
    VocabularyWord(
      id: 'zh_older_sister',
      word: '姐姐',
      translation: 'အမ',
      pronunciation: '/jie jie/',
      example: '我姐姐',
    ),
    VocabularyWord(
      id: 'zh_younger_sister',
      word: '妹妹',
      translation: 'နှမ',
      pronunciation: '/mei mei/',
      example: '我妹妹',
    ),
    VocabularyWord(
      id: 'zh_son',
      word: '儿子',
      translation: 'သား',
      pronunciation: '/er zi/',
      example: '他的儿子',
    ),
    VocabularyWord(
      id: 'zh_daughter',
      word: '女儿',
      translation: 'သမီး',
      pronunciation: '/nü er/',
      example: '她的女儿',
    ),
    VocabularyWord(
      id: 'zh_parents',
      word: '父母',
      translation: 'မိဘများ',
      pronunciation: '/fu mu/',
      example: '我的父母',
    ),

  ],

  test: Test(
    id: 'zh_family_test',
    title: 'စမ်းသပ်မှု - မိသားစု',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_fam_mc_1',
        question: '「爸爸」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['အမေ', 'အဖေ', 'အကို', 'မောင်'],
        correctAnswerIndex: 1,
        explanation: '爸爸 = အဖေ',
      ),
      MultipleChoiceQuestion(
        id: 'zh_fam_mc_2',
        question: 'အမေ ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['爸爸', '姐姐', '妈妈', '妹妹'],
        correctAnswerIndex: 2,
        explanation: 'အမေ = 妈妈',
      ),
      MultipleChoiceQuestion(
        id: 'zh_fam_mc_3',
        question: '「哥哥」 ဆိုသည်မှာ?',
        options: ['မောင်', 'အကို', 'အမ', 'အဖေ'],
        correctAnswerIndex: 1,
        explanation: '哥哥 = အကို',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_fam_tr_1',
        question: 'မိသားစု',
        word: 'မိသားစု',
        translations: ['父母', '家庭', '家', '孩子'],
        correctAnswerIndex: 1,
        explanation: 'မိသားစု = 家庭',
      ),
      TranslationQuestion(
        id: 'zh_fam_tr_2',
        question: '妹妹',
        word: '妹妹',
        translations: ['အမ', 'နှမ', 'သမီး', 'အမေ'],
        correctAnswerIndex: 1,
        explanation: '妹妹 = နှမ',
      ),
      TranslationQuestion(
        id: 'zh_fam_tr_3',
        question: 'သား',
        word: 'သား',
        translations: ['女儿', '儿子', '弟弟', '哥哥'],
        correctAnswerIndex: 1,
        explanation: 'သား = 儿子',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_fam_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我 _____ 是爸爸',
        correctWord: '爸爸',
        options: ['妈妈', '爸爸', '哥哥', '弟弟'],
        explanation: '我爸爸 = ကျွန်တော့်အဖေ',
      ),
      FillInBlankQuestion(
        id: 'zh_fam_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我 _____ 是妈妈',
        correctWord: '妈妈',
        options: ['妈妈', '姐姐', '妹妹', '女儿'],
        explanation: '我妈妈 = ကျွန်တော့်အမေ',
      ),
      FillInBlankQuestion(
        id: 'zh_fam_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我有一个 _____',
        correctWord: '哥哥',
        options: ['妹妹', '哥哥', '女儿', '妈妈'],
        explanation: '我有一个哥哥 = ကျွန်တော့်မှာ အကိုတစ်ယောက်ရှိတယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_fam_listen_1',
        audioText: '妈妈',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['အမေ', 'အဖေ', 'အမ', 'နှမ'],
        correctAnswerIndex: 0,
        explanation: '妈妈 = အမေ',
      ),
      ListeningQuestion(
        id: 'zh_fam_listen_2',
        audioText: '弟弟',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['အကို', 'မောင်', 'အမ', 'သား'],
        correctAnswerIndex: 1,
        explanation: '弟弟 = မောင်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_fam_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['我', '妈妈'],
        correctSentence: ['我', '妈妈'],
        explanation: 'ကျွန်တော့်အမေ',
      ),
      SentenceBuildingQuestion(
        id: 'zh_fam_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['我的', '家庭'],
        correctSentence: ['我的', '家庭'],
        explanation: 'ကျွန်တော့် မိသားစု',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_fam_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['妈妈', '我'],
        correctOrder: ['我', '妈妈'],
        explanation: 'ပိုင်ဆိုင်မှုကို အရင်ရေးသည်',
      ),
      WordOrderQuestion(
        id: 'zh_fam_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['家庭', '我的'],
        correctOrder: ['我的', '家庭'],
        explanation: '我的家庭 = ကျွန်တော့် မိသားစု',
      ),

    ],
  ),
),
        
        // Chinese - Time
        Lesson(
  id: 'zh_time',
  title: 'Chinese Time',
  description: 'တရုတ်ဘာသာဖြင့် အချိန်ကို ပြောဆိုအသုံးပြုခြင်း',
  icon: '⏰',
  words: [

    VocabularyWord(
      id: 'zh_time_word',
      word: '时间',
      translation: 'အချိန်',
      pronunciation: '/shi jian/',
      example: '现在的时间 (လက်ရှိအချိန်)',
    ),
    VocabularyWord(
      id: 'zh_now',
      word: '现在',
      translation: 'အခု',
      pronunciation: '/xian zai/',
      example: '现在几点 (အခု ဘယ်နှစ်နာရီလဲ)',
    ),
    VocabularyWord(
      id: 'zh_hour',
      word: '点',
      translation: 'နာရီ',
      pronunciation: '/dian/',
      example: '八点 (ရှစ်နာရီ)',
    ),
    VocabularyWord(
      id: 'zh_minute',
      word: '分',
      translation: 'မိနစ်',
      pronunciation: '/fen/',
      example: '十分 (ဆယ်မိနစ်)',
    ),
    VocabularyWord(
      id: 'zh_today',
      word: '今天',
      translation: 'ဒီနေ့',
      pronunciation: '/jin tian/',
      example: '今天很忙',
    ),
    VocabularyWord(
      id: 'zh_tomorrow',
      word: '明天',
      translation: 'မနက်ဖြန်',
      pronunciation: '/ming tian/',
      example: '明天见',
    ),
    VocabularyWord(
      id: 'zh_yesterday',
      word: '昨天',
      translation: 'မနေ့က',
      pronunciation: '/zuo tian/',
      example: '昨天很忙',
    ),
    VocabularyWord(
      id: 'zh_morning',
      word: '早上',
      translation: 'မနက်',
      pronunciation: '/zao shang/',
      example: '早上好',
    ),
    VocabularyWord(
      id: 'zh_evening',
      word: '晚上',
      translation: 'ညနေ',
      pronunciation: '/wan shang/',
      example: '晚上好',
    ),
    VocabularyWord(
      id: 'zh_night',
      word: '夜',
      translation: 'ည',
      pronunciation: '/ye/',
      example: '晚上夜深了',
    ),

  ],

  test: Test(
    id: 'zh_time_test',
    title: 'စမ်းသပ်မှု - အချိန်',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_time_mc_1',
        question: '「现在」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['မနေ့က', 'မနက်ဖြန်', 'အခု', 'ဒီနေ့'],
        correctAnswerIndex: 2,
        explanation: '现在 = အခု',
      ),
      MultipleChoiceQuestion(
        id: 'zh_time_mc_2',
        question: 'နာရီ ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['分', '点', '时间', '夜'],
        correctAnswerIndex: 1,
        explanation: 'နာရီ = 点',
      ),
      MultipleChoiceQuestion(
        id: 'zh_time_mc_3',
        question: '「昨天」 ဆိုသည်မှာ?',
        options: ['ဒီနေ့', 'မနေ့က', 'မနက်ဖြန်', 'အခု'],
        correctAnswerIndex: 1,
        explanation: '昨天 = မနေ့က',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_time_tr_1',
        question: 'ဒီနေ့',
        word: 'ဒီနေ့',
        translations: ['昨天', '今天', '明天', '现在'],
        correctAnswerIndex: 1,
        explanation: 'ဒီနေ့ = 今天',
      ),
      TranslationQuestion(
        id: 'zh_time_tr_2',
        question: '明天',
        word: '明天',
        translations: ['မနေ့က', 'ဒီနေ့', 'မနက်ဖြန်', 'ည'],
        correctAnswerIndex: 2,
        explanation: '明天 = မနက်ဖြန်',
      ),
      TranslationQuestion(
        id: 'zh_time_tr_3',
        question: 'မိနစ်',
        word: 'မိနစ်',
        translations: ['点', '分', '夜', '时间'],
        correctAnswerIndex: 1,
        explanation: 'မိနစ် = 分',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_time_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '现在八_____',
        correctWord: '点',
        options: ['点', '分', '夜', '天'],
        explanation: '八点 = ရှစ်နာရီ',
      ),
      FillInBlankQuestion(
        id: 'zh_time_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 很忙',
        correctWord: '今天',
        options: ['昨天', '今天', '明天', '现在'],
        explanation: '今天很忙 = ဒီနေ့ အလုပ်များတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_time_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '十_____',
        correctWord: '分',
        options: ['点', '分', '夜', '天'],
        explanation: '十分 = ဆယ်မိနစ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_time_listen_1',
        audioText: '今天',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ဒီနေ့', 'မနေ့က', 'မနက်ဖြန်', 'ည'],
        correctAnswerIndex: 0,
        explanation: '今天 = ဒီနေ့',
      ),
      ListeningQuestion(
        id: 'zh_time_listen_2',
        audioText: '八点',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['ရှစ်မိနစ်', 'ရှစ်နာရီ', 'ဆယ်နာရီ', 'ရှစ်ရက်'],
        correctAnswerIndex: 1,
        explanation: '八点 = ရှစ်နာရီ',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_time_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['现在', '八点'],
        correctSentence: ['现在', '八点'],
        explanation: 'အခု ရှစ်နာရီ',
      ),
      SentenceBuildingQuestion(
        id: 'zh_time_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['今天', '很忙'],
        correctSentence: ['今天', '很忙'],
        explanation: 'ဒီနေ့ အလုပ်များတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_time_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['点', '八'],
        correctOrder: ['八', '点'],
        explanation: 'နာရီပြရာတွင် နံပါတ်ကို အရင်ရေးသည်',
      ),
      WordOrderQuestion(
        id: 'zh_time_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['很忙', '今天'],
        correctOrder: ['今天', '很忙'],
        explanation: 'အချိန်ကို အရင်ထားပြီး အခြေအနေကို နောက်ရေးသည်',
      ),

    ],
  ),
),
        
        // Chinese - Places
        Lesson(
  id: 'zh_places',
  title: 'Chinese Places',
  description: 'တရုတ်ဘာသာဖြင့် နေရာများကို သိရှိအသုံးပြုခြင်း',
  icon: '📍',
  words: [

    VocabularyWord(
      id: 'zh_place',
      word: '地方',
      translation: 'နေရာ',
      pronunciation: '/di fang/',
      example: '这个地方很好',
    ),
    VocabularyWord(
      id: 'zh_home',
      word: '家',
      translation: 'အိမ်',
      pronunciation: '/jia/',
      example: '我在家',
    ),
    VocabularyWord(
      id: 'zh_school',
      word: '学校',
      translation: 'ကျောင်း',
      pronunciation: '/xue xiao/',
      example: '我去学校',
    ),
    VocabularyWord(
      id: 'zh_hospital',
      word: '医院',
      translation: 'ဆေးရုံ',
      pronunciation: '/yi yuan/',
      example: '他在医院',
    ),
    VocabularyWord(
      id: 'zh_market',
      word: '市场',
      translation: 'စျေး',
      pronunciation: '/shi chang/',
      example: '去市场',
    ),
    VocabularyWord(
      id: 'zh_shop',
      word: '商店',
      translation: 'ဆိုင်',
      pronunciation: '/shang dian/',
      example: '商店很大',
    ),
    VocabularyWord(
      id: 'zh_restaurant',
      word: '饭店',
      translation: 'စားသောက်ဆိုင်',
      pronunciation: '/fan dian/',
      example: '饭店在哪',
    ),
    VocabularyWord(
      id: 'zh_company',
      word: '公司',
      translation: 'ကုမ္ပဏီ',
      pronunciation: '/gong si/',
      example: '在公司工作',
    ),
    VocabularyWord(
      id: 'zh_toilet',
      word: '厕所',
      translation: 'အိမ်သာ',
      pronunciation: '/ce suo/',
      example: '厕所在哪',
    ),
    VocabularyWord(
      id: 'zh_road',
      word: '路',
      translation: 'လမ်း',
      pronunciation: '/lu/',
      example: '这条路',
    ),

  ],

  test: Test(
    id: 'zh_places_test',
    title: 'စမ်းသပ်မှု - နေရာများ',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_places_mc_1',
        question: '「家」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['ကျောင်း', 'အိမ်', 'ဆိုင်', 'လမ်း'],
        correctAnswerIndex: 1,
        explanation: '家 = အိမ်',
      ),
      MultipleChoiceQuestion(
        id: 'zh_places_mc_2',
        question: 'ဆေးရုံ ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['学校', '饭店', '医院', '市场'],
        correctAnswerIndex: 2,
        explanation: 'ဆေးရုံ = 医院',
      ),
      MultipleChoiceQuestion(
        id: 'zh_places_mc_3',
        question: '「市场」 ဆိုသည်မှာ?',
        options: ['ဆိုင်', 'လမ်း', 'စျေး', 'အိမ်'],
        correctAnswerIndex: 2,
        explanation: '市场 = စျေး',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_places_tr_1',
        question: 'ကျောင်း',
        word: 'ကျောင်း',
        translations: ['公司', '学校', '医院', '商店'],
        correctAnswerIndex: 1,
        explanation: 'ကျောင်း = 学校',
      ),
      TranslationQuestion(
        id: 'zh_places_tr_2',
        question: '饭店',
        word: '饭店',
        translations: ['အိမ်', 'ဆိုင်', 'စားသောက်ဆိုင်', 'ကုမ္ပဏီ'],
        correctAnswerIndex: 2,
        explanation: '饭店 = စားသောက်ဆိုင်',
      ),
      TranslationQuestion(
        id: 'zh_places_tr_3',
        question: 'လမ်း',
        word: 'လမ်း',
        translations: ['路', '家', '地方', '厕所'],
        correctAnswerIndex: 0,
        explanation: 'လမ်း = 路',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_places_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我在_____',
        correctWord: '家',
        options: ['家', '路', '市场', '厕所'],
        explanation: '我在家 = ကျွန်တော် အိမ်မှာရှိတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_places_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '去_____',
        correctWord: '学校',
        options: ['学校', '公司', '饭店', '商店'],
        explanation: '去学校 = ကျောင်းသွားမယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_places_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '_____ 在哪',
        correctWord: '厕所',
        options: ['路', '厕所', '公司', '地方'],
        explanation: '厕所在哪 = အိမ်သာ ဘယ်မှာလဲ',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_places_listen_1',
        audioText: '学校',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ဆေးရုံ', 'ကျောင်း', 'အိမ်', 'စျေး'],
        correctAnswerIndex: 1,
        explanation: '学校 = ကျောင်း',
      ),
      ListeningQuestion(
        id: 'zh_places_listen_2',
        audioText: '家',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['လမ်း', 'အိမ်', 'ဆိုင်', 'ကုမ္ပဏီ'],
        correctAnswerIndex: 1,
        explanation: '家 = အိမ်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_places_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['我在', '学校'],
        correctSentence: ['我在', '学校'],
        explanation: 'ကျွန်တော် ကျောင်းမှာရှိတယ်',
      ),
      SentenceBuildingQuestion(
        id: 'zh_places_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['去', '市场'],
        correctSentence: ['去', '市场'],
        explanation: 'စျေးသွားမယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_places_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['在', '我', '家'],
        correctOrder: ['我', '在', '家'],
        explanation: 'တရုတ်စာတွင် 主语 → 动词 → 地方',
      ),
      WordOrderQuestion(
        id: 'zh_places_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['哪', '在', '学校'],
        correctOrder: ['学校', '在', '哪'],
        explanation: 'မေးခွန်းတွင် 哪 ကို နောက်တွင်ထားသည်',
      ),

    ],
  ),
),

        // Chinese - Directions
        Lesson(
  id: 'zh_directions',
  title: 'Chinese Directions',
  description: 'တရုတ်ဘာသာဖြင့် လမ်းညွှန်နှင့် ဦးတည်ရာများကို အသုံးပြုနိုင်ရန်',
  icon: '🧭',
  words: [

    VocabularyWord(
      id: 'zh_left',
      word: '左',
      translation: 'ဘယ်ဘက်',
      pronunciation: '/zuo/',
      example: '向左走',
    ),
    VocabularyWord(
      id: 'zh_right',
      word: '右',
      translation: 'ညာဘက်',
      pronunciation: '/you/',
      example: '向右走',
    ),
    VocabularyWord(
      id: 'zh_straight',
      word: '直走',
      translation: 'တည့်တည့်သွား',
      pronunciation: '/zhi zou/',
      example: '一直直走',
    ),
    VocabularyWord(
      id: 'zh_turn',
      word: '转',
      translation: 'ကွေ့',
      pronunciation: '/zhuan/',
      example: '左转',
    ),
    VocabularyWord(
      id: 'zh_near',
      word: '近',
      translation: 'နီး',
      pronunciation: '/jin/',
      example: '很近',
    ),
    VocabularyWord(
      id: 'zh_far',
      word: '远',
      translation: 'ဝေး',
      pronunciation: '/yuan/',
      example: '很远',
    ),
    VocabularyWord(
      id: 'zh_front',
      word: '前面',
      translation: 'ရှေ့ဘက်',
      pronunciation: '/qian mian/',
      example: '在前面',
    ),
    VocabularyWord(
      id: 'zh_back',
      word: '后面',
      translation: 'နောက်ဘက်',
      pronunciation: '/hou mian/',
      example: '在后面',
    ),
    VocabularyWord(
      id: 'zh_here',
      word: '这里',
      translation: 'ဒီမှာ',
      pronunciation: '/zhe li/',
      example: '在这里',
    ),
    VocabularyWord(
      id: 'zh_there',
      word: '那里',
      translation: 'အဲဒီမှာ',
      pronunciation: '/na li/',
      example: '在那里',
    ),

  ],

  test: Test(
    id: 'zh_directions_test',
    title: 'စမ်းသပ်မှု - လမ်းညွှန်',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_dir_mc_1',
        question: '「左」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['ညာဘက်', 'ရှေ့ဘက်', 'ဘယ်ဘက်', 'နောက်ဘက်'],
        correctAnswerIndex: 2,
        explanation: '左 = ဘယ်ဘက်',
      ),
      MultipleChoiceQuestion(
        id: 'zh_dir_mc_2',
        question: '「直走」 ဆိုသည်မှာ?',
        options: ['ကွေ့', 'တည့်တည့်သွား', 'ရပ်', 'ပြန်'],
        correctAnswerIndex: 1,
        explanation: '直走 = တည့်တည့်သွား',
      ),
      MultipleChoiceQuestion(
        id: 'zh_dir_mc_3',
        question: '「远」 ၏ အဓိပ္ပါယ်?',
        options: ['နီး', 'ဝေး', 'ရှေ့', 'နောက်'],
        correctAnswerIndex: 1,
        explanation: '远 = ဝေး',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_dir_tr_1',
        question: 'ညာဘက်',
        word: 'ညာဘက်',
        translations: ['左', '右', '前面', '后面'],
        correctAnswerIndex: 1,
        explanation: 'ညာဘက် = 右',
      ),
      TranslationQuestion(
        id: 'zh_dir_tr_2',
        question: '前面',
        word: '前面',
        translations: ['နောက်ဘက်', 'ရှေ့ဘက်', 'နီး', 'ဝေး'],
        correctAnswerIndex: 1,
        explanation: '前面 = ရှေ့ဘက်',
      ),
      TranslationQuestion(
        id: 'zh_dir_tr_3',
        question: 'နီး',
        word: 'နီး',
        translations: ['远', '近', '那里', '这里'],
        correctAnswerIndex: 1,
        explanation: 'နီး = 近',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_dir_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '向_____走',
        correctWord: '左',
        options: ['左', '右', '前面', '后面'],
        explanation: '向左走 = ဘယ်ဘက်သို့ သွားပါ',
      ),
      FillInBlankQuestion(
        id: 'zh_dir_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '在_____',
        correctWord: '这里',
        options: ['这里', '那里', '前面', '后面'],
        explanation: '在这里 = ဒီမှာရှိတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_dir_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '很_____',
        correctWord: '近',
        options: ['近', '远', '左', '右'],
        explanation: '很近 = နီးတယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_dir_listen_1',
        audioText: '右',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ဘယ်ဘက်', 'ညာဘက်', 'ရှေ့ဘက်', 'နောက်ဘက်'],
        correctAnswerIndex: 1,
        explanation: '右 = ညာဘက်',
      ),
      ListeningQuestion(
        id: 'zh_dir_listen_2',
        audioText: '这里',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['ဒီမှာ', 'အဲဒီမှာ', 'နီး', 'ဝေး'],
        correctAnswerIndex: 0,
        explanation: '这里 = ဒီမှာ',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_dir_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['向', '右', '走'],
        correctSentence: ['向', '右', '走'],
        explanation: 'ညာဘက်သို့ သွားပါ',
      ),
      SentenceBuildingQuestion(
        id: 'zh_dir_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['在', '前面'],
        correctSentence: ['在', '前面'],
        explanation: 'ရှေ့ဘက်မှာရှိတယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_dir_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['在', '我', '这里'],
        correctOrder: ['我', '在', '这里'],
        explanation: '主语 → 动词 → 地方',
      ),
      WordOrderQuestion(
        id: 'zh_dir_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['走', '直', '一直'],
        correctOrder: ['一直', '直', '走'],
        explanation: 'အလုပ်ဆောင်ရွက်ပုံကို အရင်ထားသည်',
      ),

    ],
  ),
),

        // Chinese - Emotions
        Lesson(
  id: 'zh_emotions',
  title: 'Chinese Emotions',
  description: 'တရုတ်ဘာသာဖြင့် စိတ်ခံစားချက်များကို ဖော်ပြနိုင်ရန်',
  icon: '😊',
  words: [

    VocabularyWord(
      id: 'zh_happy',
      word: '开心',
      translation: 'ပျော်ရွှင်',
      pronunciation: '/kai xin/',
      example: '我很开心',
    ),
    VocabularyWord(
      id: 'zh_sad',
      word: '难过',
      translation: 'ဝမ်းနည်း',
      pronunciation: '/nan guo/',
      example: '我很难过',
    ),
    VocabularyWord(
      id: 'zh_angry',
      word: '生气',
      translation: 'စိတ်ဆိုး',
      pronunciation: '/sheng qi/',
      example: '他生气了',
    ),
    VocabularyWord(
      id: 'zh_tired',
      word: '累',
      translation: 'ပင်ပန်း',
      pronunciation: '/lei/',
      example: '我很累',
    ),
    VocabularyWord(
      id: 'zh_afraid',
      word: '害怕',
      translation: 'ကြောက်',
      pronunciation: '/hai pa/',
      example: '我害怕',
    ),
    VocabularyWord(
      id: 'zh_love',
      word: '喜欢',
      translation: 'ကြိုက်',
      pronunciation: '/xi huan/',
      example: '我喜欢你',
    ),
    VocabularyWord(
      id: 'zh_surprised',
      word: '惊讶',
      translation: 'အံ့ဩ',
      pronunciation: '/jing ya/',
      example: '我很惊讶',
    ),
    VocabularyWord(
      id: 'zh_worried',
      word: '担心',
      translation: 'စိုးရိမ်',
      pronunciation: '/dan xin/',
      example: '我很担心',
    ),
    VocabularyWord(
      id: 'zh_bored',
      word: '无聊',
      translation: 'ပျင်း',
      pronunciation: '/wu liao/',
      example: '我很无聊',
    ),
    VocabularyWord(
      id: 'zh_excited',
      word: '兴奋',
      translation: 'စိတ်လှုပ်ရှား',
      pronunciation: '/xing fen/',
      example: '我很兴奋',
    ),

  ],

  test: Test(
    id: 'zh_emotions_test',
    title: 'စမ်းသပ်မှု - စိတ်ခံစားချက်',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'zh_emo_mc_1',
        question: '「开心」 ၏ အဓိပ္ပါယ်မှာ ဘာလဲ?',
        options: ['ဝမ်းနည်း', 'ပျော်ရွှင်', 'စိတ်ဆိုး', 'ပင်ပန်း'],
        correctAnswerIndex: 1,
        explanation: '开心 = ပျော်ရွှင်',
      ),
      MultipleChoiceQuestion(
        id: 'zh_emo_mc_2',
        question: '「累」 ဆိုသည်မှာ?',
        options: ['ကြောက်', 'ပင်ပန်း', 'ပျင်း', 'စိုးရိမ်'],
        correctAnswerIndex: 1,
        explanation: '累 = ပင်ပန်း',
      ),
      MultipleChoiceQuestion(
        id: 'zh_emo_mc_3',
        question: 'စိတ်ဆိုး ကို တရုတ်ဘာသာဖြင့် ဘာလဲ?',
        options: ['生气', '难过', '开心', '担心'],
        correctAnswerIndex: 0,
        explanation: '生气 = စိတ်ဆိုး',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'zh_emo_tr_1',
        question: 'ကြောက်',
        word: 'ကြောက်',
        translations: ['害怕', '喜欢', '无聊', '兴奋'],
        correctAnswerIndex: 0,
        explanation: 'ကြောက် = 害怕',
      ),
      TranslationQuestion(
        id: 'zh_emo_tr_2',
        question: '难过',
        word: '难过',
        translations: ['ပျော်ရွှင်', 'ဝမ်းနည်း', 'စိတ်လှုပ်ရှား', 'ကြိုက်'],
        correctAnswerIndex: 1,
        explanation: '难过 = ဝမ်းနည်း',
      ),
      TranslationQuestion(
        id: 'zh_emo_tr_3',
        question: 'စိုးရိမ်',
        word: 'စိုးရိမ်',
        translations: ['担心', '开心', '无聊', '惊讶'],
        correctAnswerIndex: 0,
        explanation: 'စိုးရိမ် = 担心',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'zh_emo_fill_1',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我很_____',
        correctWord: '开心',
        options: ['开心', '难过', '生气', '无聊'],
        explanation: '我很开心 = ကျွန်တော်/ကျွန်မ ပျော်ပါတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_emo_fill_2',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '他很_____',
        correctWord: '生气',
        options: ['喜欢', '生气', '兴奋', '开心'],
        explanation: '他很生气 = သူ စိတ်ဆိုးနေတယ်',
      ),
      FillInBlankQuestion(
        id: 'zh_emo_fill_3',
        question: 'စာကြောင်းကို ပြီးအောင် ဖြည့်ပါ',
        sentence: '我_____你',
        correctWord: '喜欢',
        options: ['喜欢', '担心', '害怕', '无聊'],
        explanation: '我喜欢你 = မင်းကို ကြိုက်တယ်',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'zh_emo_listen_1',
        audioText: '难过',
        question: 'နားထောင်ပြီး အဓိပ္ပါယ်မှန်ကို ရွေးပါ',
        options: ['ဝမ်းနည်း', 'ပျော်ရွှင်', 'ကြောက်', 'ပျင်း'],
        correctAnswerIndex: 0,
        explanation: '难过 = ဝမ်းနည်း',
      ),
      ListeningQuestion(
        id: 'zh_emo_listen_2',
        audioText: '兴奋',
        question: 'ကြားရသော စကားလုံး၏ အဓိပ္ပါယ်?',
        options: ['စိတ်လှုပ်ရှား', 'စိုးရိမ်', 'ပင်ပန်း', 'စိတ်ဆိုး'],
        correctAnswerIndex: 0,
        explanation: '兴奋 = စိတ်လှုပ်ရှား',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'zh_emo_sentence_1',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['我', '很', '累'],
        correctSentence: ['我', '很', '累'],
        explanation: 'ငါ ပင်ပန်းတယ်',
      ),
      SentenceBuildingQuestion(
        id: 'zh_emo_sentence_2',
        question: 'စာကြောင်းတည်ဆောက်ပါ',
        wordOptions: ['我', '喜欢', '你'],
        correctSentence: ['我', '喜欢', '你'],
        explanation: 'မင်းကို ကြိုက်တယ်',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'zh_emo_order_1',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['很', '我', '开心'],
        correctOrder: ['我', '很', '开心'],
        explanation: '主语 → 程度 → 形容词',
      ),
      WordOrderQuestion(
        id: 'zh_emo_order_2',
        question: 'စာလုံးအစဉ်မှန်အောင် စီပါ',
        scrambledWords: ['你', '喜欢', '我'],
        correctOrder: ['我', '喜欢', '你'],
        explanation: 'Subject → Verb → Object',
      ),

    ],
  ),
),

      ],
    ),
    
    // Japanese Language
    Language(
      code: 'ja',
      name: 'Japanese',
      flag: '🇯🇵',
      lessons: [
        // Japanese - Basic Greetings
        Lesson(
  id: 'ja_greetings',
  title: 'Japanese Greetings',
  description: 'Learn essential Japanese greetings',
  icon: '🙏',
  words: [

    VocabularyWord(
      id: 'konnichiwa',
      word: 'こんにちは',
      translation: 'မင်္ဂလာပါ',
      pronunciation: '/kon-nee-chee-wah/',
      example: 'こんにちは元気ですか？ (How are you?)',
    ),
    VocabularyWord(
      id: 'ohayou',
      word: 'おはよう',
      translation: 'မနက်ခင်းမင်္ဂလာပါ',
      pronunciation: '/oh-hah-yoh/',
      example: 'おはようございます (Good morning)',
    ),
    VocabularyWord(
      id: 'konbanwa',
      word: 'こんばんは',
      translation: 'ညနေခင်းမင်္ဂလာပါ',
      pronunciation: '/kon-bahn-wah/',
      example: 'こんばんは (Good evening)',
    ),
    VocabularyWord(
      id: 'arigatou',
      word: 'ありがとうございます',
      translation: 'ကျေးဇူးတင်ပါတယ်',
      pronunciation: '/ah-ree-gah-toh-go-zah-ee-mahs/',
      example: 'ありがとうございます (Thank you very much)',
    ),
    VocabularyWord(
      id: 'douitashimashite',
      word: 'どういたしまして',
      translation: 'ရပါတယ်',
      pronunciation: '/doh-ee-tah-shee-mah-sh-te/',
      example: 'どういたしまして (You’re welcome)',
    ),
    VocabularyWord(
      id: 'sumimasen',
      word: 'すみません',
      translation: 'တောင်းပန်ပါတယ် / ခွင့်လွှတ်ပါ',
      pronunciation: '/soo-mee-mah-sen/',
      example: 'すみません (Excuse me)',
    ),
    VocabularyWord(
      id: 'sayonara',
      word: 'さようなら',
      translation: 'နှုတ်ဆက်ပါတယ်',
      pronunciation: '/sah-yoh-nah-rah/',
      example: 'さようなら、またね (Goodbye)',
    ),
    VocabularyWord(
      id: 'hai',
      word: 'はい',
      translation: 'ဟုတ်ပါတယ်',
      pronunciation: '/high/',
      example: 'はい、そうです (Yes, that’s right)',
    ),
    VocabularyWord(
      id: 'iie',
      word: 'いいえ',
      translation: 'မဟုတ်ပါ',
      pronunciation: '/ee-eh/',
      example: 'いいえ、ちがいます (No, that’s wrong)',
    ),
    VocabularyWord(
      id: 'hajimemashite',
      word: 'はじめまして',
      translation: 'တွေ့ရတာဝမ်းသာပါတယ်',
      pronunciation: '/hah-jee-meh-mah-sh-te/',
      example: 'はじめまして、よろしくお願いします',
    ),

  ],

  test: Test(
    id: 'ja_greetings_test',
    title: 'Test: Japanese Greetings',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'ja_mc_1',
        question: 'What does "こんにちは" mean?',
        options: ['thank you', 'hello', 'goodbye', 'excuse me'],
        correctAnswerIndex: 1,
        explanation: '"こんにちは" means "hello".',
      ),
      MultipleChoiceQuestion(
        id: 'ja_mc_2',
        question: 'Which word means "thank you"?',
        options: ['すみません', 'さようなら', 'ありがとうございます', 'いいえ'],
        correctAnswerIndex: 2,
        explanation: '"ありがとうございます" means "thank you".',
      ),
      MultipleChoiceQuestion(
        id: 'ja_mc_3',
        question: 'Which greeting is used in the morning?',
        options: ['こんばんは', 'こんにちは', 'おはよう', 'さようなら'],
        correctAnswerIndex: 2,
        explanation: '"おはよう" means "good morning".',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'ja_tr_1',
        question: 'မင်္ဂလာပါ',
        word: 'မင်္ဂလာပါ',
        translations: ['こんにちは', 'ありがとう', 'すみません', 'さようなら'],
        correctAnswerIndex: 0,
        explanation: '"こんにちは" means "မင်္ဂလာပါ".',
      ),
      TranslationQuestion(
        id: 'ja_tr_2',
        question: 'すみません',
        word: 'すみません',
        translations: ['hello', 'thank you', 'excuse me', 'goodbye'],
        correctAnswerIndex: 2,
        explanation: '"すみません" means "excuse me".',
      ),
      TranslationQuestion(
        id: 'ja_tr_3',
        question: 'ကျေးဇူးတင်ပါတယ်',
        word: 'ကျေးဇူးတင်ပါတယ်',
        translations: ['こんにちは', 'ありがとうございます', 'どういたしまして', 'さようなら'],
        correctAnswerIndex: 1,
        explanation: '"ありがとうございます" means "thank you".',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'ja_fill_1',
        question: 'Complete the sentence:',
        sentence: '_____ ございます。',
        correctWord: 'ありがとう',
        options: ['ありがとう', 'こんにちは', 'すみません', 'さようなら'],
        explanation: 'Correct form is "ありがとうございます".',
      ),
      FillInBlankQuestion(
        id: 'ja_fill_2',
        question: 'Complete the sentence:',
        sentence: '_____、はじめまして。',
        correctWord: 'こんにちは',
        options: ['こんにちは', 'さようなら', 'いいえ', 'はい'],
        explanation: 'A common first greeting.',
      ),
      FillInBlankQuestion(
        id: 'ja_fill_3',
        question: 'Complete the sentence:',
        sentence: '_____、そうです。',
        correctWord: 'はい',
        options: ['はい', 'いいえ', 'すみません', 'こんにちは'],
        explanation: '"はい" means yes.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'ja_listen_1',
        audioText: 'こんばんは',
        question: 'What did you hear?',
        options: ['good morning', 'good evening', 'hello', 'goodbye'],
        correctAnswerIndex: 1,
        explanation: '"こんばんは" means good evening.',
      ),
      ListeningQuestion(
        id: 'ja_listen_2',
        audioText: 'さようなら',
        question: 'Select the correct meaning.',
        options: ['hello', 'thank you', 'excuse me', 'goodbye'],
        correctAnswerIndex: 3,
        explanation: '"さようなら" means goodbye.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'ja_sentence_1',
        question: 'Build a polite "Thank you".',
        wordOptions: ['ありがとう', 'ございます'],
        correctSentence: ['ありがとうございます'],
        explanation: 'Polite Japanese thank you.',
      ),
      SentenceBuildingQuestion(
        id: 'ja_sentence_2',
        question: 'Build a greeting sentence.',
        wordOptions: ['こんにちは'],
        correctSentence: ['こんにちは'],
        explanation: 'Simple greeting.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'ja_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['ございます', 'ありがとう'],
        correctOrder: ['ありがとう', 'ございます'],
        explanation: 'Correct polite order.',
      ),
      WordOrderQuestion(
        id: 'ja_order_2',
        question: 'Arrange to form a greeting.',
        scrambledWords: ['こんにちは'],
        correctOrder: ['こんにちは'],
        explanation: 'Greeting sentence.',
      ),

    ],
  ),
),

        // Japanese - Self Introduction
        Lesson(
          id: 'ja_self_intro',
          title: 'Self Introduction',
          description: 'Learn how to introduce yourself in Japanese',
          icon: '👤',
          words: [

            VocabularyWord(
              id: 'watashi',
              word: 'わたし',
              translation: 'ကျွန်တော် / ကျွန်မ',
              pronunciation: '/wah-tah-shee/',
              example: 'わたしは学生です。 (I am a student)',
            ),
            VocabularyWord(
              id: 'namae',
              word: 'なまえ',
              translation: 'နာမည်',
              pronunciation: '/nah-mah-eh/',
              example: 'なまえは何ですか？ (What is your name?)',
            ),
            VocabularyWord(
              id: 'desu',
              word: 'です',
              translation: 'ဖြစ်ပါတယ်',
              pronunciation: '/deh-su/',
              example: 'わたしはサムです。 (I am Sam)',
            ),
            VocabularyWord(
              id: 'kara',
              word: 'から',
              translation: 'မှ',
              pronunciation: '/kah-rah/',
              example: 'ミャンマーから来ました。 (I am from Myanmar)',
            ),
            VocabularyWord(
              id: 'kimashita',
              word: 'きました',
              translation: 'လာခဲ့ပါတယ်',
              pronunciation: '/kee-mah-shee-tah/',
              example: 'タイからきました。 (I came from Thailand)',
            ),
            VocabularyWord(
              id: 'gakusei',
              word: '学生',
              translation: 'ကျောင်းသား',
              pronunciation: '/gah-koo-seh/',
              example: 'わたしは学生です。 (I am a student)',
            ),
            VocabularyWord(
              id: 'shigoto',
              word: 'しごと',
              translation: 'အလုပ်',
              pronunciation: '/shee-goh-toh/',
              example: 'しごとは何ですか？ (What is your job?)',
            ),
            VocabularyWord(
              id: 'yoroshiku',
              word: 'よろしく',
              translation: 'မိတ်ဆက်ပါတယ်',
              pronunciation: '/yoh-roh-shee-koo/',
              example: 'よろしくお願いします。 (Nice to meet you)',
            ),
            VocabularyWord(
              id: 'onegaishimasu',
              word: 'おねがいします',
              translation: 'ကျေးဇူးပြု၍',
              pronunciation: '/oh-neh-gah-ee-shee-mahs/',
              example: 'よろしくお願いします。',
            ),
            VocabularyWord(
              id: 'doko',
              word: 'どこ',
              translation: 'ဘယ်မှာ',
              pronunciation: '/doh-koh/',
              example: 'どこから来ましたか？ (Where are you from?)',
            ),

          ],

          test: Test(
            id: 'ja_self_intro_test',
            title: 'Test: Self Introduction',
            questions: [

              // ===== Multiple Choice (3) =====
              MultipleChoiceQuestion(
                id: 'intro_mc_1',
                question: 'What does 「わたし」 mean?',
                options: ['you', 'he', 'I', 'they'],
                correctAnswerIndex: 2,
                explanation: '「わたし」 means I.',
              ),
              MultipleChoiceQuestion(
                id: 'intro_mc_2',
                question: 'Which word means "name"?',
                options: ['しごと', 'なまえ', 'どこ', 'から'],
                correctAnswerIndex: 1,
                explanation: '「なまえ」 means name.',
              ),
              MultipleChoiceQuestion(
                id: 'intro_mc_3',
                question: 'Which sentence ending is polite?',
                options: ['だ', 'です', 'ね', 'よ'],
                correctAnswerIndex: 1,
                explanation: '「です」 is a polite ending.',
              ),

              // ===== Translation (3) =====
              TranslationQuestion(
                id: 'intro_tr_1',
                question: 'ကျွန်တော်သည် ကျောင်းသားဖြစ်ပါတယ်',
                word: 'ကျွန်တော်သည် ကျောင်းသားဖြစ်ပါတယ်',
                translations: [
                  'わたしは学生です',
                  'わたしは先生です',
                  '学生はわたしです',
                  'わたしです学生'
                ],
                correctAnswerIndex: 0,
                explanation: 'Correct sentence: わたしは学生です',
              ),
              TranslationQuestion(
                id: 'intro_tr_2',
                question: 'ミャンマーからきました',
                word: 'ミャンマーからきました',
                translations: [
                  'I came from Myanmar',
                  'I live in Myanmar',
                  'I like Myanmar',
                  'I am going to Myanmar'
                ],
                correctAnswerIndex: 0,
                explanation: '「からきました」 means came from.',
              ),
              TranslationQuestion(
                id: 'intro_tr_3',
                question: 'နာမည်',
                word: 'နာမည်',
                translations: ['なまえ', 'わたし', 'です', 'どこ'],
                correctAnswerIndex: 0,
                explanation: 'なまえ = name',
              ),

              // ===== Fill in the Blank (3) =====
              FillInBlankQuestion(
                id: 'intro_fill_1',
                question: 'Complete the sentence:',
                sentence: 'わたしは学生_____。',
                correctWord: 'です',
                options: ['です', 'ます', 'でした', 'だ'],
                explanation: 'Polite sentence uses です.',
              ),
              FillInBlankQuestion(
                id: 'intro_fill_2',
                question: 'Complete the sentence:',
                sentence: 'ミャンマー_____きました。',
                correctWord: 'から',
                options: ['まで', 'で', 'から', 'へ'],
                explanation: 'から means from.',
              ),
              FillInBlankQuestion(
                id: 'intro_fill_3',
                question: 'Complete the sentence:',
                sentence: 'よろしく_____。',
                correctWord: 'お願いします',
                options: ['です', 'します', 'お願いします', 'しますか'],
                explanation: 'Polite introduction phrase.',
              ),

              // ===== Listening (2) =====
              ListeningQuestion(
                id: 'intro_listen_1',
                audioText: 'わたしは学生です',
                question: 'What did you hear?',
                options: [
                  'I am a teacher',
                  'I am a student',
                  'I am from Japan',
                  'My name is'
                ],
                correctAnswerIndex: 1,
                explanation: '学生 = student',
              ),
              ListeningQuestion(
                id: 'intro_listen_2',
                audioText: 'よろしくお願いします',
                question: 'Select the correct meaning.',
                options: [
                  'Goodbye',
                  'Thank you',
                  'Nice to meet you',
                  'Excuse me'
                ],
                correctAnswerIndex: 2,
                explanation: 'Used in self-introduction.',
              ),

              // ===== Sentence Building (2) =====
              SentenceBuildingQuestion(
                id: 'intro_sentence_1',
                question: 'Build: "I am from Myanmar"',
                wordOptions: ['わたし', 'は', 'ミャンマー', 'から', 'きました'],
                correctSentence: ['わたし', 'は', 'ミャンマー', 'から', 'きました'],
                explanation: 'Standard self-introduction sentence.',
              ),
              SentenceBuildingQuestion(
                id: 'intro_sentence_2',
                question: 'Build: "I am a student"',
                wordOptions: ['わたし', 'は', '学生', 'です'],
                correctSentence: ['わたし', 'は', '学生', 'です'],
                explanation: 'Basic identity sentence.',
              ),

              // ===== Word Order (2) =====
              WordOrderQuestion(
                id: 'intro_order_1',
                question: 'Arrange the words correctly.',
                scrambledWords: ['です', '学生', 'わたしは'],
                correctOrder: ['わたしは', '学生', 'です'],
                explanation: 'Correct Japanese order.',
              ),
              WordOrderQuestion(
                id: 'intro_order_2',
                question: 'Arrange the words correctly.',
                scrambledWords: ['から', 'きました', 'ミャンマー'],
                correctOrder: ['ミャンマー', 'から', 'きました'],
                explanation: 'Place + から + きました',
              ),

            ],
          ),
        ),

        // Japanese - Numbers 1-10
        Lesson(
  id: 'ja_numbers',
  title: 'Japanese Numbers (1–10)',
  description: 'Learn basic Japanese numbers from 1 to 10',
  icon: '🔢',
  words: [

    VocabularyWord(
      id: 'num_1',
      word: '一',
      translation: 'တစ်',
      pronunciation: '/ee-chee/',
      example: '一つください。 (One please)',
    ),
    VocabularyWord(
      id: 'num_2',
      word: '二',
      translation: 'နှစ်',
      pronunciation: '/nee/',
      example: '二人です。 (Two people)',
    ),
    VocabularyWord(
      id: 'num_3',
      word: '三',
      translation: 'သုံး',
      pronunciation: '/sahn/',
      example: '三回です。 (Three times)',
    ),
    VocabularyWord(
      id: 'num_4',
      word: '四',
      translation: 'လေး',
      pronunciation: '/yon/',
      example: '四時です。 (Four o’clock)',
    ),
    VocabularyWord(
      id: 'num_5',
      word: '五',
      translation: 'ငါး',
      pronunciation: '/goh/',
      example: '五分です。 (Five minutes)',
    ),
    VocabularyWord(
      id: 'num_6',
      word: '六',
      translation: 'ခြောက်',
      pronunciation: '/roh-koo/',
      example: '六日です。 (Six days)',
    ),
    VocabularyWord(
      id: 'num_7',
      word: '七',
      translation: 'ခုနစ်',
      pronunciation: '/nah-nah/',
      example: '七人です。 (Seven people)',
    ),
    VocabularyWord(
      id: 'num_8',
      word: '八',
      translation: 'ရှစ်',
      pronunciation: '/hah-chee/',
      example: '八時です。 (Eight o’clock)',
    ),
    VocabularyWord(
      id: 'num_9',
      word: '九',
      translation: 'ကိုး',
      pronunciation: '/kyoo/',
      example: '九月です。 (September)',
    ),
    VocabularyWord(
      id: 'num_10',
      word: '十',
      translation: 'ဆယ်',
      pronunciation: '/joo/',
      example: '十分です。 (Ten minutes)',
    ),

  ],

  test: Test(
    id: 'ja_numbers_test',
    title: 'Test: Numbers (1–10)',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'num_mc_1',
        question: 'What does 「三」 mean?',
        options: ['နှစ်', 'သုံး', 'လေး', 'ငါး'],
        correctAnswerIndex: 1,
        explanation: '三 = သုံး',
      ),
      MultipleChoiceQuestion(
        id: 'num_mc_2',
        question: 'Which number is 「七」?',
        options: ['ခြောက်', 'ခုနစ်', 'ရှစ်', 'ကိုး'],
        correctAnswerIndex: 1,
        explanation: '七 = ခုနစ်',
      ),
      MultipleChoiceQuestion(
        id: 'num_mc_3',
        question: 'How do you read 「五」?',
        options: ['ご', 'なな', 'きゅう', 'よん'],
        correctAnswerIndex: 0,
        explanation: '五 is read as ご',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'num_tr_1',
        question: 'လေး',
        word: 'လေး',
        translations: ['三', '五', '四', '六'],
        correctAnswerIndex: 2,
        explanation: 'လေး = 四',
      ),
      TranslationQuestion(
        id: 'num_tr_2',
        question: '八',
        word: '八',
        translations: ['ခုနစ်', 'ရှစ်', 'ကိုး', 'ငါး'],
        correctAnswerIndex: 1,
        explanation: '八 = ရှစ်',
      ),
      TranslationQuestion(
        id: 'num_tr_3',
        question: 'ကိုး',
        word: 'ကိုး',
        translations: ['九', '七', '八', '十'],
        correctAnswerIndex: 0,
        explanation: 'ကိုး = 九',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'num_fill_1',
        question: 'Complete the sentence:',
        sentence: '一、二、_____',
        correctWord: '三',
        options: ['三', '四', '五', '六'],
        explanation: 'Correct order: 一、二、三',
      ),
      FillInBlankQuestion(
        id: 'num_fill_2',
        question: 'Complete the sentence:',
        sentence: '九 の よみかた は _____ です。',
        correctWord: 'きゅう',
        options: ['きゅう', 'ご', 'なな', 'よん'],
        explanation: '九 is read as きゅう',
      ),
      FillInBlankQuestion(
        id: 'num_fill_3',
        question: 'Complete the sentence:',
        sentence: '_____ は 10 です。',
        correctWord: '十',
        options: ['九', '八', '十', '七'],
        explanation: '十 = 10',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'num_listen_1',
        audioText: 'はち',
        question: 'What number did you hear?',
        options: ['ခြောက်', 'ခုနစ်', 'ရှစ်', 'ကိုး'],
        correctAnswerIndex: 2,
        explanation: 'はち = 八 = ရှစ်',
      ),
      ListeningQuestion(
        id: 'num_listen_2',
        audioText: 'ろく',
        question: 'Select the correct meaning.',
        options: ['ငါး', 'ခြောက်', 'ခုနစ်', 'ရှစ်'],
        correctAnswerIndex: 1,
        explanation: 'ろく = 六 = ခြောက်',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'num_sentence_1',
        question: 'Build: "Three people"',
        wordOptions: ['三', '人', 'です'],
        correctSentence: ['三人です'],
        explanation: '三人です = Three people',
      ),
      SentenceBuildingQuestion(
        id: 'num_sentence_2',
        question: 'Build: "Ten minutes"',
        wordOptions: ['十', '分', 'です'],
        correctSentence: ['十分です'],
        explanation: '十分です = Ten minutes',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'num_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['です', '五', '分'],
        correctOrder: ['五', '分', 'です'],
        explanation: 'Correct Japanese word order.',
      ),
      WordOrderQuestion(
        id: 'num_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['人', '七', 'です'],
        correctOrder: ['七', '人', 'です'],
        explanation: 'Number + counter + です',
      ),

    ],
  ),
),
        
        // Japanese - Days & Time
        Lesson(
  id: 'ja_days_time',
  title: 'Days & Time',
  description: 'Learn Japanese days of the week and basic time words',
  icon: '📅',
  words: [

    VocabularyWord(
      id: 'day_monday',
      word: '月曜日',
      translation: 'တနင်္လာနေ့',
      pronunciation: '/get-su-yoh-bee/',
      example: '月曜日に学校があります。 (I have school on Monday)',
    ),
    VocabularyWord(
      id: 'day_tuesday',
      word: '火曜日',
      translation: 'အင်္ဂါနေ့',
      pronunciation: '/kah-yoh-bee/',
      example: '火曜日に仕事します。 (I work on Tuesday)',
    ),
    VocabularyWord(
      id: 'day_wednesday',
      word: '水曜日',
      translation: 'ဗုဒ္ဓဟူးနေ့',
      pronunciation: '/swee-yoh-bee/',
      example: '水曜日は休みです。 (Wednesday is a holiday)',
    ),
    VocabularyWord(
      id: 'day_thursday',
      word: '木曜日',
      translation: 'ကြာသပတေးနေ့',
      pronunciation: '/moh-koo-yoh-bee/',
      example: '木曜日に会います。 (I will meet on Thursday)',
    ),
    VocabularyWord(
      id: 'day_friday',
      word: '金曜日',
      translation: 'သောကြာနေ့',
      pronunciation: '/keen-yoh-bee/',
      example: '金曜日は忙しいです。 (Friday is busy)',
    ),
    VocabularyWord(
      id: 'day_saturday',
      word: '土曜日',
      translation: 'စနေနေ့',
      pronunciation: '/doh-yoh-bee/',
      example: '土曜日に勉強します。 (I study on Saturday)',
    ),
    VocabularyWord(
      id: 'day_sunday',
      word: '日曜日',
      translation: 'တနင်္ဂနွေနေ့',
      pronunciation: '/nee-chee-yoh-bee/',
      example: '日曜日は休みです。 (Sunday is a holiday)',
    ),
    VocabularyWord(
      id: 'time_today',
      word: '今日',
      translation: 'ဒီနေ့',
      pronunciation: '/kyoh/',
      example: '今日は暑いです。 (Today is hot)',
    ),
    VocabularyWord(
      id: 'time_tomorrow',
      word: '明日',
      translation: 'မနက်ဖြန်',
      pronunciation: '/ah-shee-tah/',
      example: '明日学校があります。 (I have school tomorrow)',
    ),
    VocabularyWord(
      id: 'time_yesterday',
      word: '昨日',
      translation: 'မနေ့က',
      pronunciation: '/kee-noh/',
      example: '昨日雨でした。 (Yesterday it rained)',
    ),

  ],

  test: Test(
    id: 'ja_days_time_test',
    title: 'Test: Days & Time',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'day_mc_1',
        question: 'What day is 「月曜日」?',
        options: ['Sunday', 'Monday', 'Tuesday', 'Friday'],
        correctAnswerIndex: 1,
        explanation: '月曜日 = Monday',
      ),
      MultipleChoiceQuestion(
        id: 'day_mc_2',
        question: 'Which word means "today"?',
        options: ['昨日', '明日', '今日', '日曜日'],
        correctAnswerIndex: 2,
        explanation: '今日 means today.',
      ),
      MultipleChoiceQuestion(
        id: 'day_mc_3',
        question: '「日曜日」 is which day?',
        options: ['Saturday', 'Sunday', 'Friday', 'Monday'],
        correctAnswerIndex: 1,
        explanation: '日曜日 = Sunday',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'day_tr_1',
        question: 'မနက်ဖြန်',
        word: 'မနက်ဖြန်',
        translations: ['昨日', '今日', '明日', '日曜日'],
        correctAnswerIndex: 2,
        explanation: 'မနက်ဖြန် = 明日',
      ),
      TranslationQuestion(
        id: 'day_tr_2',
        question: '金曜日',
        word: '金曜日',
        translations: ['စနေနေ့', 'သောကြာနေ့', 'တနင်္လာနေ့', 'ဗုဒ္ဓဟူးနေ့'],
        correctAnswerIndex: 1,
        explanation: '金曜日 = သောကြာနေ့',
      ),
      TranslationQuestion(
        id: 'day_tr_3',
        question: 'မနေ့က',
        word: 'မနေ့က',
        translations: ['今日', '昨日', '明日', '日曜日'],
        correctAnswerIndex: 1,
        explanation: 'မနေ့က = 昨日',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'day_fill_1',
        question: 'Complete the sentence:',
        sentence: '今日は_____です。',
        correctWord: '月曜日',
        options: ['月曜日', '昨日', '明日', '日曜日'],
        explanation: '今日は月曜日です。',
      ),
      FillInBlankQuestion(
        id: 'day_fill_2',
        question: 'Complete the sentence:',
        sentence: '_____は休みです。',
        correctWord: '日曜日',
        options: ['火曜日', '金曜日', '日曜日', '木曜日'],
        explanation: 'Sunday is usually a holiday.',
      ),
      FillInBlankQuestion(
        id: 'day_fill_3',
        question: 'Complete the sentence:',
        sentence: '昨日は雨_____。',
        correctWord: 'でした',
        options: ['です', 'でした', 'ます', 'だ'],
        explanation: 'Past tense uses でした.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'day_listen_1',
        audioText: 'あした',
        question: 'What does it mean?',
        options: ['yesterday', 'today', 'tomorrow', 'Sunday'],
        correctAnswerIndex: 2,
        explanation: 'あした = 明日',
      ),
      ListeningQuestion(
        id: 'day_listen_2',
        audioText: 'きのう',
        question: 'Select the correct meaning.',
        options: ['today', 'tomorrow', 'yesterday', 'Monday'],
        correctAnswerIndex: 2,
        explanation: 'きのう = 昨日',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'day_sentence_1',
        question: 'Build: "Today is Monday"',
        wordOptions: ['今日', 'は', '月曜日', 'です'],
        correctSentence: ['今日', 'は', '月曜日', 'です'],
        explanation: 'Correct sentence structure.',
      ),
      SentenceBuildingQuestion(
        id: 'day_sentence_2',
        question: 'Build: "Tomorrow is Sunday"',
        wordOptions: ['明日', 'は', '日曜日', 'です'],
        correctSentence: ['明日', 'は', '日曜日', 'です'],
        explanation: 'Basic time sentence.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'day_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['です', '今日', 'は'],
        correctOrder: ['今日', 'は', 'です'],
        explanation: 'Topic + は + です',
      ),
      WordOrderQuestion(
        id: 'day_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['日曜日', '明日', 'です'],
        correctOrder: ['明日', '日曜日', 'です'],
        explanation: 'Time + day + です',
      ),

    ],
  ),
),

        // Japanese - Family
        Lesson(
  id: 'ja_family',
  title: 'Family',
  description: 'Learn common Japanese family words',
  icon: '👨‍👩‍👧‍👦',
  words: [

    VocabularyWord(
      id: 'family_father',
      word: '父',
      translation: 'အဖေ',
      pronunciation: '/chee-chee/',
      example: '父は会社員です。 (My father is an office worker)',
    ),
    VocabularyWord(
      id: 'family_mother',
      word: '母',
      translation: 'အမေ',
      pronunciation: '/hah-hah/',
      example: '母は優しいです。 (My mother is kind)',
    ),
    VocabularyWord(
      id: 'family_brother',
      word: '兄',
      translation: 'အစ်ကို',
      pronunciation: '/ah-nee/',
      example: '兄は学生です。 (My older brother is a student)',
    ),
    VocabularyWord(
      id: 'family_sister',
      word: '姉',
      translation: 'အစ်မ',
      pronunciation: '/ah-neh/',
      example: '姉は先生です。 (My older sister is a teacher)',
    ),
    VocabularyWord(
      id: 'family_younger_brother',
      word: '弟',
      translation: 'မောင်လေး',
      pronunciation: '/oh-toh-toh/',
      example: '弟は小学生です。 (My younger brother is an elementary student)',
    ),
    VocabularyWord(
      id: 'family_younger_sister',
      word: '妹',
      translation: 'ညီမ',
      pronunciation: '/ee-moh-toh/',
      example: '妹は元気です。 (My younger sister is energetic)',
    ),
    VocabularyWord(
      id: 'family_family',
      word: '家族',
      translation: 'မိသားစု',
      pronunciation: '/kah-zoh-koo/',
      example: '家族が大好きです。 (I love my family)',
    ),
    VocabularyWord(
      id: 'family_parents',
      word: '両親',
      translation: 'မိဘများ',
      pronunciation: '/ryoh-shin/',
      example: '両親は健康です。 (My parents are healthy)',
    ),
    VocabularyWord(
      id: 'family_child',
      word: '子供',
      translation: 'ကလေး',
      pronunciation: '/koh-doh-moh/',
      example: '子供が二人います。 (I have two children)',
    ),
    VocabularyWord(
      id: 'family_home',
      word: '家',
      translation: 'အိမ်',
      pronunciation: '/ee-eh/',
      example: '家に帰ります。 (I go home)',
    ),

  ],

  test: Test(
    id: 'ja_family_test',
    title: 'Test: Family',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'family_mc_1',
        question: 'What does 「父」 mean?',
        options: ['mother', 'father', 'brother', 'uncle'],
        correctAnswerIndex: 1,
        explanation: '父 means father.',
      ),
      MultipleChoiceQuestion(
        id: 'family_mc_2',
        question: 'Which word means "family"?',
        options: ['家', '両親', '家族', '子供'],
        correctAnswerIndex: 2,
        explanation: '家族 means family.',
      ),
      MultipleChoiceQuestion(
        id: 'family_mc_3',
        question: '「妹」 refers to?',
        options: ['older sister', 'younger sister', 'mother', 'daughter'],
        correctAnswerIndex: 1,
        explanation: '妹 = younger sister.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'family_tr_1',
        question: 'အမေ',
        word: 'အမေ',
        translations: ['母', '父', '姉', '妹'],
        correctAnswerIndex: 0,
        explanation: 'အမေ = 母',
      ),
      TranslationQuestion(
        id: 'family_tr_2',
        question: '兄',
        word: '兄',
        translations: ['ညီမ', 'မောင်လေး', 'အစ်ကို', 'အဖေ'],
        correctAnswerIndex: 2,
        explanation: '兄 = အစ်ကို',
      ),
      TranslationQuestion(
        id: 'family_tr_3',
        question: 'မိသားစု',
        word: 'မိသားစု',
        translations: ['家', '家族', '両親', '子供'],
        correctAnswerIndex: 1,
        explanation: 'မိသားစု = 家族',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'family_fill_1',
        question: 'Complete the sentence:',
        sentence: '_____は優しいです。',
        correctWord: '母',
        options: ['父', '母', '兄', '弟'],
        explanation: '母 is often used for mother.',
      ),
      FillInBlankQuestion(
        id: 'family_fill_2',
        question: 'Complete the sentence:',
        sentence: '_____が大好きです。',
        correctWord: '家族',
        options: ['家', '家族', '子供', '両親'],
        explanation: '家族 fits the meaning.',
      ),
      FillInBlankQuestion(
        id: 'family_fill_3',
        question: 'Complete the sentence:',
        sentence: '弟は_____です。',
        correctWord: '学生',
        options: ['学生', '先生', '医者', '会社'],
        explanation: '学生 = student.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'family_listen_1',
        audioText: 'はは',
        question: 'What does it mean?',
        options: ['father', 'mother', 'sister', 'family'],
        correctAnswerIndex: 1,
        explanation: 'はは = 母',
      ),
      ListeningQuestion(
        id: 'family_listen_2',
        audioText: 'かぞく',
        question: 'Select the correct meaning.',
        options: ['home', 'parents', 'family', 'child'],
        correctAnswerIndex: 2,
        explanation: 'かぞく = 家族',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'family_sentence_1',
        question: 'Build: "I love my family"',
        wordOptions: ['家族', 'が', '大好き', 'です'],
        correctSentence: ['家族', 'が', '大好き', 'です'],
        explanation: 'Correct Japanese sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'family_sentence_2',
        question: 'Build: "My mother is kind"',
        wordOptions: ['母', 'は', '優しい', 'です'],
        correctSentence: ['母', 'は', '優しい', 'です'],
        explanation: 'Basic adjective sentence.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'family_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['です', '父', 'は'],
        correctOrder: ['父', 'は', 'です'],
        explanation: 'Topic + は + です',
      ),
      WordOrderQuestion(
        id: 'family_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['大好き', '家族', 'です'],
        correctOrder: ['家族', '大好き', 'です'],
        explanation: 'Natural Japanese order.',
      ),

    ],
  ),
),
        
        // Japanese - Food
        Lesson(
  id: 'ja_food',
  title: 'Food',
  description: 'Learn common Japanese food vocabulary',
  icon: '🍱',
  words: [

    VocabularyWord(
      id: 'food_rice',
      word: 'ご飯',
      translation: 'ထမင်း',
      pronunciation: '/goh-han/',
      example: 'ご飯を食べます。 (I eat rice)',
    ),
    VocabularyWord(
      id: 'food_bread',
      word: 'パン',
      translation: 'ပေါင်မုန့်',
      pronunciation: '/pan/',
      example: '朝にパンを食べます。 (I eat bread in the morning)',
    ),
    VocabularyWord(
      id: 'food_noodles',
      word: '麺',
      translation: 'ခေါက်ဆွဲ',
      pronunciation: '/men/',
      example: '麺が好きです。 (I like noodles)',
    ),
    VocabularyWord(
      id: 'food_fish',
      word: '魚',
      translation: 'ငါး',
      pronunciation: '/sah-kah-nah/',
      example: '魚を食べます。 (I eat fish)',
    ),
    VocabularyWord(
      id: 'food_meat',
      word: '肉',
      translation: 'အသား',
      pronunciation: '/nee-koo/',
      example: '肉が好きです。 (I like meat)',
    ),
    VocabularyWord(
      id: 'food_vegetable',
      word: '野菜',
      translation: 'ဟင်းသီးဟင်းရွက်',
      pronunciation: '/yah-sigh/',
      example: '野菜は健康にいいです。 (Vegetables are healthy)',
    ),
    VocabularyWord(
      id: 'food_fruit',
      word: '果物',
      translation: 'အသီးအနှံ',
      pronunciation: '/kah-moh-noh/',
      example: '果物を食べます。 (I eat fruit)',
    ),
    VocabularyWord(
      id: 'food_water',
      word: '水',
      translation: 'ရေ',
      pronunciation: '/mee-zoo/',
      example: '水を飲みます。 (I drink water)',
    ),
    VocabularyWord(
      id: 'food_tea',
      word: 'お茶',
      translation: 'လက်ဖက်ရည်',
      pronunciation: '/oh-chah/',
      example: 'お茶を飲みます。 (I drink tea)',
    ),
    VocabularyWord(
      id: 'food_delicious',
      word: '美味しい',
      translation: 'အရသာကောင်း',
      pronunciation: '/oh-ee-shee/',
      example: 'この料理は美味しいです。 (This food is delicious)',
    ),

  ],

  test: Test(
    id: 'ja_food_test',
    title: 'Test: Food',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'food_mc_1',
        question: 'What does 「ご飯」 mean?',
        options: ['bread', 'rice', 'noodles', 'meat'],
        correctAnswerIndex: 1,
        explanation: 'ご飯 means rice.',
      ),
      MultipleChoiceQuestion(
        id: 'food_mc_2',
        question: 'Which word means "water"?',
        options: ['お茶', '水', '果物', '野菜'],
        correctAnswerIndex: 1,
        explanation: '水 means water.',
      ),
      MultipleChoiceQuestion(
        id: 'food_mc_3',
        question: '「肉」 means?',
        options: ['fish', 'vegetable', 'meat', 'fruit'],
        correctAnswerIndex: 2,
        explanation: '肉 = meat.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'food_tr_1',
        question: 'ထမင်း',
        word: 'ထမင်း',
        translations: ['パン', '水', 'ご飯', '肉'],
        correctAnswerIndex: 2,
        explanation: 'ထမင်း = ご飯',
      ),
      TranslationQuestion(
        id: 'food_tr_2',
        question: '魚',
        word: '魚',
        translations: ['အသား', 'ငါး', 'ဟင်းသီးဟင်းရွက်', 'အသီး'],
        correctAnswerIndex: 1,
        explanation: '魚 = ငါး',
      ),
      TranslationQuestion(
        id: 'food_tr_3',
        question: 'လက်ဖက်ရည်',
        word: 'လက်ဖက်ရည်',
        translations: ['水', '果物', 'お茶', 'パン'],
        correctAnswerIndex: 2,
        explanation: 'လက်ဖက်ရည် = お茶',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'food_fill_1',
        question: 'Complete the sentence:',
        sentence: '_____を飲みます。',
        correctWord: '水',
        options: ['水', '肉', '魚', '野菜'],
        explanation: '水 means water.',
      ),
      FillInBlankQuestion(
        id: 'food_fill_2',
        question: 'Complete the sentence:',
        sentence: 'この料理は_____です。',
        correctWord: '美味しい',
        options: ['美味しい', '水', '肉', '果物'],
        explanation: '美味しい = delicious.',
      ),
      FillInBlankQuestion(
        id: 'food_fill_3',
        question: 'Complete the sentence:',
        sentence: '朝に_____を食べます。',
        correctWord: 'パン',
        options: ['パン', '魚', '肉', '水'],
        explanation: 'パン is bread.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'food_listen_1',
        audioText: 'みず',
        question: 'What did you hear?',
        options: ['tea', 'water', 'rice', 'fruit'],
        correctAnswerIndex: 1,
        explanation: 'みず = 水',
      ),
      ListeningQuestion(
        id: 'food_listen_2',
        audioText: 'おいしい',
        question: 'Select the correct meaning.',
        options: ['hot', 'cold', 'delicious', 'sweet'],
        correctAnswerIndex: 2,
        explanation: 'おいしい means delicious.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'food_sentence_1',
        question: 'Build: "I eat rice"',
        wordOptions: ['ご飯', 'を', '食べます'],
        correctSentence: ['ご飯', 'を', '食べます'],
        explanation: 'Correct Japanese sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'food_sentence_2',
        question: 'Build: "I drink water"',
        wordOptions: ['水', 'を', '飲みます'],
        correctSentence: ['水', 'を', '飲みます'],
        explanation: 'Correct verb usage.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'food_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['食べます', 'ご飯', 'を'],
        correctOrder: ['ご飯', 'を', '食べます'],
        explanation: 'Object + を + verb.',
      ),
      WordOrderQuestion(
        id: 'food_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['です', '美味しい', '料理'],
        correctOrder: ['料理', '美味しい', 'です'],
        explanation: 'Noun + adjective + です.',
      ),

    ],
  ),
),

        // Japanese - Daily Activities
        Lesson(
  id: 'ja_daily_activities',
  title: 'Daily Activities',
  description: 'Learn common daily activities in Japanese',
  icon: '⏰',
  words: [

    VocabularyWord(
      id: 'daily_wake_up',
      word: '起きる',
      translation: 'နိုးထသည်',
      pronunciation: '/oh-kee-roo/',
      example: '毎朝6時に起きます。 (I wake up at 6 every morning)',
    ),
    VocabularyWord(
      id: 'daily_sleep',
      word: '寝る',
      translation: 'အိပ်သည်',
      pronunciation: '/neh-roo/',
      example: '11時に寝ます。 (I sleep at 11)',
    ),
    VocabularyWord(
      id: 'daily_eat',
      word: '食べる',
      translation: 'စားသည်',
      pronunciation: '/tah-beh-roo/',
      example: '朝ごはんを食べます。 (I eat breakfast)',
    ),
    VocabularyWord(
      id: 'daily_drink',
      word: '飲む',
      translation: 'သောက်သည်',
      pronunciation: '/noh-moo/',
      example: '水を飲みます。 (I drink water)',
    ),
    VocabularyWord(
      id: 'daily_go',
      word: '行く',
      translation: 'သွားသည်',
      pronunciation: '/ee-koo/',
      example: '学校へ行きます。 (I go to school)',
    ),
    VocabularyWord(
      id: 'daily_come',
      word: '来る',
      translation: 'လာသည်',
      pronunciation: '/koo-roo/',
      example: '家に来ます。 (I come home)',
    ),
    VocabularyWord(
      id: 'daily_work',
      word: '働く',
      translation: 'အလုပ်လုပ်သည်',
      pronunciation: '/hah-tah-rah-koo/',
      example: '会社で働きます。 (I work at a company)',
    ),
    VocabularyWord(
      id: 'daily_study',
      word: '勉強する',
      translation: 'စာလေ့လာသည်',
      pronunciation: '/ben-kyoh-soo-roo/',
      example: '日本語を勉強します。 (I study Japanese)',
    ),
    VocabularyWord(
      id: 'daily_rest',
      word: '休む',
      translation: 'အနားယူသည်',
      pronunciation: '/yah-soo-moo/',
      example: '週末に休みます。 (I rest on weekends)',
    ),
    VocabularyWord(
      id: 'daily_read',
      word: '読む',
      translation: 'ဖတ်သည်',
      pronunciation: '/yoh-moo/',
      example: '本を読みます。 (I read a book)',
    ),

  ],

  test: Test(
    id: 'ja_daily_activities_test',
    title: 'Test: Daily Activities',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'daily_mc_1',
        question: 'What does 「起きる」 mean?',
        options: ['sleep', 'wake up', 'eat', 'go'],
        correctAnswerIndex: 1,
        explanation: '起きる means wake up.',
      ),
      MultipleChoiceQuestion(
        id: 'daily_mc_2',
        question: 'Which word means "study"?',
        options: ['働く', '読む', '勉強する', '行く'],
        correctAnswerIndex: 2,
        explanation: '勉強する means study.',
      ),
      MultipleChoiceQuestion(
        id: 'daily_mc_3',
        question: '「読む」 means?',
        options: ['write', 'read', 'sleep', 'drink'],
        correctAnswerIndex: 1,
        explanation: '読む = read.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'daily_tr_1',
        question: 'အိပ်သည်',
        word: 'အိပ်သည်',
        translations: ['起きる', '寝る', '行く', '来る'],
        correctAnswerIndex: 1,
        explanation: 'အိပ်သည် = 寝る',
      ),
      TranslationQuestion(
        id: 'daily_tr_2',
        question: '働く',
        word: '働く',
        translations: ['စာဖတ်သည်', 'အလုပ်လုပ်သည်', 'အနားယူသည်', 'သောက်သည်'],
        correctAnswerIndex: 1,
        explanation: '働く = အလုပ်လုပ်သည်',
      ),
      TranslationQuestion(
        id: 'daily_tr_3',
        question: 'စာဖတ်သည်',
        word: 'စာဖတ်သည်',
        translations: ['飲む', '読む', '休む', '食べる'],
        correctAnswerIndex: 1,
        explanation: 'စာဖတ်သည် = 読む',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'daily_fill_1',
        question: 'Complete the sentence:',
        sentence: '毎朝6時に_____。',
        correctWord: '起きます',
        options: ['起きます', '寝ます', '行きます', '読みます'],
        explanation: '起きます = wake up.',
      ),
      FillInBlankQuestion(
        id: 'daily_fill_2',
        question: 'Complete the sentence:',
        sentence: '日本語を_____。',
        correctWord: '勉強します',
        options: ['勉強します', '飲みます', '寝ます', '来ます'],
        explanation: '勉強します = study.',
      ),
      FillInBlankQuestion(
        id: 'daily_fill_3',
        question: 'Complete the sentence:',
        sentence: '本を_____。',
        correctWord: '読みます',
        options: ['読みます', '行きます', '来ます', '休みます'],
        explanation: '読みます = read.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'daily_listen_1',
        audioText: 'ねます',
        question: 'What did you hear?',
        options: ['wake up', 'sleep', 'eat', 'work'],
        correctAnswerIndex: 1,
        explanation: 'ねます = sleep.',
      ),
      ListeningQuestion(
        id: 'daily_listen_2',
        audioText: 'いきます',
        question: 'Select the correct meaning.',
        options: ['come', 'go', 'read', 'drink'],
        correctAnswerIndex: 1,
        explanation: 'いきます = go.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'daily_sentence_1',
        question: 'Build: "I go to school"',
        wordOptions: ['学校', 'へ', '行きます'],
        correctSentence: ['学校', 'へ', '行きます'],
        explanation: 'Correct Japanese sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'daily_sentence_2',
        question: 'Build: "I study Japanese"',
        wordOptions: ['日本語', 'を', '勉強します'],
        correctSentence: ['日本語', 'を', '勉強します'],
        explanation: 'Correct verb usage.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'daily_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['読みます', '本', 'を'],
        correctOrder: ['本', 'を', '読みます'],
        explanation: 'Object + を + verb.',
      ),
      WordOrderQuestion(
        id: 'daily_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['休みます', '週末', 'に'],
        correctOrder: ['週末', 'に', '休みます'],
        explanation: 'Time + に + verb.',
      ),

    ],
  ),
),

        // Japanese - Time & Dates
        Lesson(
  id: 'ja_time_dates',
  title: 'Time & Dates',
  description: 'Learn how to talk about time and dates in Japanese',
  icon: '🕒',
  words: [

    VocabularyWord(
      id: 'time_today',
      word: '今日',
      translation: 'ဒီနေ့',
      pronunciation: '/kyoh/',
      example: '今日は忙しいです。 (Today is busy)',
    ),
    VocabularyWord(
      id: 'time_tomorrow',
      word: '明日',
      translation: 'မနက်ဖြန်',
      pronunciation: '/ah-shi-tah/',
      example: '明日学校へ行きます。 (I will go to school tomorrow)',
    ),
    VocabularyWord(
      id: 'time_yesterday',
      word: '昨日',
      translation: 'မနေ့က',
      pronunciation: '/kee-noh/',
      example: '昨日雨でした。 (Yesterday was rainy)',
    ),
    VocabularyWord(
      id: 'time_now',
      word: '今',
      translation: 'အခု',
      pronunciation: '/ee-ma/',
      example: '今勉強しています。 (I am studying now)',
    ),
    VocabularyWord(
      id: 'time_morning',
      word: '朝',
      translation: 'မနက်',
      pronunciation: '/ah-sah/',
      example: '朝ご飯を食べます。 (I eat breakfast in the morning)',
    ),
    VocabularyWord(
      id: 'time_night',
      word: '夜',
      translation: 'ည',
      pronunciation: '/yoh-roo/',
      example: '夜に寝ます。 (I sleep at night)',
    ),
    VocabularyWord(
      id: 'time_week',
      word: '週',
      translation: 'အပတ်',
      pronunciation: '/shoo/',
      example: '週に3回勉強します。 (I study 3 times a week)',
    ),
    VocabularyWord(
      id: 'time_month',
      word: '月',
      translation: 'လ',
      pronunciation: '/tsoo-kee/',
      example: '来月旅行します。 (I will travel next month)',
    ),
    VocabularyWord(
      id: 'time_year',
      word: '年',
      translation: 'နှစ်',
      pronunciation: '/neh-n/',
      example: '今年は忙しいです。 (This year is busy)',
    ),
    VocabularyWord(
      id: 'time_hour',
      word: '時間',
      translation: 'နာရီ (အချိန်)',
      pronunciation: '/jee-kahn/',
      example: '2時間勉強します。 (I study for 2 hours)',
    ),

  ],

  test: Test(
    id: 'ja_time_dates_test',
    title: 'Test: Time & Dates',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'time_mc_1',
        question: 'What does 「今日」 mean?',
        options: ['yesterday', 'today', 'tomorrow', 'now'],
        correctAnswerIndex: 1,
        explanation: '今日 means today.',
      ),
      MultipleChoiceQuestion(
        id: 'time_mc_2',
        question: 'Which word means "tomorrow"?',
        options: ['昨日', '今日', '明日', '今'],
        correctAnswerIndex: 2,
        explanation: '明日 means tomorrow.',
      ),
      MultipleChoiceQuestion(
        id: 'time_mc_3',
        question: '「年」 means?',
        options: ['month', 'week', 'year', 'day'],
        correctAnswerIndex: 2,
        explanation: '年 = year.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'time_tr_1',
        question: 'မနေ့က',
        word: 'မနေ့က',
        translations: ['今日', '明日', '昨日', '今'],
        correctAnswerIndex: 2,
        explanation: 'မနေ့က = 昨日',
      ),
      TranslationQuestion(
        id: 'time_tr_2',
        question: '今',
        word: '今',
        translations: ['မနေ့က', 'မနက်ဖြန်', 'အခု', 'ဒီနေ့'],
        correctAnswerIndex: 2,
        explanation: '今 = အခု',
      ),
      TranslationQuestion(
        id: 'time_tr_3',
        question: 'နှစ်',
        word: 'နှစ်',
        translations: ['週', '年', '月', '時間'],
        correctAnswerIndex: 1,
        explanation: 'နှစ် = 年',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'time_fill_1',
        question: 'Complete the sentence:',
        sentence: '_____は忙しいです。',
        correctWord: '今日は',
        options: ['今日は', '昨日は', '明日は', '今は'],
        explanation: '今日は = today.',
      ),
      FillInBlankQuestion(
        id: 'time_fill_2',
        question: 'Complete the sentence:',
        sentence: '_____勉強しています。',
        correctWord: '今',
        options: ['昨日', '明日', '今', '朝'],
        explanation: '今 = now.',
      ),
      FillInBlankQuestion(
        id: 'time_fill_3',
        question: 'Complete the sentence:',
        sentence: '2_____勉強します。',
        correctWord: '時間',
        options: ['年', '月', '時間', '週'],
        explanation: '時間 = hours.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'time_listen_1',
        audioText: 'きょう',
        question: 'What did you hear?',
        options: ['today', 'tomorrow', 'yesterday', 'night'],
        correctAnswerIndex: 0,
        explanation: 'きょう = 今日.',
      ),
      ListeningQuestion(
        id: 'time_listen_2',
        audioText: 'あした',
        question: 'Select the correct meaning.',
        options: ['yesterday', 'tomorrow', 'today', 'now'],
        correctAnswerIndex: 1,
        explanation: 'あした = 明日.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'time_sentence_1',
        question: 'Build: "I study today"',
        wordOptions: ['今日', '勉強します'],
        correctSentence: ['今日', '勉強します'],
        explanation: 'Correct sentence structure.',
      ),
      SentenceBuildingQuestion(
        id: 'time_sentence_2',
        question: 'Build: "I will go tomorrow"',
        wordOptions: ['明日', '行きます'],
        correctSentence: ['明日', '行きます'],
        explanation: 'Future meaning with time word.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'time_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['勉強します', '今日'],
        correctOrder: ['今日', '勉強します'],
        explanation: 'Time usually comes first.',
      ),
      WordOrderQuestion(
        id: 'time_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['寝ます', '夜', 'に'],
        correctOrder: ['夜', 'に', '寝ます'],
        explanation: 'Time + に + verb.',
      ),

    ],
  ),
),

        // Japanese - Places & Locations
        Lesson(
  id: 'ja_places',
  title: 'Places & Locations',
  description: 'Learn common places and location words in Japanese',
  icon: '📍',
  words: [

    VocabularyWord(
      id: 'place_home',
      word: '家',
      translation: 'အိမ်',
      pronunciation: '/ee-eh/',
      example: '家にいます。 (I am at home)',
    ),
    VocabularyWord(
      id: 'place_school',
      word: '学校',
      translation: 'ကျောင်း',
      pronunciation: '/gah-koh/',
      example: '学校へ行きます。 (I go to school)',
    ),
    VocabularyWord(
      id: 'place_company',
      word: '会社',
      translation: 'ကုမ္ပဏီ',
      pronunciation: '/kai-shah/',
      example: '会社で働きます。 (I work at a company)',
    ),
    VocabularyWord(
      id: 'place_hospital',
      word: '病院',
      translation: 'ဆေးရုံ',
      pronunciation: '/byoh-in/',
      example: '病院へ行きます。 (I go to the hospital)',
    ),
    VocabularyWord(
      id: 'place_market',
      word: '市場',
      translation: 'ဈေး',
      pronunciation: '/ee-chee-bah/',
      example: '市場で買い物します。 (I shop at the market)',
    ),
    VocabularyWord(
      id: 'place_restaurant',
      word: 'レストラン',
      translation: 'စားသောက်ဆိုင်',
      pronunciation: '/reh-stoh-ran/',
      example: 'レストランで食べます。 (I eat at a restaurant)',
    ),
    VocabularyWord(
      id: 'place_bank',
      word: '銀行',
      translation: 'ဘဏ်',
      pronunciation: '/gin-koh/',
      example: '銀行へ行きます。 (I go to the bank)',
    ),
    VocabularyWord(
      id: 'place_shop',
      word: '店',
      translation: 'ဆိုင်',
      pronunciation: '/meh-seh/',
      example: '店で買います。 (I buy at the shop)',
    ),
    VocabularyWord(
      id: 'place_station',
      word: '駅',
      translation: 'ဘူတာရုံ',
      pronunciation: '/eh-kee/',
      example: '駅で待ちます。 (I wait at the station)',
    ),
    VocabularyWord(
      id: 'place_park',
      word: '公園',
      translation: 'ပန်းခြံ',
      pronunciation: '/koh-en/',
      example: '公園で遊びます。 (I play in the park)',
    ),

  ],

  test: Test(
    id: 'ja_places_test',
    title: 'Test: Places & Locations',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'place_mc_1',
        question: 'What does 「学校」 mean?',
        options: ['hospital', 'school', 'market', 'home'],
        correctAnswerIndex: 1,
        explanation: '学校 means school.',
      ),
      MultipleChoiceQuestion(
        id: 'place_mc_2',
        question: 'Which word means "bank"?',
        options: ['会社', '店', '銀行', '駅'],
        correctAnswerIndex: 2,
        explanation: '銀行 means bank.',
      ),
      MultipleChoiceQuestion(
        id: 'place_mc_3',
        question: '「公園」 means?',
        options: ['park', 'restaurant', 'station', 'market'],
        correctAnswerIndex: 0,
        explanation: '公園 = park.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'place_tr_1',
        question: 'ဆိုင်',
        word: 'ဆိုင်',
        translations: ['店', '駅', '会社', '銀行'],
        correctAnswerIndex: 0,
        explanation: 'ဆိုင် = 店',
      ),
      TranslationQuestion(
        id: 'place_tr_2',
        question: '病院',
        word: '病院',
        translations: ['ဈေး', 'ဆေးရုံ', 'ဘဏ်', 'ကျောင်း'],
        correctAnswerIndex: 1,
        explanation: '病院 = ဆေးရုံ',
      ),
      TranslationQuestion(
        id: 'place_tr_3',
        question: 'ဘူတာရုံ',
        word: 'ဘူတာရုံ',
        translations: ['公園', '駅', '家', '市場'],
        correctAnswerIndex: 1,
        explanation: 'ဘူတာရုံ = 駅',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'place_fill_1',
        question: 'Complete the sentence:',
        sentence: '_____へ行きます。',
        correctWord: '学校',
        options: ['学校', '家', '公園', '駅'],
        explanation: '学校へ行きます = go to school.',
      ),
      FillInBlankQuestion(
        id: 'place_fill_2',
        question: 'Complete the sentence:',
        sentence: '病院_____います。',
        correctWord: 'に',
        options: ['に', 'で', 'へ', 'を'],
        explanation: 'に indicates location.',
      ),
      FillInBlankQuestion(
        id: 'place_fill_3',
        question: 'Complete the sentence:',
        sentence: '公園で_____。',
        correctWord: '遊びます',
        options: ['遊びます', '行きます', '来ます', '食べます'],
        explanation: '遊びます = play.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'place_listen_1',
        audioText: 'えき',
        question: 'What did you hear?',
        options: ['station', 'park', 'bank', 'school'],
        correctAnswerIndex: 0,
        explanation: 'えき = 駅',
      ),
      ListeningQuestion(
        id: 'place_listen_2',
        audioText: 'びょういん',
        question: 'Select the correct meaning.',
        options: ['school', 'hospital', 'market', 'bank'],
        correctAnswerIndex: 1,
        explanation: 'びょういん = 病院',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'place_sentence_1',
        question: 'Build: "I go to the park"',
        wordOptions: ['公園', 'へ', '行きます'],
        correctSentence: ['公園', 'へ', '行きます'],
        explanation: 'Correct destination sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'place_sentence_2',
        question: 'Build: "I am at home"',
        wordOptions: ['家', 'に', 'います'],
        correctSentence: ['家', 'に', 'います'],
        explanation: 'Location + に + います.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'place_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['います', '家', 'に'],
        correctOrder: ['家', 'に', 'います'],
        explanation: 'Correct location structure.',
      ),
      WordOrderQuestion(
        id: 'place_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['で', '働きます', '会社'],
        correctOrder: ['会社', 'で', '働きます'],
        explanation: 'Place + で + action.',
      ),

    ],
  ),
),

        // Japanese - Transportation
        Lesson(
  id: 'ja_transportation',
  title: 'Transportation',
  description: 'Learn transportation and travel words in Japanese',
  icon: '🚆',
  words: [

    VocabularyWord(
      id: 'trans_car',
      word: '車',
      translation: 'ကား',
      pronunciation: '/koo-rah/',
      example: '車で行きます。 (I go by car)',
    ),
    VocabularyWord(
      id: 'trans_bus',
      word: 'バス',
      translation: 'ဘတ်စ်ကား',
      pronunciation: '/bah-soo/',
      example: 'バスに乗ります。 (I take the bus)',
    ),
    VocabularyWord(
      id: 'trans_train',
      word: '電車',
      translation: 'ရထား',
      pronunciation: '/den-shah/',
      example: '電車で通います。 (I commute by train)',
    ),
    VocabularyWord(
      id: 'trans_bicycle',
      word: '自転車',
      translation: 'စက်ဘီး',
      pronunciation: '/jee-ten-shah/',
      example: '自転車で学校へ行きます。 (I go to school by bicycle)',
    ),
    VocabularyWord(
      id: 'trans_walk',
      word: '歩く',
      translation: 'လမ်းလျှောက်သည်',
      pronunciation: '/ah-roo-koo/',
      example: '毎朝歩きます。 (I walk every morning)',
    ),
    VocabularyWord(
      id: 'trans_taxi',
      word: 'タクシー',
      translation: 'တက္ကစီ',
      pronunciation: '/tah-koo-shee/',
      example: 'タクシーに乗ります。 (I take a taxi)',
    ),
    VocabularyWord(
      id: 'trans_airplane',
      word: '飛行機',
      translation: 'လေယာဉ်',
      pronunciation: '/hee-koh-kee/',
      example: '飛行機で日本へ行きます。 (I go to Japan by plane)',
    ),
    VocabularyWord(
      id: 'trans_ship',
      word: '船',
      translation: 'သင်္ဘော',
      pronunciation: '/foo-neh/',
      example: '船で島へ行きます。 (I go to the island by ship)',
    ),
    VocabularyWord(
      id: 'trans_ride',
      word: '乗る',
      translation: 'စီးသည်',
      pronunciation: '/noh-roo/',
      example: 'バスに乗ります。 (I ride the bus)',
    ),
    VocabularyWord(
      id: 'trans_station',
      word: '駅',
      translation: 'ဘူတာရုံ',
      pronunciation: '/eh-kee/',
      example: '駅で待ちます。 (I wait at the station)',
    ),

  ],

  test: Test(
    id: 'ja_transportation_test',
    title: 'Test: Transportation',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'trans_mc_1',
        question: 'What does 「電車」 mean?',
        options: ['bus', 'train', 'car', 'bicycle'],
        correctAnswerIndex: 1,
        explanation: '電車 means train.',
      ),
      MultipleChoiceQuestion(
        id: 'trans_mc_2',
        question: 'Which word means "airplane"?',
        options: ['船', '車', '飛行機', '駅'],
        correctAnswerIndex: 2,
        explanation: '飛行機 means airplane.',
      ),
      MultipleChoiceQuestion(
        id: 'trans_mc_3',
        question: '「歩く」 means?',
        options: ['run', 'walk', 'ride', 'fly'],
        correctAnswerIndex: 1,
        explanation: '歩く = walk.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'trans_tr_1',
        question: 'ကား',
        word: 'ကား',
        translations: ['車', '電車', '船', '飛行機'],
        correctAnswerIndex: 0,
        explanation: 'ကား = 車',
      ),
      TranslationQuestion(
        id: 'trans_tr_2',
        question: '船',
        word: '船',
        translations: ['ရထား', 'ကား', 'သင်္ဘော', 'လေယာဉ်'],
        correctAnswerIndex: 2,
        explanation: '船 = သင်္ဘော',
      ),
      TranslationQuestion(
        id: 'trans_tr_3',
        question: 'လေယာဉ်',
        word: 'လေယာဉ်',
        translations: ['電車', '車', '飛行機', '船'],
        correctAnswerIndex: 2,
        explanation: 'လေယာဉ် = 飛行機',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'trans_fill_1',
        question: 'Complete the sentence:',
        sentence: '電車_____行きます。',
        correctWord: 'で',
        options: ['で', 'に', 'へ', 'を'],
        explanation: 'で indicates means of transport.',
      ),
      FillInBlankQuestion(
        id: 'trans_fill_2',
        question: 'Complete the sentence:',
        sentence: 'バスに_____。',
        correctWord: '乗ります',
        options: ['乗ります', '歩きます', '行きます', '来ます'],
        explanation: '乗ります = ride.',
      ),
      FillInBlankQuestion(
        id: 'trans_fill_3',
        question: 'Complete the sentence:',
        sentence: '毎朝_____。',
        correctWord: '歩きます',
        options: ['歩きます', '乗ります', '飛びます', '走ります'],
        explanation: '歩きます = walk.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'trans_listen_1',
        audioText: 'でんしゃ',
        question: 'What did you hear?',
        options: ['train', 'bus', 'car', 'ship'],
        correctAnswerIndex: 0,
        explanation: 'でんしゃ = 電車.',
      ),
      ListeningQuestion(
        id: 'trans_listen_2',
        audioText: 'ひこうき',
        question: 'Select the correct meaning.',
        options: ['ship', 'airplane', 'train', 'car'],
        correctAnswerIndex: 1,
        explanation: 'ひこうき = 飛行機.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'trans_sentence_1',
        question: 'Build: "I go by car"',
        wordOptions: ['車', 'で', '行きます'],
        correctSentence: ['車', 'で', '行きます'],
        explanation: 'Correct transport sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'trans_sentence_2',
        question: 'Build: "I ride the bus"',
        wordOptions: ['バス', 'に', '乗ります'],
        correctSentence: ['バス', 'に', '乗ります'],
        explanation: 'Correct verb usage.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'trans_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['で', '行きます', '自転車'],
        correctOrder: ['自転車', 'で', '行きます'],
        explanation: 'Transport + で + verb.',
      ),
      WordOrderQuestion(
        id: 'trans_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['に', '駅', '行きます'],
        correctOrder: ['駅', 'に', '行きます'],
        explanation: 'Destination + に + 行きます.',
      ),

    ],
  ),
),

        // Japanese - Shopping & Money
        Lesson(
  id: 'ja_shopping',
  title: 'Shopping & Money',
  description: 'Learn shopping and money-related words in Japanese',
  icon: '🛒',
  words: [

    VocabularyWord(
      id: 'shop_buy',
      word: '買う',
      translation: 'ဝယ်သည်',
      pronunciation: '/kah-oo/',
      example: 'パンを買います。 (I buy bread)',
    ),
    VocabularyWord(
      id: 'shop_sell',
      word: '売る',
      translation: 'ရောင်းသည်',
      pronunciation: '/oo-roo/',
      example: '店で売ります。 (Sell at the shop)',
    ),
    VocabularyWord(
      id: 'shop_store',
      word: '店',
      translation: 'ဆိုင်',
      pronunciation: '/mi-seh/',
      example: 'この店は安いです。 (This shop is cheap)',
    ),
    VocabularyWord(
      id: 'shop_money',
      word: 'お金',
      translation: 'ငွေ',
      pronunciation: '/oh-kah-neh/',
      example: 'お金がありますか？ (Do you have money?)',
    ),
    VocabularyWord(
      id: 'shop_price',
      word: '値段',
      translation: 'ဈေးနှုန်း',
      pronunciation: '/neh-dahn/',
      example: '値段はいくらですか？ (How much is it?)',
    ),
    VocabularyWord(
      id: 'shop_expensive',
      word: '高い',
      translation: 'ဈေးကြီးသည်',
      pronunciation: '/tah-kai/',
      example: 'この靴は高いです。 (These shoes are expensive)',
    ),
    VocabularyWord(
      id: 'shop_cheap',
      word: '安い',
      translation: 'ဈေးပေါသည်',
      pronunciation: '/yah-soo-ee/',
      example: 'この服は安いです。 (This clothing is cheap)',
    ),
    VocabularyWord(
      id: 'shop_pay',
      word: '払う',
      translation: 'ပေးချေသည်',
      pronunciation: '/ha-rah-oo/',
      example: '現金で払います。 (I pay by cash)',
    ),
    VocabularyWord(
      id: 'shop_cash',
      word: '現金',
      translation: 'ငွေသား',
      pronunciation: '/gen-keen/',
      example: '現金だけです。 (Cash only)',
    ),
    VocabularyWord(
      id: 'shop_card',
      word: 'カード',
      translation: 'ကတ်',
      pronunciation: '/kah-doh/',
      example: 'カードで払います。 (I pay by card)',
    ),

  ],

  test: Test(
    id: 'ja_shopping_test',
    title: 'Test: Shopping & Money',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'shop_mc_1',
        question: 'What does 「買う」 mean?',
        options: ['sell', 'buy', 'pay', 'look'],
        correctAnswerIndex: 1,
        explanation: '買う means buy.',
      ),
      MultipleChoiceQuestion(
        id: 'shop_mc_2',
        question: 'Which word means "cheap"?',
        options: ['高い', '安い', '値段', 'お金'],
        correctAnswerIndex: 1,
        explanation: '安い means cheap.',
      ),
      MultipleChoiceQuestion(
        id: 'shop_mc_3',
        question: '「お金」 means?',
        options: ['shop', 'price', 'money', 'card'],
        correctAnswerIndex: 2,
        explanation: 'お金 = money.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'shop_tr_1',
        question: 'ဈေးနှုန်း',
        word: 'ဈေးနှုန်း',
        translations: ['店', '値段', '高い', 'お金'],
        correctAnswerIndex: 1,
        explanation: 'ဈေးနှုန်း = 値段',
      ),
      TranslationQuestion(
        id: 'shop_tr_2',
        question: '安い',
        word: '安い',
        translations: ['ဈေးကြီး', 'ဈေးပေါ', 'ငွေ', 'ဆိုင်'],
        correctAnswerIndex: 1,
        explanation: '安い = ဈေးပေါ',
      ),
      TranslationQuestion(
        id: 'shop_tr_3',
        question: 'ဝယ်သည်',
        word: 'ဝယ်သည်',
        translations: ['売る', '払う', '買う', '見る'],
        correctAnswerIndex: 2,
        explanation: 'ဝယ်သည် = 買う',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'shop_fill_1',
        question: 'Complete the sentence:',
        sentence: 'パンを_____。',
        correctWord: '買います',
        options: ['買います', '売ります', '払います', '見ます'],
        explanation: '買います = buy.',
      ),
      FillInBlankQuestion(
        id: 'shop_fill_2',
        question: 'Complete the sentence:',
        sentence: '値段は_____ですか？',
        correctWord: 'いくら',
        options: ['いくら', 'どこ', 'なに', 'いつ'],
        explanation: 'いくら = how much.',
      ),
      FillInBlankQuestion(
        id: 'shop_fill_3',
        question: 'Complete the sentence:',
        sentence: 'カードで_____。',
        correctWord: '払います',
        options: ['買います', '売ります', '払います', '行きます'],
        explanation: '払います = pay.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'shop_listen_1',
        audioText: 'やすい',
        question: 'What did you hear?',
        options: ['cheap', 'expensive', 'money', 'shop'],
        correctAnswerIndex: 0,
        explanation: 'やすい = 安い.',
      ),
      ListeningQuestion(
        id: 'shop_listen_2',
        audioText: 'おかね',
        question: 'Select the correct meaning.',
        options: ['price', 'money', 'card', 'shop'],
        correctAnswerIndex: 1,
        explanation: 'おかね = お金.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'shop_sentence_1',
        question: 'Build: "This is cheap"',
        wordOptions: ['安い', 'です'],
        correctSentence: ['安い', 'です'],
        explanation: 'Correct adjective sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'shop_sentence_2',
        question: 'Build: "I pay by cash"',
        wordOptions: ['現金', 'で', '払います'],
        correctSentence: ['現金', 'で', '払います'],
        explanation: 'Correct payment sentence.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'shop_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['を', '買います', '本'],
        correctOrder: ['本', 'を', '買います'],
        explanation: 'Object + を + verb.',
      ),
      WordOrderQuestion(
        id: 'shop_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['で', 'カード', '払います'],
        correctOrder: ['カード', 'で', '払います'],
        explanation: 'Method + で + verb.',
      ),

    ],
  ),
),

        // Japanese - Directions & Locations
        Lesson(
  id: 'ja_directions',
  title: 'Directions & Locations',
  description: 'Learn how to ask and understand directions in Japanese',
  icon: '🧭',
  words: [

    VocabularyWord(
      id: 'dir_here',
      word: 'ここ',
      translation: 'ဒီမှာ',
      pronunciation: '/ko-ko/',
      example: 'ここです。 (It is here)',
    ),
    VocabularyWord(
      id: 'dir_there',
      word: 'そこ',
      translation: 'အဲဒီမှာ',
      pronunciation: '/so-ko/',
      example: 'そこにあります。 (It is there)',
    ),
    VocabularyWord(
      id: 'dir_overthere',
      word: 'あそこ',
      translation: 'ဟိုမှာ',
      pronunciation: '/a-so-ko/',
      example: 'あそこです。 (Over there)',
    ),
    VocabularyWord(
      id: 'dir_left',
      word: '左',
      translation: 'ဘယ်ဘက်',
      pronunciation: '/hi-dah-ree/',
      example: '左へ行きます。 (Go left)',
    ),
    VocabularyWord(
      id: 'dir_right',
      word: '右',
      translation: 'ညာဘက်',
      pronunciation: '/mi-gi/',
      example: '右にあります。 (It is on the right)',
    ),
    VocabularyWord(
      id: 'dir_straight',
      word: 'まっすぐ',
      translation: 'တန်းတန်း',
      pronunciation: '/mahs-soo-goo/',
      example: 'まっすぐ行ってください。 (Go straight)',
    ),
    VocabularyWord(
      id: 'dir_near',
      word: '近く',
      translation: 'နီးနီး',
      pronunciation: '/chee-kah-koo/',
      example: '駅の近くです。 (Near the station)',
    ),
    VocabularyWord(
      id: 'dir_far',
      word: '遠い',
      translation: 'ဝေးသည်',
      pronunciation: '/toh-oi/',
      example: '学校は遠いです。 (School is far)',
    ),
    VocabularyWord(
      id: 'dir_where',
      word: 'どこ',
      translation: 'ဘယ်မှာ',
      pronunciation: '/do-ko/',
      example: 'トイレはどこですか？ (Where is the toilet?)',
    ),
    VocabularyWord(
      id: 'dir_place',
      word: '場所',
      translation: 'နေရာ',
      pronunciation: '/bah-sho/',
      example: '場所を教えてください。 (Please tell me the place)',
    ),

  ],

  test: Test(
    id: 'ja_directions_test',
    title: 'Test: Directions & Locations',
    questions: [

      // ===== Multiple Choice (3) =====
      MultipleChoiceQuestion(
        id: 'dir_mc_1',
        question: 'What does 「左」 mean?',
        options: ['right', 'left', 'near', 'far'],
        correctAnswerIndex: 1,
        explanation: '左 means left.',
      ),
      MultipleChoiceQuestion(
        id: 'dir_mc_2',
        question: 'Which word means "where"?',
        options: ['ここ', 'そこ', 'どこ', '場所'],
        correctAnswerIndex: 2,
        explanation: 'どこ = where.',
      ),
      MultipleChoiceQuestion(
        id: 'dir_mc_3',
        question: '「近く」 means?',
        options: ['far', 'near', 'here', 'there'],
        correctAnswerIndex: 1,
        explanation: '近く means near.',
      ),

      // ===== Translation (3) =====
      TranslationQuestion(
        id: 'dir_tr_1',
        question: 'ဘယ်မှာ',
        word: 'ဘယ်မှာ',
        translations: ['どこ', 'ここ', 'そこ', 'あそこ'],
        correctAnswerIndex: 0,
        explanation: 'ဘယ်မှာ = どこ',
      ),
      TranslationQuestion(
        id: 'dir_tr_2',
        question: '右',
        word: '右',
        translations: ['ဘယ်ဘက်', 'ညာဘက်', 'ရှေ့', 'နောက်'],
        correctAnswerIndex: 1,
        explanation: '右 = ညာဘက်',
      ),
      TranslationQuestion(
        id: 'dir_tr_3',
        question: 'နီးနီး',
        word: 'နီးနီး',
        translations: ['遠い', '近く', 'まっすぐ', 'どこ'],
        correctAnswerIndex: 1,
        explanation: 'နီးနီး = 近く',
      ),

      // ===== Fill in the Blank (3) =====
      FillInBlankQuestion(
        id: 'dir_fill_1',
        question: 'Complete the sentence:',
        sentence: 'トイレは_____ですか？',
        correctWord: 'どこ',
        options: ['どこ', 'ここ', 'そこ', 'あそこ'],
        explanation: 'どこ = where.',
      ),
      FillInBlankQuestion(
        id: 'dir_fill_2',
        question: 'Complete the sentence:',
        sentence: '左へ_____。',
        correctWord: '行きます',
        options: ['見ます', '行きます', '来ます', 'あります'],
        explanation: '行きます = go.',
      ),
      FillInBlankQuestion(
        id: 'dir_fill_3',
        question: 'Complete the sentence:',
        sentence: '駅の_____です。',
        correctWord: '近く',
        options: ['近く', '遠い', '右', '左'],
        explanation: '近く = near.',
      ),

      // ===== Listening (2) =====
      ListeningQuestion(
        id: 'dir_listen_1',
        audioText: 'まっすぐ',
        question: 'What did you hear?',
        options: ['left', 'right', 'straight', 'near'],
        correctAnswerIndex: 2,
        explanation: 'まっすぐ = straight.',
      ),
      ListeningQuestion(
        id: 'dir_listen_2',
        audioText: 'どこ',
        question: 'Select the correct meaning.',
        options: ['where', 'here', 'there', 'place'],
        correctAnswerIndex: 0,
        explanation: 'どこ = where.',
      ),

      // ===== Sentence Building (2) =====
      SentenceBuildingQuestion(
        id: 'dir_sentence_1',
        question: 'Build: "Go straight"',
        wordOptions: ['まっすぐ', '行きます'],
        correctSentence: ['まっすぐ', '行きます'],
        explanation: 'Correct direction sentence.',
      ),
      SentenceBuildingQuestion(
        id: 'dir_sentence_2',
        question: 'Build: "It is here"',
        wordOptions: ['ここ', 'です'],
        correctSentence: ['ここ', 'です'],
        explanation: 'Correct location sentence.',
      ),

      // ===== Word Order (2) =====
      WordOrderQuestion(
        id: 'dir_order_1',
        question: 'Arrange the words correctly.',
        scrambledWords: ['です', 'ここ'],
        correctOrder: ['ここ', 'です'],
        explanation: 'Location + です.',
      ),
      WordOrderQuestion(
        id: 'dir_order_2',
        question: 'Arrange the words correctly.',
        scrambledWords: ['へ', '右', '行きます'],
        correctOrder: ['右', 'へ', '行きます'],
        explanation: 'Direction + へ + verb.',
      ),

    ],
  ),
),


      ],
    ),
  ];
}