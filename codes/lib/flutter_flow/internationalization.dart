import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'kn'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? knText = '',
  }) =>
      [enText, knText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // profile_homepage
  {
    'gypovgqs': {
      'en': 'Change Language',
      'kn': 'ಭಾಷೆ ಬದಲಾಯಿಸಿ',
    },
    'tjm4izb8': {
      'en': 'Edit Profile',
      'kn': 'ಪ್ರೊಫೈಲ್ ಬದಲಿಸು',
    },
    'jgq1yydp': {
      'en': 'Reset Password',
      'kn': 'ಪ್ರೊಫೈಲ್ ಬದಲಿಸು',
    },
    'dnzn8l2b': {
      'en': 'Terms of Services',
      'kn': 'ಸೇವಾ ನಿಯಮಗಳು',
    },
    'rkqmpwqk': {
      'en': 'Privacy Policy',
      'kn': 'ಗೌಪ್ಯತೆ ನೀತಿ',
    },
    '7994rrlv': {
      'en': 'Log Out',
      'kn': 'ಲಾಗ್ ಔಟ್',
    },
  },
  // homePage
  {
    'gehpuxe3': {
      'en': 'HOME',
      'kn': 'ಮನೆ',
    },
    'hxkbkv0e': {
      'en': '!',
      'kn': '',
    },
    'bi04n09t': {
      'en': 'Get Your Child Assessed Today',
      'kn': '',
    },
    'wmv0vxkt': {
      'en':
          'Asnwer some simple questions about your child and get to know where your child lacks',
      'kn': '',
    },
    'yq0ui4b0': {
      'en': 'Start Screening',
      'kn': 'ಸ್ಕ್ರೀನಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ',
    },
    'm33y6pkh': {
      'en': 'You are Disconnected from the Internet',
      'kn': 'ನೀವು ಇಂಟರ್ನೆಟ್‌ನಿಂದ ಸಂಪರ್ಕ ಕಡಿತಗೊಂಡಿದ್ದೀರಿ',
    },
    'vtrdzgtz': {
      'en': 'Field is required',
      'kn': 'ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ',
    },
    '9yygrna4': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    '4j3karr9': {
      'en': 'Field is required',
      'kn': 'ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ',
    },
    '099qm3px': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    'j69frjc2': {
      'en': 'MindBridge',
      'kn': 'SLD ಸ್ಕ್ರೀನಿಂಗ್',
    },
    'qizfgrrb': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
    'nnh8pj9m': {
      'en': 'Dyslexia',
      'kn': 'ಮನೆ',
    },
    'a8mjayh9': {
      'en': 'Dysgraphia',
      'kn': 'ಮನೆ',
    },
    'rquevu6n': {
      'en': 'Dyscalculia',
      'kn': 'ಮನೆ',
    },
    'pg1dnrfp': {
      'en': 'History',
      'kn': 'ಇತಿಹಾಸ',
    },
    'bxzwuzmw': {
      'en': 'Feedback',
      'kn': 'ಪ್ರತಿಕ್ರಿಯೆ',
    },
    'smvg6zgt': {
      'en': 'Contact Us',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    '04wsbxsa': {
      'en': 'Schools and Centers Near You',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'oy7p02d2': {
      'en': 'Blogs',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'e6oislng': {
      'en': 'Neurobuddy Assistant',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    '5jkzkl7x': {
      'en': 'Remedial Procedures',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    '0alnuh8l': {
      'en': 'Light Mode',
      'kn': 'ಲೈಟ್ ಮೋಡ್',
    },
    'jfk2dj12': {
      'en': 'Dark Mode',
      'kn': 'ಡಾರ್ಕ್ ಮೋಡ್',
    },
    'xejl4u7b': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // Section_1
  {
    'krsv83r7': {
      'en': 'SECTION 1',
      'kn': 'ವಿಭಾಗ 1',
    },
    'r8w2ltao': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'l5gka12o': {
      'en':
          'Does the child seem lagging significantly in development compared to other children of same age group?',
      'kn':
          'ಮಗುವು ತನ್ನದೇ ಸಹಪಾಠಿ ವಯಸ್ಸಿನ ಮಕ್ಳಿಗೆ ಹೋಲಿಸಿದಲ್ಲಿ ಬೆಳವಣಿಗೆಯಲ್ಲಿ ಗಮನಾರ್ಹವಾಗಿ ಹಿಂದಿದೆಯೇ?',
    },
    '4awaze79': {
      'en': 'Yes – both physically and mentally',
      'kn': 'ಹೌದು – ದೈಹಿಕ ಹಾಗು ಬೌದ್ಧಿಕವಾಗಿ ಎರಡರಲ್ಲೂ',
    },
    'mvzqa71a': {
      'en': 'Yes, mentally but not physically',
      'kn': 'ಹೌದು, ಬೌದ್ಧಿಕವಾಗಿ ಮಾತ್ರ',
    },
    'rim6yobl': {
      'en': 'Not really sure',
      'kn': 'ಸರಿಯಾಗಿ ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'x5cka74z': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'jry1v8tp': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'ex6hhxpx': {
      'en':
          'Is the child able to take care of self satisfactorily at school in an age-appropriate manner – e.g., attending to personal belongings, feeding, attending nature calls:',
      'kn':
          'ಮಗುವು ತನ್ನ ವಯಸ್ಸಿನನುಗುಣವಾಗಿ ಶಾಲೆಯಲ್ಲಿ ತನ್ನ ಕಾಳಜಿಯನ್ನು ವಹಿಸಿಕೊಳ್ಳುವ ಕ್ಷಮತೆಯನ್ನು ಹೊಂದಿದೆಯೇ? (ಉದಾ: ತನ್ನ ವಸ್ತುಗಳನ್ನು ಕಾಪಿಟ್ಟುಕೊಳ್ಳುವುದು, ತಿನ್ನುವುದು, ಮಲಮೂತ್ರ ಅವಸರಗಳನ್ನು ನಿಭಾಯಿಸುವುದು)',
    },
    '0uuwddal': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'jw8g50hk': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'pu3b4ufx': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    '3rzcs41e': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    '59a1ixcn': {
      'en':
          'Is the child satisfactorily able to understand the routine instructions and meaningfully interact with teachers and peers?',
      'kn':
          'ಮಗುವಿಗೆ ಶಾಲೆಯಲ್ಲಿನ ದೈನಂದಿನ ಸೂಚನೆಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಂದು ಶಿಕ್ಷಕರು ಮತ್ತು ಸಹಪಾಠಿಗಳೊಡನೆ ಅರ್ಥಪೂರ್ಣವಾಗಿ ಸಂವಹನ ಮಾಡುವ ಸಾಮರ್ಥ್ಯ ಇದೆಯೇ?',
    },
    'rric3ru1': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'tjrg5s20': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '4y9mxd0c': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'fak18shw': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    'bbbm56hy': {
      'en':
          'Does the child express any willingness to get along and mingle with peers and other people at school?',
      'kn':
          'ಮಗುವು ತನ್ನ ಸಹಪಾಠಿಗಳೊಂದಿಗೆ ಹಾಗು ಇನ್ನಿತರರ ಜೊತೆಗೆ ಬೆರೆಯಲು ಉತ್ಸುಕತೆ ತೋರುತ್ತದೆಯೇ?',
    },
    '7zik3b6r': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'ut63wi05': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'epkrtquc': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'wia9krjw': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    'm11rmzmc': {
      'en':
          'Does the child make consistent eye-contact while interacting with others?',
      'kn':
          'ಮಗುವು ಇತರರೊಂದಿಗೆ ಸಂವಹನ ಮಾಡುವಾಗ ಸ್ಥಿರವಾಗಿ ಹಾಗು ಅರ್ಥಪೂರ್ಣವಾಗಿ ಕಣ್ಣಲ್ಲಿ ಕಣ್ಣಿಟ್ಟು ನೋಡುತ್ತದೆಯೇ?',
    },
    'yby2q2e6': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'qqkfurjq': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'mzyjm5k2': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'ryo0isz6': {
      'en': 'OUESTION 6:',
      'kn': 'ಪ್ರಶ್ನೆ 6:',
    },
    '41jbfpqs': {
      'en':
          'Does the child have any persistent problems in seeing or hearing? (See the list of behaviors suggestive of hearing and visual problems if you suspect any such).',
      'kn': 'ಮಗುವಿಗೆ ಸತತವಾದ ದೃಷ್ಟಿ ಅಥವಾ ಶ್ರವಣ ದೋಷಗಳೇನಾದರೂ ಕಂಡುಬಂದಿದೆಯೇ?',
    },
    'abkszeuu': {
      'en': '  See List Here',
      'kn': 'ಪಟ್ಟಿಯನ್ನು ಇಲ್ಲಿ ನೋಡಿ',
    },
    '6oan6nnr': {
      'en':
          'Does the child have any persistent problems in seeing or hearing? (See the list of behaviors suggestive of hearing and visual problems if you suspect any such).',
      'kn': 'ಮಗುವಿಗೆ ಸತತವಾದ ದೃಷ್ಟಿ ಅಥವಾ ಶ್ರವಣ ದೋಷಗಳೇನಾದರೂ ಕಂಡುಬಂದಿದೆಯೇ?',
    },
    '4lmhqvlg': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'avo2kfz8': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'ktq3hdjx': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'p78olq0k': {
      'en': 'OUESTION 7:',
      'kn': 'ಪ್ರಶ್ನೆ 7:',
    },
    'fhqxa56u': {
      'en':
          'Does the child have significant problem in talking? (understanding others speech/stammering/articulating etc).',
      'kn':
          'ಮಗುವಿಗೆ ಮಾತನಾಡಲು ಗಮನಾರ್ಹ ತೊಂದರೆಗಳೇನಾದರೂ ಇದೆಯೇ? (ಇತರರ ಮಾತನ್ನು ಅರ್ಥ ಮಾಡಿಕೊಳ್ಳಲು, ಉಗ್ಗು ಅಥವಾ ಉಚ್ಛಾರಣೆಯ ಸಮಸ್ಯೆಗಳು)',
    },
    '9rw7r76y': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'wx31vkdo': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'f0q7uvlj': {
      'en': 'Not Sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'a84mf8hg': {
      'en': 'NEXT',
      'kn': 'ಮುಂದೆ',
    },
    'b4630osh': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // Section_2
  {
    '1rr43w6i': {
      'en': 'SECTION 2',
      'kn': 'ವಿಭಾಗ 2',
    },
    '830c3bna': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'ucvzcbkb': {
      'en': 'With whom does the child reside with',
      'kn': 'ಮಗುವು ಯಾರ ಜೊತೆ ವಾಸಿಸುತ್ತಿದೆ?',
    },
    'nxa44cam': {
      'en': 'Parent/s',
      'kn': 'ತಂದೆ-ತಾಯಿ',
    },
    '4urgfl8c': {
      'en': 'Other relatives',
      'kn': 'ಇತರ ಸಂಬಂಧಿಗಳು',
    },
    'fzsq5yji': {
      'en': 'Hostel',
      'kn': 'ವಿದ್ಯಾರ್ಥಿ ನಿಲಯ',
    },
    'brs9wg7c': {
      'en': 'Orphanage/other accommodations ',
      'kn': 'ಅನಾಥಾಶ್ರಮ/ಇತರ ಆಶ್ರಯಗಳು',
    },
    '014i08te': {
      'en': 'Other',
      'kn': 'ಇತರ',
    },
    'p6s2vfmq': {
      'en': 'Please Specify',
      'kn': 'ನಮೂದಿಸಿ',
    },
    'dbrefwa6': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    '5pu4otvf': {
      'en':
          'What is the mother tongue of the child? What language does the child’s family usually speak at home?',
      'kn':
          'ಮಗುವಿನ ಮಾತೃ ಭಾಷೆ ಯಾವುದು/ ಮಗುವಿನ ಮನೆಯಲ್ಲಿ ಹೆಚ್ಚಾಗಿ ಮಾತನಾಡುವ ಭಾಷೆ ಯಾವುದು?',
    },
    'rvqij869': {
      'en': 'Kannada',
      'kn': 'ಕನ್ನಡ',
    },
    'r2ejokq3': {
      'en': 'English',
      'kn': 'ಆಂಗ್ಲ',
    },
    '0umd599e': {
      'en': 'Any other',
      'kn': 'ಇತರ',
    },
    'kx3npmk6': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    'aewfd6eg': {
      'en': 'Is the child first generation learner in the school?',
      'kn': 'ಮಗುವು ಕುಟುಂಬದಲ್ಲಿ ಶಾಲೆಗೆ ಹೋಗುತ್ತಿರುವ ಮೊದಲ ಪೀಳಿಗೆಯೇ?',
    },
    'ce968ppg': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    's48i8hh2': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '7be0nn72': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    'b90cn95i': {
      'en':
          'Are you aware of any serious ongoing problems of any kind with child’s family?',
      'kn':
          'ಮಗುವಿನ ಮನೆಯಲ್ಲಿ/ಕುಟುಂಬದಲ್ಲಿ ಏನಾದರೂ ಗಮನಾರ್ಹ ಸಮಸ್ಯೆಗಳಿರುವ ಬಗ್ಗೆ ನಿಮಗೆ ಅರಿವಿದೆಯೇ?',
    },
    'deez9pyw': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'xgbi2m1w': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '63tv93e8': {
      'en': 'Not Sure',
      'kn': 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ',
    },
    'l86j2etx': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    '9kz1pbmr': {
      'en':
          'Are you aware of any significant health problem and/or medications that the child is going through currently – e.g, epilepsy, congenital diseases etc.',
      'kn':
          'ಪ್ರಸ್ತುತ ಮಗುವಿಗೆ ಯಾವುದೇ ಗಮನಾರ್ಹ ಆರೋಗ್ಯದ ಸಮಸ್ಯೆಗಳಿರುವುದರ/ಅಥವಾ ಅದರ ಚಿಕಿತ್ಸೆ ನಡೆಯುತ್ತಿರುವುದರ ಬಗ್ಗೆ ನಿಮಗೆ ಅರಿವಿದೆಯೇ? (ಉದಾ: ಅನುವಂಶಿಕ ಖಾಯಿಲೆಗಳು, ಅಪಸ್ಮಾರ ಇತ್ಯಾದಿ)',
    },
    '1246kw4t': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'mh0ykht3': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'kkck3chn': {
      'en': 'Not Sure',
      'kn': 'ಸರಿಯಾಗಿ ಗೊತ್ತಿಲ್ಲ',
    },
    '3n14mnos': {
      'en': 'Next',
      'kn': 'ಮುಂದೆ',
    },
    '9dsry4k3': {
      'en': 'Field is required',
      'kn': 'ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ',
    },
    'amgijvb6': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    'oceswmmn': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // Section_3
  {
    'iqjpik7c': {
      'en': 'SECTION 3',
      'kn': 'ವಿಭಾಗ 3',
    },
    'jj96i3lt': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'a7s03vll': {
      'en':
          'Is the child lagging persistently in learning related outcomes like grades, performance or whatever criteria that is used for formative as well as summative assessment?',
      'kn':
          'ಕಲಿಕೆಗೆ ಸಂಬಂಧಿಸಿದ ಮೌಲ್ಯಮಾಪನಕ್ಕಾಗಿ ಬಳಸುವ ಗ್ರೇಡ್‌ಗಳು, ಕಾರ್ಯಕ್ಷಮತೆ ಅತವಾ ಇನ್ನಿತರೆ ಮಾನದಂಡಗಳಲ್ಲಿ ಫಲಿತಾಂಶಗಳಲ್ಲಿ ಮಗು ನಿರಂತರವಾಗಿ ಹಿಂದುಳಿದಿದೆಯೇ?',
    },
    'ssg99hfj': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'x9pcreky': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'xofa9xey': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'x2k9xm0s': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'idou1gh6': {
      'en': 'Is the child irregular in attending school?',
      'kn': 'ಮಗುವು ಶಾಲೆಗೆ ನಿಯಮಿತವಾಗಿ ಬರುತ್ತಿಲ್ಲವೇ?',
    },
    'qcbtjxir': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    '1gu49gzq': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '7agr0tev': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    '42eof5te': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    '3ryp43lq': {
      'en':
          'Is the child having any history of persistent school refusal? (may be reported by parents, observed by teachers or reported by the child or understood through any other means).',
      'kn':
          'ಮಗುವು ಸತತವಾಗಿ ಶಾಲೆಗೆ ಬರಲು ನಿರಾಕರಿಸುತ್ತಿರುವ ಸನ್ನಿವೇಶಗಳಿವೆಯೇ? (ಇದು ಪೋಷಕರು ಅಥವಾ ಶಿಕ್ಷಕರು ಗಮನಿಸಿ ವರದಿ ಮಾಡಿರಬಹುದು ಇಲ್ಲವೇ ಇನ್ಯಾವುದಾದಾದರೂ ಮೂಲಗಳಿಂದ ತಿಳಿದುಬಂದಿರಬಹುದು)',
    },
    '9is2sc2u': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    '0adaewe7': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'ttfwwdoi': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    '1wfxtqc9': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    '8kylxyza': {
      'en':
          'Does child have any persistent behavioral problems at school noticed or reported by you or any other teacher/non-teaching staff/peers? (Click here for details of behavioral problems that need to be considered for your information).',
      'kn':
          'ಮಗುವು ಸತತವಾದ ಯಾವುದಾದರೂ ನಡವಳಿಕೆಯ ಸಮಸ್ಯೆಗಳಿಂದ ಶಿಕ್ಷಕರು/ಇತರರು/ಸಹಪಾಠಿಗಳಿಂದ ಗುರುತಿಸಲ್ಪಟ್ಟಿದೆಯೇ/ದೂರಲ್ಪಟ್ಟಿದೆಯೇ? (ಇಲ್ಲಿ ಪರಿಗಣಿಸಬೇಕಾದ ಸತತ ನಡವಳಿಕೆಯ ಸಮಸ್ಯೆಗಳ ಬಗ್ಗೆ ಹೆಚ್ಚಿನ ವಿವರಗಳಿಗೆ ಈ ಲಿಂಕ್‌ ಅನ್ನು ಕ್ಲಿಕ್ಕಿಸಿ)',
    },
    'mtdlkfim': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'ele91cvq': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'qb4amfex': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'xv9dj3ef': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    'vgfv3suh': {
      'en':
          'Does child have persistent attention-concentration problems noted on multiple occasions especially when it is found during instructional hours? (need not be present during co-scholastic activities).',
      'kn':
          'ಮಗುವಿಗೆ ಹಲವು ಸಂದರ್ಭಗಳಲ್ಲಿ ಹಾಗು ವಿಶೇಷವಾಗಿ ಪಾಠದ ಅವಧಿಗಳಲ್ಲಿ ಕಂಡುಬಂದಿರುವ ಸತತ ಗಮನ-ಧ್ಯಾನ ಕೇಂದ್ರೀಕರಿಸುವ ತೊಂದರೆಗಳಿವೆಯೇ? (ಇತರ ಪಠ್ಯೇತರ ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ಈ ತೊಂದರೆ ಇರದಿರಬಹುದು)',
    },
    'bw352c3w': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'toirh4yb': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'f11y002p': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'amgyukvm': {
      'en': 'OUESTION 6:',
      'kn': 'ಪ್ರಶ್ನೆ 6:',
    },
    'e7qs89vt': {
      'en':
          'Does the child have considerable memory problems especially prominent with subjects taught and not usually on other things of routine life?',
      'kn':
          'ಮಗುವಿಗೆ ನೆನಪಿನ ಶಕ್ತಿಯಲ್ಲಿ ಅದರಲ್ಲೂ ಕಲಿಯುತ್ತಿರುವ ಪಠ್ಯ ವಿಷಯಗಳಲ್ಲಿ, ಆದರೆ ಬದುಕಿನ ಇತರೆ ದೈನಂದಿನ ವಿಷಯಗಳಲ್ಲಿ ಇಲ್ಲದಂಥಹ ಗಮನಾರ್ಹ ತೊಂದರೆಗಳು ಕಂಡಿವೆಯೇ?',
    },
    'p7qs92em': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'tok8aued': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'cc411pio': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    'xyipf8f8': {
      'en': 'OUESTION 7:',
      'kn': 'ಪ್ರಶ್ನೆ 7:',
    },
    '6ok18kcl': {
      'en':
          'Does the child have any emotional issues like easily and inappropriately angered, upset, cries or excited to relatively ordinary and routine events at school?',
      'kn':
          'ಮಗುವಿನಲ್ಲಿ ಸತತವಾಗಿ ಯಾವುದಾದರೂ ಭಾವನಾತ್ಮಕ ತೊಂದರೆಗಳು ಕಂಡುಬಂದಿವೆಯೇ?, ಉದಾ ಶೀಘ್ರವಾಗಿ ಕೋಪಗೊಳ್ಳುವುದು, ಅಸಮಾಧಾನಗೊಳ್ಳುವುದು, ಶಾಲೆಯಲ್ಲಿ ದೈನಂದಿನ ತೀರ ಸಾಧಾರಣ ವಿಷಯಗಳಿಗೆ ಅಳುವುದು ಇಲ್ಲವೇ ಅತಿ ಉತ್ಸಾಹಗೊಳ್ಳುವುದು ಇತ್ಯಾದಿ',
    },
    'imdi02pi': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'n5kah8gc': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'v8jfbc39': {
      'en': 'Not sure',
      'kn': 'ಗೊತ್ತಾಗುತ್ತಿಲ್ಲ',
    },
    '74x881eo': {
      'en': 'Next',
      'kn': 'ಮುಂದೆ',
    },
    'zhxtcbjb': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // Section_4
  {
    'q0ofn2gf': {
      'en': 'SECTION 4',
      'kn': 'ವಿಭಾಗ 4',
    },
    'ieg2m368': {
      'en': 'In what area does the child has persistent\nproblems in : ',
      'kn': 'ಯಾವ ಪ್ರದೇಶದಲ್ಲಿ ಮಗುವಿಗೆ ನಿರಂತರತೆ ಇದೆ\nಇದರಲ್ಲಿ ಸಮಸ್ಯೆಗಳು:',
    },
    'ah8284b7': {
      'en': 'Reading',
      'kn': 'ಓದುವುದು',
    },
    '30ow7tqb': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'c090lg00': {
      'en':
          'Does the child considerable have difficulty in understanding what is read observed over multiple times at least in last semester?',
      'kn':
          'ಕನಿಷ್ಟ ಕಳೆದ ೬ ತಿಂಗಳಿನಲ್ಲಿ ಹಲವು ಬಾರಿ ಗಮನಿಸಿದಂತೆ ಮಗುವಿಗೆ ತಾನು ಓದಿದ್ದನ್ನು ಸರಿಯಾಗಿ ಅರ್ಥ ಮಾಡಿಕೊಳ್ಳುವಲ್ಲಿ ಗಮನಾರ್ಹ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    '257iqg4n': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'hj1fia0o': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '6dleebqa': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'jrbxkdhm': {
      'en':
          'Is the child considerably slower in reading the text observed over multiple times in at least in last semester?',
      'kn':
          'ಕನಿಷ್ಟ ಕಳೆದ ೬ ತಿಂಗಳಿನಲ್ಲಿ ಹಲವು ಬಾರಿ ಗಮನಿಸಿದಂತೆ ಮಗುವು ಪಠ್ಯವನ್ನು ಓದುವ ಗತಿ ಸತತವಾಗಿ ಗಮನಾರ್ಹವಾಗಿ ನಿಧಾನವಾಗಿದೆಯೇ?',
    },
    'so3kivwl': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'jafkywlc': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '6g69whcu': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    's94qpckw': {
      'en':
          'Is the child considerably non-fluent in reading text or unable to pronounce commonly used words?',
      'kn':
          'ಮಗುವಿಗೆ ಪಠ್ಯವನ್ನು ಸರಾಗವಾಗಿ ಓದಲು ಆಥವಾ ಸಾಮಾನ್ಯವಾಗಿ ಪ್ರಯೋಗಿಸುವ ಪದಗಳನ್ನು ಉಚ್ಛರಿಸಲು ಗಮನಾರ್ಹ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    'gg63r0vu': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'qjfija05': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'dbjnmei8': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    '4uluikge': {
      'en':
          'Does the child have considerable difficulty in recognizing the letters (some or most of the letters) in the text?',
      'kn':
          'ಮಗುವಿಗೆ ಅಕ್ಷರಗಳನ್ನು (ಕೆಲವು ಅಥವಾ ಎಲ್ಲವೂ) ಗುರುತಿಸುವಲ್ಲಿ ಗಮನಾರ್ಹ ಸಮಸ್ಯೆಯಿದೆಯೇ?',
    },
    'fsckbmes': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'i9d0677d': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '1boy8hjk': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    'kcrlt18h': {
      'en': 'What language does this happen most frequently?',
      'kn': 'ಬೋಧಿಸುವ ಯಾವ ಭಾಷೆಯಲ್ಲಿ ಈ ಮೇಲಿನ ತೊಂದರೆಗಳು ಬಹಳವಾಗಿ ಕಂಡುಬರುತ್ತಿವೆ?',
    },
    'sxz11d9j': {
      'en': 'Kannada',
      'kn': 'ಕನ್ನಡ',
    },
    'fa0pbbeb': {
      'en': 'English',
      'kn': 'ಆಂಗ್ಲ',
    },
    'ntc28vmq': {
      'en': 'Other Language',
      'kn': 'ಇತರ ಭಾಷೆ',
    },
    '5unknqyi': {
      'en': 'Writing',
      'kn': 'ಬರೆಯುತ್ತಿದ್ದೇನೆ',
    },
    '8713n8g7': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    '9anu09ub': {
      'en':
          'Is the child considerably slower or severely lag in writing when compared to peers consistently observed at least in last semester?',
      'kn':
          'ಕನಿಷ್ಟ ಕಳೆದ ೬ ತಿಂಗಳಿನಲ್ಲಿ ಹಲವು ಬಾರಿ ಗಮನಿಸಿದಂತೆ ಮಗುವು ತನ್ನ ಸಹಪಾಠಿಗಳಿಗೆ ಹೋಲಿಸಿದಲ್ಲಿ ಬರೆಯುವುದರಲ್ಲಿ ತೀವ್ರತರವಾಗಿ ನಿಧಾನವಾಗಿದೆಯೇ?',
    },
    't16digoj': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'iyemdz19': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'bu3pa40t': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'p40lw4p3': {
      'en':
          'Does the child have considerable difficulty with spellings of even simple or relatively common words?',
      'kn':
          '‌ಸುಲಭವಾದ ಅಥವಾ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವಂಥಹ ಪದಗಳನ್ನು ಬರೆಯುವಾಗ ಕೂಡ ಕಾಗುಣಿತದಲ್ಲಿ (ಸ್ಪೆಲ್ಲಿಂಗ್) ಗಮನಾರ್ಹ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    'zlpunevf': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    't94tqgln': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '9m830pjr': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    '6rli6n4t': {
      'en':
          'Does the child make frequent mistakes while writing – like punctuations, grammar, letter organizing, spaces between words, reversal/mirroring of\nletters, numbers and symbols etc.',
      'kn':
          'ಬರೆಯುವಲ್ಲಿ ಮಗುವು ಪದೇಪದೇ ತಪ್ಪುಗಳನ್ನು ಮಾಡುತ್ತಿದೆಯೇ? (ಉದಾ: ಚಿಹ್ನೆ, ಪದಗಳ ನಡುವೆ ಅಂತರ, ಅಕ್ಷರ, ಸಂಖ್ಯೆ, ಚಿಹ್ನೆಗಳನ್ನು ತಿರುಗು-ಮುರುಗು ಮಾಡುವುದು, ಬರೆಯುವಲ್ಲಿ ಒಪ್ಪ ಓರಣವಿರದಿರುವುದು, ವ್ಯಾಕರಣದ ತಪ್ಪುಗಳು ಇತ್ಯಾದಿ)',
    },
    'jjtye1ze': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'hvpmqhgy': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '3btqlkc7': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    's1l2494d': {
      'en':
          'Does the child have considerable poor handwriting or illegible writing consistently?',
      'kn':
          'ಸತತವಾಗಿ ಮಗುವಿನ ಬರವಣಿಗೆ ಬಹಳವೇ ಅಸ್ಪಷ್ಟ, ಓದಲು ಆಗದೇ ಇರುವಂಥಾದ್ದಾಗಿದೆಯೇ?',
    },
    'ebwj6xz7': {
      'en': '',
      'kn': '',
    },
    'oynfadqh': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'fcb6viod': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'qmc86zsz': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    'wy1wh64j': {
      'en': 'What language does this happen most frequently?',
      'kn': 'ಬೋಧಿಸುವ ಯಾವ ಭಾಷೆಯಲ್ಲಿ ಈ ಮೇಲಿನ ತೊಂದರೆಗಳು ಬಹಳವಾಗಿ ಕಂಡುಬರುತ್ತಿವೆ?',
    },
    '1uaphoit': {
      'en': 'Kannada',
      'kn': 'ಕನ್ನಡ',
    },
    't0erjj8c': {
      'en': 'English',
      'kn': 'ಆಂಗ್ಲ',
    },
    '8ef7te3i': {
      'en': 'Other Language',
      'kn': 'ಇತರೆ',
    },
    'krmm46hh': {
      'en': 'Math',
      'kn': 'ಗಣಿತ',
    },
    'n6snmjyr': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'gvkiv4b0': {
      'en':
          'Does the child have consistent problems in understanding word problems (story problems) and reading instructions or organizing/problem solving  using steps or simple formulae?',
      'kn':
          'ಮಗುವಿಗೆ ಸತತವಾಗಿ ಗಣಿತದ ವಾಕ್ಯಗಳುಳ್ಳ ಪ್ರಶ್ನೆಗಳು, ಸೂಚನೆಗಳು, ಬಗೆಹರಿಸುವ ರೀತಿಯನ್ನು ಕ್ರಮಬದ್ಧವಾಗಿ ಮಾಡಲು, ಸುಲಭ ಸೂತ್ರಗಳನ್ನು ಉಪಯೋಗಿಸಲು ಸಮಸ್ಯೆಯಿದೆಯೇ?',
    },
    '0q8yj4f2': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'afovg48o': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'ex87kpaj': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'ep1r452y': {
      'en':
          'Does the child have significant problem in basic arithmetic operations like addition and subtraction observed consistently?',
      'kn':
          'ಮಗುವಿಗೆ ಸರಳವಾದ ಅಂಕಗಣಿತದ ಮೂಲಭೂತ ಪ್ರಯೋಗಗಳಾದ ಕೂಡುವುದು, ಕಳೆಯುವುದರಲ್ಲಿಯೇ ಗಮನಾರ್ಹ ಸಮಸ್ಯೆಯಿದೆಯೇ?',
    },
    '9r3ojw8d': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'bx59k54a': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '10db43e7': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    'yvzrqpk0': {
      'en':
          'Does the child have significant problems in age-appropriate understanding of (decimal) place values, concept of quantities like weight, volume, money,\nspace and time?',
      'kn':
          'ಮಗುವಿಗೆ ಭಾರ, ಆಳತೆ, ಪರಿಮಾಣ, ಹಣ, ಜಾಗ ಮತ್ತು ಸಮಯದ ಮೂಲಭೂತ ಪರಿಕಲ್ಪನೆ ಮತ್ತು   ವಯಸ್ಸಿಗನುಗುಣವಾದ ಸಂಖ್ಯೆಗಳ ದಶಮಾಂಶ ಮತ್ತು ಸ್ಥಾನಗಳ, ಪರಿಮಾಣಗಳ ಪರಿಕಲ್ಪನೆ ಯಲ್ಲಿಯೇ ಗಮನಾರ್ಹ ಸಮಸ್ಯೆಯಿದೆಯೇ?',
    },
    'dq2z2e7y': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'p9qfslog': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'q89cjfr2': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    '7y3wafrt': {
      'en':
          'Does the child have considerable problems in understanding math symbols like +, -, = or identifying numbers from 0-9?',
      'kn':
          'ಮಗುವಿಗೆ ಸಂಖ್ಯೆಗಳು (ಸೊನ್ನೆಯಿಂದ ಒಂಭತ್ತು) ಮತ್ತು ಮೂಲಭೂತ ಚಿಹ್ನೆಗಳಾದ +, -, + ಇವುಗಳನ್ನೇ ಗುರುತಿಸಲು ಮತ್ತು ಅರ್ಥ ಮಾಡಿಕೊಳ್ಳಲು ಗಮನಾರ್ಹ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    '20ehpvjl': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'vr75kre0': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'mmy0mucw': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    '43n1ykgx': {
      'en':
          'Does the child have significant problems in simple counting consistently?',
      'kn':
          'ಮಗುವಿಗೆ ಸರಳವಾದ ಎಣಿಕೆಯಲ್ಲಿಯೇ ತೊಂದರೆಯಿದೆಯೇ? (ಬೆರಳುಗಳನ್ನು ಬಳಸಿ ಕನಿಷ್ಟ ೧ ರಿಂದ ೯ರ ವರೆಗೆ)',
    },
    '7djnkvje': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'obovhpzh': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'g80ey80w': {
      'en': 'General Clumsiness',
      'kn': 'ಸಾಮಾನ್ಯ ವಿಕಾರತೆ',
    },
    'ubmqhn3x': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    '6h0jpvyl': {
      'en':
          'Does the child have general clumsiness noted while standing or walking, frequently hits walls, trips and stumbles?',
      'kn':
          'ಮಗುವು ಸಾಮಾನ್ಯವಾಗಿ ನಿಲ್ಲುವಾಗ, ನಡೆಯುವಾಗ, ನಯ-ನಾಜೂಕಿನ ಕೊರತೆಯಿಂದ ಎಡವುವುದು, ಬೀಳುವುದು, ಏಟು ಮಾಡಿಕೊಳ್ಳುವುದು ಇತ್ಯಾದಿ ಆಗುತ್ತದೆಯೇ?',
    },
    'zw919wzs': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'geyqgc8z': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '6v9h9mby': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    '0vis1ub2': {
      'en':
          'Does the child have consistent difficulty in fine motor activities like feeding with spoon, folding paper, cutting with scissors, tying shoe laces, buttoning-unbuttoning, coloring?',
      'kn':
          'ಮಗುವಿಗೆ ಸೂಕ್ಷ್ಮ ಕೌಶಲಗಳಾದ ಚಮಚೆಯಿಂದ ತಿನ್ನುವುದು, ಕಾಗದ ಮಡಿಸುವುದು, ಕತ್ತರಿಯಿಂದ ಕತ್ತರಿಸುವುದು, ಬೂಟಿನ ಲಾಡಿಯನ್ನು ಕಟ್ಟುವುದು, ಬಟ್ಟೆಯ ಗುಂಡಿ ಹಾಕುವುದು-ತೆಗೆಯುವುದು, ಚಿತ್ರಕ್ಕೆ ಬಣ್ಣ ತುಂಬುವುದು ಇತ್ಯಾದಿ ಗಳಲ್ಲಿ ಸತತವಾದ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    '99htk2bl': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    '9nslhz8p': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '4o3rrmps': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    'uojqyeaw': {
      'en':
          'Does the child have considerable difficulty in understanding and responding to social cues, gestures and non-verbal cues or body language, tone of voice and speech context in an age-appropriate manner?',
      'kn':
          'ಮಗುವಿಗೆ ವಯೋಸಹಜವಾದ ಸಾಮಾಜಿಕ ನಡವಳಿಕೆಯ ಸುಳಿವು-ಸೂಕ್ಷ್ಮಗಳು, ಸನ್ನೆಗಳು, ಮಾತಿನ-ಧ್ವನಿಯ ಏರಿಳಿತಗಳ ಸೂಕ್ಷ್ಮಗಳು, ಮಾತಿನ ವಾಸ್ತವ ಪ್ರಸಂಗಗಳು ಸರಿಯಾಗಿ ಅರ್ಥ ಮಾಡಿಕೊಳ್ಳಲು ಗಮನಾರ್ಹ ತೊಂದರೆಯಿದೆಯೇ?',
    },
    'pmsa7mhv': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'dei8phzf': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '1k6klr1z': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    'pwq1a8v5': {
      'en':
          'Does the child fit in the peer group and positively engage in activities fairly?',
      'kn':
          'ಮಗುವು ತನ್ನ ಸಮವಯಸ್ಕರ, ಸಹಪಾಠಿಗಳ ಗುಂಪಿನಲ್ಲಿ ಹೊಂದಿಕೊಂಡು ಚಟುವಟಿಕೆಗಳಲ್ಲಿ ಸಕ್ರಿಯವಾಗಿ ಭಾಗಿಯಾಗತ್ತದೆಯೇ?',
    },
    'n1zb120z': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'n2rd8512': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    '1tkulq0u': {
      'en': 'OUESTION 5:',
      'kn': 'ಪ್ರಶ್ನೆ 5:',
    },
    'i6kvutq4': {
      'en':
          'Does the child have positive self-esteem and confidence and handle criticism and disappointments appropriately in an age-appropriate manner?',
      'kn':
          'ಮಗುವಿಕೆ ವಯೋಸಹಜವಾದ ಧನಾತ್ಮಕ ಆತ್ಮ ವಿಶ್ವಾಸ, ಟೀಕೆಗಳು ಮತ್ತು ನಿರಾಸೆಗಳನ್ನು ನಿಭಾಯಿಸುವ ಕೌಶಲವಿದೆಯೇ?',
    },
    'r1t0hcjn': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
    'e3r6m509': {
      'en': 'No',
      'kn': 'ಇಲ್ಲ',
    },
    'tq4pu6w5': {
      'en': 'Finish',
      'kn': 'ಮುಗಿಸಿ',
    },
    'mhy8yt6k': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // feedback
  {
    '39nyqgqu': {
      'en': 'Feedback',
      'kn': 'ಪ್ರತಿಕ್ರಿಯೆ',
    },
    'y2gh9apx': {
      'en': 'Engagement',
      'kn': 'ನಿಶ್ಚಿತಾರ್ಥ',
    },
    '17ayqrke': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'i8f6pbk9': {
      'en':
          'Customisation: Does it provide/retain all necessary settings/preferences for apps features (e.g. sound, content, notifications, etc.)?',
      'kn':
          'ಗ್ರಾಹಕೀಕರಣ (ಕಸ್ಟಮೈಸೇಶನ್): ಇದು ಅಪ್ಲಿಕೇಶನ್‌ಗಳ ವೈಶಿಷ್ಟ್ಯಗಳಿಗೆ  (ಫೀಚರ್ಸ್)ಗಳಿಗೆ ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳು/ಆದ್ಯತೆಗಳನ್ನು ಒದಗಿಸುತ್ತದೆಯೇ/ಉಳಿಸಿಕೊಳ್ಳುತ್ತದೆಯೇ (ಉದಾ. ಧ್ವನಿ, ವಿಷಯ, ಅಧಿಸೂಚನೆಗಳು, ಇತ್ಯಾದಿ) ?',
    },
    'oqu3bua3': {
      'en':
          'Does not allow any customisation or requires setting to be input every time.',
      'kn':
          'ಯಾವುದೇ ಗ್ರಾಹಕೀಕರಣವನ್ನು ಅನುಮತಿಸುವುದಿಲ್ಲ ಅಥವಾ ಪ್ರತಿ \tಬಾರಿಯೂ \tಇನ್‌ಪುಟ್ ಮಾಡಲು ಸೆಟ್ಟಿಂಗ್ ಅಗತ್ಯವಿದೆ.',
    },
    'r3g7zj8z': {
      'en': 'Allows insufficient customisation limiting functions.',
      'kn': 'ಸಾಕಷ್ಟು ಗ್ರಾಹಕೀಕರಣ ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳನ್ನು \tಅನುಮತಿಸುತ್ತದೆ.',
    },
    '10xuxl14': {
      'en': 'Allows basic customisation to function adequately.',
      'kn': 'ಮೂಲಭೂತ ಗ್ರಾಹಕೀಕರಣವು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸಲು \tಅನುಮತಿಸುತ್ತದೆ.',
    },
    'gmermqtm': {
      'en': 'Allows numerous options for customisation.',
      'kn': 'ಗ್ರಾಹಕೀಕರಣಕ್ಕಾಗಿ ಹಲವಾರು ಆಯ್ಕೆಗಳನ್ನು ಅನುಮತಿಸುತ್ತದೆ.',
    },
    'ovhmiigv': {
      'en':
          'Allows complete tailoring to the individual’s characteristics preferences, retains all settings.',
      'kn':
          'ವ್ಯಕ್ತಿಯ ಗುಣಲಕ್ಷಣಗಳು/ಆದ್ಯತೆಗಳಿಗೆ ಸಂಪೂರ್ಣ ಟೈಲರಿಂಗ್ ಅನ್ನು \tಅನುಮತಿಸುತ್ತದೆ, ಎಲ್ಲಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಉಳಿಸಿಕೊಳ್ಳುತ್ತದೆ.',
    },
    'vdwrwihv': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'qns59e53': {
      'en':
          'Interactivity: Does it allow user input, provide feedback, contain prompts (reminders, sharing options, notifications, etc.)? Note: these functions need to be customisable and not overwhelming in order to be perfect.',
      'kn':
          'ಪರಸ್ಪರ ಕ್ರಿಯೆ (ಇಂಟರಾಕ್ಟಿವಿಟಿ): ಇದು ಬಳಕೆದಾರರ ಇನ್‌ಪುಟ್ ಅನ್ನು ಅನುಮತಿಸುತ್ತದೆಯೇ, ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ನೀಡುತ್ತದೆಯೇ, ಪ್ರಾಂಪ್ಟ್‌ಗಳನ್ನು ಹೊಂದಿದೆಯೇ, ಜ್ಞಾಪನೆಗಳು(ನೋಟಿಫಿಕೇಶನ್ ಗಳು), ಹಂಚಿಕೆ ಆಯ್ಕೆಗಳು, ಅಧಿಸೂಚನೆಗಳು, ಇತ್ಯಾದಿ)? ಗಮನಿಸಿ: ಈ ಕಾರ್ಯಗಳು ಸರಿಹೊಂದುವಂತೆ/ಸೂಕ್ತವಾಗುವಂತೆ (ಕಸ್ಟಮೈಸ್) ಆಗಿರಬೇಕು ಮತ್ತು ಪರಿಪೂರ್ಣವಾಗಲು ಅಗಾಧವಾಗಿರಬಾರದು.',
    },
    'iwx3j97a': {
      'en': 'No interactive features and/or no response to user interaction.',
      'kn':
          'ಸಂವಾದಾತ್ಮಕ/ಪರಸ್ಪರ ಕಾರ್ಯ ನಡೆಸುವ (ಇಂಟರ್ ಆಕ್ಟಿವ್) \tವೈಶಿಷ್ಟ್ಯಗಳಿಲ್ಲ \tಮತ್ತು/ಅಥವಾ ಬಳಕೆದಾರರ ಸಂವಹನಕ್ಕೆ(ಯೂಸರ್ ಇಂಟರ್ ಆಕ್ಷನ್)ಗೆ ಯಾವುದೇ \tಪ್ರತಿಕ್ರಿಯೆ ಇಲ್ಲ.',
    },
    '8aa2i5xo': {
      'en':
          'Insufficient interactivity, or feedback, or user input options, limiting functions.',
      'kn':
          'ಸಾಕಷ್ಟು ಸಂವಾದಾತ್ಮಕತೆ, ಅಥವಾ ಪ್ರತಿಕ್ರಿಯೆ, ಅಥವಾ ಬಳಕೆದಾರರ ಇನ್‌ಪುಟ್ \tಆಯ್ಕೆಗಳು, ಸೀಮಿತಗೊಳಿಸುವ ಕಾರ್ಯಗಳು.',
    },
    'qyxy2d15': {
      'en': 'Basic interactive features to function adequately.',
      'kn': 'ಮೂಲಭೂತ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು ಸಮರ್ಪಕವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಿದೆ.',
    },
    '8mxnzsth': {
      'en':
          'Offers a variety of interactive features/feedback/user input options.',
      'kn':
          'ವಿವಿಧ ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳನ್ನು \tನೀಡುತ್ತದೆ.',
    },
    'j2zqbbej': {
      'en':
          ' Very high level of responsiveness through interactive features/feedback/user input options.',
      'kn':
          'ಸಂವಾದಾತ್ಮಕ ವೈಶಿಷ್ಟ್ಯಗಳು/ಪ್ರತಿಕ್ರಿಯೆ/ಬಳಕೆದಾರ ಇನ್‌ಪುಟ್ ಆಯ್ಕೆಗಳ \tಮೂಲಕ ಅತಿ ಹೆಚ್ಚಿನ ಮಟ್ಟದ ಸ್ಪಂದಿಸುವಿಕೆ.',
    },
    'zmyadwqe': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    '7t842tqa': {
      'en':
          'Target group: Is the app content (visual information, language, design) appropriate for your target audience?',
      'kn':
          'ಗುರಿ ಗುಂಪನ್ನು ತಲುಪುವುದು: ನಿಮ್ಮ ಗುರಿ ಪ್ರೇಕ್ಷಕರಿಗೆ ಅಪ್ಲಿಕೇಶನ್ ವಿಷಯ (ದೃಶ್ಯ ಮಾಹಿತಿ, ಭಾಷೆ, ವಿನ್ಯಾಸ) ಸೂಕ್ತವಾಗಿದೆಯೇ?',
    },
    'srtfamkc': {
      'en': 'Completely inappropriate/unclear/confusing.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.',
    },
    '2b2mp7vx': {
      'en': 'Mostly inappropriate/unclear/confusing.',
      'kn': 'ಹೆಚ್ಚಾಗಿ ಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ.',
    },
    't9qbc7ns': {
      'en':
          'Acceptable but not targeted. May be inappropriate/unclear/confusing.',
      'kn': 'ಸ್ವೀಕಾರಾರ್ಹ ಆದರೆ ಗುರಿಯಾಗಿಲ್ಲ. \tಅನುಚಿತ/ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯವಾಗಿರಬಹುದು.',
    },
    'aapyesj9': {
      'en': 'Well-targeted, with negligible issues.',
      'kn': 'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಉತ್ತಮ-ಉದ್ದೇಶಿತ.',
    },
    'j5jkw0pg': {
      'en': 'Perfectly targeted, no issues found.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಗುರಿಪಡಿಸಲಾಗಿದೆ, ಯಾವುದೇ ಸಮಸ್ಯೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ.',
    },
    '1ncs4446': {
      'en': 'Functionality',
      'kn': 'ಕಾರ್ಯಶೀಲತೆ',
    },
    'u93zt70e': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'eoa1jeuu': {
      'en':
          'Performance: How accurately/fast do the app features (functions) and components (buttons/menus) work?',
      'kn':
          'ಕಾರ್ಯಕ್ಷಮತೆ (ಪರ್ಫಾರ್ಮನ್ಸ್): ಅಪ್ಲಿಕೇಶನ್ ವೈಶಿಷ್ಟ್ಯಗಳು (ಕಾರ್ಯಗಳು) ಮತ್ತು ಘಟಕಗಳು/ಕಾಂಪೊನೆಂಟ್ಸ್ (ಬಟನ್‌ಗಳು/ಮೆನುಗಳು) ಎಷ್ಟು ನಿಖರವಾಗಿ/ ವೇಗವಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ?',
    },
    'mdbu1qcy': {
      'en':
          'App is broken; no/insufficient/inaccurate response (e.g. crashes/bugs/broken features, etc.).',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್ ಮುರಿದುಹೋಗಿದೆ; ಇಲ್ಲ/ಸಾಕಷ್ಟಿಲ್ಲ/ತಪ್ಪಾದ ಪ್ರತಿಕ್ರಿಯೆ (ಉದಾ. \tಕ್ರ್ಯಾಶ್‌ಗಳು/ಬಗ್‌ಗಳು/ಮುರಿದ ವೈಶಿಷ್ಟ್ಯಗಳು, ಇತ್ಯಾದಿ).',
    },
    'pxkv0wv0': {
      'en':
          'Some functions work, but lagging or contains major technical problems.',
      'kn':
          'ಕೆಲವು ಕಾರ್ಯಗಳು ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ, ಆದರೆ ಮಂದಗತಿಯಲ್ಲಿವೆ ಅಥವಾ \tಪ್ರಮುಖ ತಾಂತ್ರಿಕ ಸಮಸ್ಯೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.',
    },
    'obyrir1q': {
      'en':
          'App works overall. Some technical problems need fixing/Slow at times.',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್ ಒಟ್ಟಾರೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ. ಕೆಲವು ತಾಂತ್ರಿಕ \tಸಮಸ್ಯೆಗಳನ್ನು ಸರಿಪಡಿಸುವ ಅಗತ್ಯವಿದೆ/ನಿಧಾನವಾಗಿ ಕೆಲವೊಮ್ಮೆ.',
    },
    'oft5y8b3': {
      'en': 'Mostly functional with minor/negligible problems.',
      'kn':
          'ಚಿಕ್ಕ/ನಗಣ್ಯ(ನೆಗ್ಲಿಜಬಲ್)ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ.',
    },
    'e6or42np': {
      'en':
          'Perfect/timely response; no technical bugs found/contains a ‘loading time left’ indicator.',
      'kn':
          'ಪರಿಪೂರ್ಣ/ಸಕಾಲಿಕ ಪ್ರತಿಕ್ರಿಯೆ; ಯಾವುದೇ ತಾಂತ್ರಿಕ ದೋಷಗಳು \tಕಂಡುಬಂದಿಲ್ಲ/\'ಲೋಡಿಂಗ್ ಸಮಯ ಉಳಿದಿದೆ\' ಸೂಚಕವನ್ನು ಹೊಂದಿದೆ.',
    },
    'fo3ws6kd': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    'ym2q7k3z': {
      'en':
          'Ease of use: How easy is it to learn how to use the app; how clear are the menu labels/icons and instructions?',
      'kn':
          'ಸುಲಭವಾಗಿ ಬಳಸುವುದು: ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಹೇಗೆ ಬಳಸುವುದು ಎಂದು ಕಲಿಯುವುದು ಎಷ್ಟು ಸುಲಭ; ಮೆನು ಲೇಬಲ್‌ಗಳು/ಐಕಾನ್‌ಗಳು ಮತ್ತು ಸೂಚನೆಗಳು ಎಷ್ಟು ಸ್ಪಷ್ಟವಾಗಿವೆ?',
    },
    'x7tdakrq': {
      'en':
          'No/limited instructions; menu labels/icons are confusing; complicated.',
      'kn':
          'ಇಲ್ಲ/ಸೀಮಿತ ಸೂಚನೆಗಳು; ಮೆನು ಲೇಬಲ್‌ಗಳು/ಚಿಹ್ನೆಗಳು \tಗೊಂದಲಮಯವಾಗಿವೆ; ಸಂಕೀರ್ಣವಾಗಿವೆ.',
    },
    '0ckd5wwo': {
      'en': 'Usable after a lot of time/effort.',
      'kn': 'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.',
    },
    '6ygjmwiw': {
      'en': 'Usable after some time/effort.',
      'kn': 'ಸ್ವಲ್ಪ ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದು.',
    },
    'xg469t61': {
      'en': 'Easy to learn how to use the app (or has clear instructions).',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಹೇಗೆ ಬಳಸುವುದು ಎಂಬುದನ್ನು ಕಲಿಯುವುದು ಸುಲಭ \t(ಅಥವಾ \tಸ್ಪಷ್ಟ ಸೂಚನೆಗಳನ್ನು ಹೊಂದಿದೆ).',
    },
    'a3hp7i8t': {
      'en': 'Able to use app immediately; intuitive; simple.',
      'kn': 'ತಕ್ಷಣವೇ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ; ಅರ್ಥಗರ್ಭಿತ; ಸರಳ.',
    },
    '8pgv28ie': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    'pibv0mng': {
      'en':
          'Navigation: Is moving between screens logical/accurate/appropriate/uninterrupted; are all necessary screen links present?',
      'kn':
          'ಸಂಚರಣೆ (ನ್ಯಾವಿಗೇಶನ್): ತಾರ್ಕಿಕ/ನಿಖರ/ಸೂಕ್ತ/ಅಡೆತಡೆಯಿಲ್ಲದೆ ಪರದೆಗಳ(ಸ್ಕ್ರೀನ್ಸ್) ನಡುವೆ ಚಲಿಸುತ್ತಿದೆ; ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ಸ್ಕ್ರೀನ್ ಲಿಂಕ್‌ಗಳು ಇವೆಯೇ?',
    },
    '36dh9fnj': {
      'en':
          'Different sections within the app seem logically disconnected and random/ confusing/ navigation is difficult.',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ವಿವಿಧ ವಿಭಾಗಗಳು ತಾರ್ಕಿಕವಾಗಿ(ಲಾಜಿಕಲ್ ಆಗಿ) \tಸಂಪರ್ಕ \tಕಡಿತಗೊಂಡಂತೆ ತೋರುತ್ತಿದೆ ಮತ್ತು ಮನಬಂದಂತೆ (ರ್‍ಯಾಂಡಮ್) /\tಗೊಂದಲಮಯ/ \tಸಂಚರಣೆ ಕಷ್ಟಕರವಾಗಿದೆ.',
    },
    'rdws9u05': {
      'en': 'Usable after a lot of time/effort.',
      'kn': 'ಸಾಕಷ್ಟು ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.',
    },
    '33wkknk1': {
      'en': 'Usable after some time/effort.',
      'kn': 'ಸ್ವಲ್ಪ ಸಮಯ/ಪ್ರಯತ್ನದ ನಂತರ ಬಳಸಬಹುದಾಗಿದೆ.',
    },
    '0w04kqbo': {
      'en': 'Easy to use or missing a negligible link.',
      'kn': 'ಬಳಸಲು ಸುಲಭ ಅಥವಾ ಅತ್ಯಲ್ಪ ಲಿಂಕ್ ಅನ್ನು ಕಳೆದುಕೊಂಡಿದೆ.',
    },
    '43jpejoc': {
      'en':
          'Perfectly logical, easy, clear and intuitive screen flow throughout, or offers shortcuts.',
      'kn':
          'ಸಂಪೂರ್ಣವಾಗಿ ತಾರ್ಕಿಕ, ಸುಲಭ, ಸ್ಪಷ್ಟ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ ಪರದೆಯ ಹರಿವು, \tಅಥವಾ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳನ್ನು ನೀಡುತ್ತದೆ.',
    },
    '9ae54zw0': {
      'en': 'OUESTION 4:',
      'kn': 'ಪ್ರಶ್ನೆ 4:',
    },
    'qy9l20kr': {
      'en':
          'Gestural design: Are interactions (taps/swipes/pinches/scrolls) consistent and intuitive across all components/screens?',
      'kn':
          'ಸನ್ನೆ(ಗೆಸ್ಚುರಲ್) ವಿನ್ಯಾಸ: ಎಲ್ಲಾ ಘಟಕಗಳು/ಪರದೆಗಳಲ್ಲಿ ಪರಸ್ಪರ ಕ್ರಿಯೆಗಳು (ಟ್ಯಾಪ್‌ಗಳು/ ಸ್ವೈಪ್‌ಗಳು/ ಪಿಂಚ್‌ಗಳು/ ಸ್ಕ್ರಾಲ್‌ಗಳು) ಸ್ಥಿರವಾಗಿರುತ್ತವೆ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತವಾಗಿವೆಯೇ?',
    },
    'fk7n4wqz': {
      'en': 'Completely inconsistent/confusing.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಸಾಮರಸ್ಯವಿಲ್ಲದ (ಅಸಮಂಜಸ) / ಗೊಂದಲಮಯ.',
    },
    'qw727xbu': {
      'en': 'Often inconsistent/confusing.',
      'kn': 'ಸಾಮಾನ್ಯವಾಗಿ ಅಸಮಂಜಸ / ಗೊಂದಲಮಯ.',
    },
    'ua35lbdk': {
      'en': 'OK with some inconsistencies/confusing elements.',
      'kn': 'ಕೆಲವು ಅಸಂಗತತೆಗಳು/ ಗೊಂದಲಮಯ ಅಂಶಗಳೊಂದಿಗೆ ಸರಿ.',
    },
    '34j1zy7y': {
      'en': 'Mostly consistent/intuitive with negligible problems.',
      'kn': 'ಅತ್ಯಲ್ಪ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಥಿರ/ ಅರ್ಥಗರ್ಭಿತ.',
    },
    'ejox4j10': {
      'en': 'Perfectly consistent and intuitive.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಥಿರ ಮತ್ತು ಅರ್ಥಗರ್ಭಿತ.',
    },
    'gqeg9byj': {
      'en': 'Aesthetics',
      'kn': 'ಸೌಂದರ್ಯಶಾಸ್ತ್ರ',
    },
    'h599irmr': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    '4rdfk49d': {
      'en':
          'Layout: Is arrangement and size of buttons/icons/menus/content on the screen appropriate or zoomable if needed?',
      'kn':
          'ವಿನ್ಯಾಸ(ಲೇಔಟ್): ಪರದೆಯ ಮೇಲಿನ ಬಟನ್‌ಗಳು/ ಐಕಾನ್‌ಗಳು/ ಮೆನುಗಳು/ ವಿಷಯಗಳ ಜೋಡಣೆ ಮತ್ತು ಗಾತ್ರವು ಸೂಕ್ತವೇ ಅಥವಾ ಅಗತ್ಯವಿದ್ದರೆ ಝೂಮ್ ಮಾಡಬಹುದೇ?',
    },
    'r44v7yqg': {
      'en':
          'Very bad design, cluttered, some options impossible to select/locate/see/read device display\nnot optimised.',
      'kn':
          'ಅತ್ಯಂತ ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಅಸ್ತವ್ಯಸ್ತಗೊಂಡಿದೆ, ಕೆಲವು ಆಯ್ಕೆಗಳನ್ನು ಆಯ್ಕೆ \tಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಅಸಾಧ್ಯವಾದ ಸಾಧನವನ್ನು ಪ್ಲೇ ಆಪ್ಟಿಮೈಸ್ \tಮಾಡಲಾಗಿಲ್ಲ.',
    },
    'sph8qcq3': {
      'en':
          'Satisfactory, few problems with selecting/locating/seeing/reading items or with minor screensize problems.',
      'kn':
          'ಕೆಟ್ಟ ವಿನ್ಯಾಸ, ಮನಬಂದಂತೆ/ಯಾದೃಚ್ಛಿಕ ( ರ್‍ಯಾಂಡಮ್ ), ಅಸ್ಪಷ್ಟ, ಕೆಲವು \tಆಯ್ಕೆಗಳನ್ನು \tಆಯ್ಕೆ ಮಾಡಲು/ಸ್ಥಳಿಸಲು/ನೋಡಲು/ಓದಲು ಕಷ್ಟ.',
    },
    'zcj0ra75': {
      'en': 'Mostly clear, able to select/locate/see/read items.',
      'kn':
          'ತೃಪ್ತಿದಾಯಕ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆಮಾಡುವುದು/ ಸ್ಥಳಿಸುವುದು/ ನೋಡುವುದು/ \tಓದುವುದು ಅಥವಾ ಸಣ್ಣ ಪರದೆಯ ಗಾತ್ರದ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಕೆಲವು ಸಮಸ್ಯೆಗಳು.',
    },
    '2otwmfge': {
      'en': 'Relevant/appropriate/coherent/correct.',
      'kn':
          'ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟವಾಗಿದೆ, ಐಟಂಗಳನ್ನು ಆಯ್ಕೆ ಮಾಡಲು/ ಪತ್ತೆ ಮಾಡಲು/ನೋಡಲು/ \tಓದಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ.',
    },
    'l5k4f0gx': {
      'en':
          'Professional, simple, clear, orderly, logically organised, device display optimised. Every design component has a purpose.',
      'kn':
          'ವೃತ್ತಿಪರ, ಸರಳ, ಸ್ಪಷ್ಟ, ಕ್ರಮಬದ್ಧ, ತಾರ್ಕಿಕವಾಗಿ ಸಂಘಟಿತ, ಸಾಧನ \tಪ್ರದರ್ಶನವನ್ನು ಆಪ್ಟಿಮೈಸ್ ಮಾಡಲಾಗಿದೆ. ಪ್ರತಿಯೊಂದು ವಿನ್ಯಾಸ ಘಟಕವು \tಒಂದು ಉದ್ದೇಶವನ್ನು ಹೊಂದಿದೆ.',
    },
    '3zkk8b4u': {
      'en': 'Information',
      'kn': 'ಮಾಹಿತಿ',
    },
    'p49ljcmn': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'rydseuto': {
      'en':
          'Quality of information within the app: Is app content correct, well written, and relevant to the goal/topic of the app?',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಮಾಹಿತಿಯ ಗುಣಮಟ್ಟ: ಅಪ್ಲಿಕೇಶನ್ ವಿಷಯವು ಸರಿಯಾಗಿದೆಯೇ, ಉತ್ತಮವಾಗಿ ಬರೆಯಲ್ಪಟ್ಟಿದೆಯೇ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್‌ನ ಗುರಿ/ವಿಷಯಕ್ಕೆ ಸಂಬಂಧಿಸಿದೆಯೇ?',
    },
    '47sbi1xj': {
      'en': ' Irrelevant/inappropriate/incoherent/incorrect.',
      'kn': 'ಅಪ್ರಸ್ತುತ/ಅನುಚಿತ/ಅಸಂಗತ/ತಪ್ಪು.',
    },
    'fibvq7bl': {
      'en': 'Poor. Barely relevant/appropriate/coherent/may be incorrect.',
      'kn': 'ಕಳಪೆ, ಅಷ್ಟೇನೂ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಬಹುಶಃ ತಪ್ಪಾಗಿರಬಹುದು.',
    },
    'fcip6a58': {
      'en': 'Moderately relevant/appropriate/coherent/and appears correct.',
      'kn': 'ಮಧ್ಯಮ ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಮತ್ತು ಸರಿಯಾಗಿ ಕಾಣಿಸುತ್ತದೆ.',
    },
    '9vuk32qi': {
      'en': 'Relevant/appropriate/coherent/correct.',
      'kn': 'ಸಂಬಂಧಿತ/ಸೂಕ್ತ/ಸುಸಂಬದ್ಧ/ಸರಿಯಾದ.',
    },
    'tnjzn1dt': {
      'en': 'Highly relevant, appropriate, coherent, and correct.',
      'kn': 'ಹೆಚ್ಚು ಸಂಬಂಧಿತ, ಸೂಕ್ತ, ಸುಸಂಬದ್ಧ ಮತ್ತು ಸರಿಯಾದ.',
    },
    'aofinh9q': {
      'en': 'N/A There is no information within the app.',
      'kn': 'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.',
    },
    'uve30b38': {
      'en': 'OUESTION 2:',
      'kn': 'ಪ್ರಶ್ನೆ 2:',
    },
    '2woklp5r': {
      'en':
          'Quantity of information within the app: Is the extent coverage within the scope of the app; and comprehensive but concise?',
      'kn':
          'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿರುವ ಮಾಹಿತಿಯ ಪ್ರಮಾಣ: ಅಪ್ಲಿಕೇಶನ್‌ನ ವ್ಯಾಪ್ತಿಯಲ್ಲಿ ವ್ಯಾಪ್ತಿಯ ವ್ಯಾಪ್ತಿಯು; ಮತ್ತು ಸಮಗ್ರ ಆದರೆ ಸಂಕ್ಷಿಪ್ತ?',
    },
    '7w6qxhkk': {
      'en': 'Minimal or overwhelming.',
      'kn': 'ಕನಿಷ್ಠ ಅಥವಾ ಅಗಾಧ.',
    },
    'yg1sxqpr': {
      'en': 'Insufficient or possibly overwhelming.',
      'kn': 'ಸಾಕಷ್ಟಿಲ್ಲದ ಅಥವಾ ಪ್ರಾಯಶಃ ಅಗಾಧ.',
    },
    '6ooi3hwn': {
      'en': 'OK but not comprehensive or concise.',
      'kn': 'ಸರಿ ಆದರೆ ಸಮಗ್ರ ಅಥವಾ ಸಂಕ್ಷಿಪ್ತವಾಗಿಲ್ಲ.',
    },
    'tpv1iejm': {
      'en':
          'Offers a broad range of information, has some gaps or unnecessary detail; or has no links to more information and resources.',
      'kn':
          'ಮಾಹಿತಿಯ ವಿದೇಶದಲ್ಲಿ ಕೊಡುಗೆಗಳು, ಕೆಲವು ಅಂತರಗಳು ಅಥವಾ ಅನಗತ್ಯ \tವಿವರಗಳನ್ನು ಹೊಂದಿದೆ; ಅಥವಾ ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳಿಗೆ \tಯಾವುದೇ ಲಿಂಕ್‌ಗಳನ್ನು ಹೊಂದಿಲ್ಲ.',
    },
    'y0wlhmjj': {
      'en':
          'Comprehensive and concise; contains links to more information and resources.',
      'kn':
          'ಸಮಗ್ರ ಮತ್ತು ಸಂಕ್ಷಿಪ್ತ; ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಮತ್ತು ಸಂಪನ್ಮೂಲಗಳನ್ನು \tಒಳಗೊಂಡಿದೆ.',
    },
    '1ckmwur4': {
      'en': 'N/A There is no information within the app.',
      'kn': 'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ.',
    },
    '6ise3jm3': {
      'en': 'OUESTION 3:',
      'kn': 'ಪ್ರಶ್ನೆ 3:',
    },
    '2vc6fs82': {
      'en':
          'Visual information: Is visual explanation of concepts – through charts/ graphs/ images/ videos, etc. – clear, logical, correct?',
      'kn':
          'ದೃಶ್ಯ ಮಾಹಿತಿ: ಪರಿಕಲ್ಪನೆಗಳ ದೃಶ್ಯ ವಿವರಣೆ-ಚಾರ್ಟ್‌ಗಳು/ ಗ್ರಾಫ್‌ಗಳು/ ಚಿತ್ರಗಳು/ ವೀಡಿಯೋಗಳು ಇತ್ಯಾದಿಗಳ ಮೂಲಕ - ಸ್ಪಷ್ಟ, ತಾರ್ಕಿಕ, ಸರಿಯಾಗಿದೆಯೇ?',
    },
    '7bwmwlmi': {
      'en':
          'N/A There is no visual information within the app (e.g. it only contains audio, or text).',
      'kn':
          'N/A ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಯಾವುದೇ ದೃಶ್ಯ ಮಾಹಿತಿ ಇಲ್ಲ (ಉದಾ. ಇದು \tಆಡಿಯೋ \tಅಥವಾ ಪಠ್ಯವನ್ನು ಮಾತ್ರ ಒಳಗೊಂಡಿದೆ).',
    },
    '93r4yzev': {
      'en': 'Completely unclear/confusing/wrong or necessary but missing.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು ಅಥವಾ ಅಗತ್ಯ ಆದರೆ \tಕಾಣೆಯಾಗಿದೆ.',
    },
    'gi1ncxmt': {
      'en': 'Mostly unclear/confusing/wrong.',
      'kn': 'ಹೆಚ್ಚಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.',
    },
    'ofess4dv': {
      'en': 'OK but often unclear/confusing/wrong.',
      'kn': 'ಸರಿ ಆದರೆ ಸಾಮಾನ್ಯವಾಗಿ ಅಸ್ಪಷ್ಟ/ಗೊಂದಲಮಯ/ತಪ್ಪು.',
    },
    'mn2d84js': {
      'en': 'Mostly clear/logical/correct with negligible issues.',
      'kn': 'ನಗಣ್ಯ ಸಮಸ್ಯೆಗಳೊಂದಿಗೆ ಹೆಚ್ಚಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.',
    },
    'qgb3num1': {
      'en': 'Perfectly clear/logical/correct.',
      'kn': 'ಸಂಪೂರ್ಣವಾಗಿ ಸ್ಪಷ್ಟ/ತಾರ್ಕಿಕ/ಸರಿಯಾದ.',
    },
    'm93ebrau': {
      'en': 'Rating',
      'kn': 'ರೇಟಿಂಗ್',
    },
    's8t4fkgg': {
      'en': 'OUESTION 1:',
      'kn': 'ಪ್ರಶ್ನೆ 1:',
    },
    'jlexrw5p': {
      'en': 'What is your overall star rating of the app?',
      'kn': 'ಅಪ್ಲಿಕೇಶನ್‌ನ ನಿಮ್ಮ ಒಟ್ಟಾರೆ ಸ್ಟಾರ್ ರೇಟಿಂಗ್ ಏನು?',
    },
    '75mvw9ms': {
      'en': 'Submit',
      'kn': 'ಸಲ್ಲಿಸು',
    },
    'lwm1u16f': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // result1
  {
    'xz5vvrdy': {
      'en': 'Result',
      'kn': 'ಫಲಿತಾಂಶ',
    },
    '71xn6pgh': {
      'en': 'Dyslexia',
      'kn': '',
    },
    'e6zm9hvz': {
      'en': 'Dysgraphia',
      'kn': '',
    },
    'fw31rpxj': {
      'en': 'Dyscalculia',
      'kn': '',
    },
    '10vjoh10': {
      'en': 'Based on the results this test is Recommended',
      'kn':
          'ತಕ್ಷಣದ ಉಲ್ಲೇಖಕ್ಕಾಗಿ ಮನೋವೈದ್ಯಶಾಸ್ತ್ರ ವಿಭಾಗ, CDSIMER ಅನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    '7bnf73ij': {
      'en': 'Go to Dyslexia Assessment',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'bvhf4krd': {
      'en': 'For immediate refferal contact Department of Psychiatry, CDSIMER',
      'kn':
          'ತಕ್ಷಣದ ಉಲ್ಲೇಖಕ್ಕಾಗಿ ಮನೋವೈದ್ಯಶಾಸ್ತ್ರ ವಿಭಾಗ, CDSIMER ಅನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'zkfd67z0': {
      'en': 'Contact Us',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'b59qhnef': {
      'en': 'Thank You For Your Time!!\nThe Screening is now Complete',
      'kn': 'ನಿಮ್ಮ ಸಮಯಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು!!\nಸ್ಕ್ರೀನಿಂಗ್ ಈಗ ಪೂರ್ಣಗೊಂಡಿದೆ',
    },
    'drkr5bs7': {
      'en': 'Go Home',
      'kn': 'ಮನೆಗೆ ಹೋಗು',
    },
    'g1isloue': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // refer
  {
    'qx34wg42': {
      'en': 'In this case the Screening process is unable to be carried out',
      'kn':
          'ಈ ಸಂದರ್ಭದಲ್ಲಿ ಸ್ಕ್ರೀನಿಂಗ್ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಕೈಗೊಳ್ಳಲು ಸಾಧ್ಯವಾಗುವುದಿಲ್ಲ',
    },
    '2bm6bjsr': {
      'en':
          'Please refer to a specialised professional for detailed Medical and Psychological Assessment ',
      'kn':
          'ವಿವರವಾದ ವೈದ್ಯಕೀಯ ಮತ್ತು ಮಾನಸಿಕ ಮೌಲ್ಯಮಾಪನಕ್ಕಾಗಿ ದಯವಿಟ್ಟು ವಿಶೇಷ ವೃತ್ತಿಪರರನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'wo684efh': {
      'en': 'Thank You For Your Time!!\nThe Screening is now Complete',
      'kn': 'ನಿಮ್ಮ ಸಮಯಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು!!\nಸ್ಕ್ರೀನಿಂಗ್ ಈಗ ಪೂರ್ಣಗೊಂಡಿದೆ',
    },
    'ipryomsw': {
      'en': 'Go Home',
      'kn': 'ಮನೆಗೆ ಹೋಗು',
    },
    'zr7a2lle': {
      'en': 'Refer ',
      'kn': 'ಉಲ್ಲೇಖಿಸಿ',
    },
    '73p3vial': {
      'en': 'Home',
      'kn': 'ಮುಖಪುಟ',
    },
  },
  // contactus
  {
    'v3kphuxd': {
      'en': 'Contact Us',
      'kn': 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ',
    },
    'alz9zjri': {
      'en':
          'ಸಿ.ಡಿ.ಸೈಮರ್ CDSIMER Dr Chandramma Dayananda Sagar Institute of Medical Education and Research',
      'kn':
          'ಹೋಮ್ಸಿ.ಡಿ.ಸೈಮರ್ CDSIMER ಡಾ ಚಂದ್ರಮ್ಮ ದಯಾನಂದ ಸಾಗರ್ ವೈದ್ಯಕೀಯ ಶಿಕ್ಷಣ ಮತ್ತು ಸಂಶೋಧನಾ ಸಂಸ್ಥೆ',
    },
    'bdnatjxw': {
      'en': 'Hospital and College',
      'kn': 'ಆಸ್ಪತ್ರೆ ಮತ್ತು ಕಾಲೇಜು',
    },
    'i027ft1p': {
      'en':
          'Deverakaggalahalli, KanakapuraRoad Ramanagara District,\nKarnataka - 562112',
      'kn': 'ದೇವರಕಗ್ಗಲಹಳ್ಳಿ, ಕನಕಪುರ ರಸ್ತೆ ರಾಮನಗರ ಜಿಲ್ಲೆ,\nಕರ್ನಾಟಕ - 562112',
    },
    'q2unnrgn': {
      'en': 'Department of Psychiatry',
      'kn': 'ಮನೋವೈದ್ಯಶಾಸ್ತ್ರ ವಿಭಾಗ',
    },
    'asws30ga': {
      'en': '+91 96060 84831',
      'kn': '+91 96060 84831',
    },
    'yomob7eu': {
      'en': 'Call',
      'kn': 'ಕರೆ ಮಾಡಿ',
    },
    't2jsi0rz': {
      'en': 'Call between 8 am to 5 pm',
      'kn': 'ಬೆಳಿಗ್ಗೆ 8 ರಿಂದ ಸಂಜೆ 5 ರವರೆಗೆ ಕರೆ ಮಾಡಿ',
    },
  },
  // dataRetrivalTeacher
  {
    'oodlbali': {
      'en': 'Search',
      'kn': 'ಮಗುವನ್ನು ಹುಡುಕಿ',
    },
    'xl03h87g': {
      'en': 'Search for tests...',
      'kn': 'ಮಕ್ಕಳಿಗಾಗಿ ಹುಡುಕಿ...',
    },
    'jfyhc96i': {
      'en': 'Check Graph Statistics',
      'kn': '',
    },
    'gxnxba4s': {
      'en': 'Your Screenings',
      'kn': 'ನಿಮ್ಮ ಸ್ಕ್ರೀನಿಂಗ್‌ಗಳು',
    },
    'smvoxjwi': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // UpdateProfile
  {
    '76i6yk4q': {
      'en': 'MindBridge',
      'kn': 'SlD ಸ್ಕ್ರೀನಿಂಗ್',
    },
    'i442ci1a': {
      'en': 'Update Profile',
      'kn': 'ಪ್ರೊಫೈಲ್ ಅನ್ನು ನವೀಕರಿಸಿ',
    },
    'f23ua5z9': {
      'en': 'Fill out the information below in order to update your profile',
      'kn': 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಅನ್ನು ನವೀಕರಿಸಲು ಕೆಳಗಿನ ಮಾಹಿತಿಯನ್ನು ಭರ್ತಿ ಮಾಡಿ',
    },
    'p1fcy38a': {
      'en':
          '*Please fill these essential details to complete your profile setup',
      'kn': 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಅನ್ನು ನವೀಕರಿಸಲು ಕೆಳಗಿನ ಮಾಹಿತಿಯನ್ನು ಭರ್ತಿ ಮಾಡಿ',
    },
    '1x3j4aaf': {
      'en': 'Enter your Full name',
      'kn': 'ನಿಮ್ಮ ಮೊದಲ ಹೆಸರನ್ನು ನಮೂದಿಸಿ',
    },
    'oqzb3olg': {
      'en': 'Gender',
      'kn': 'ಲಿಂಗ',
    },
    '0m1i4qym': {
      'en': 'Search for an item...',
      'kn': 'ಐಟಂಗಾಗಿ ಹುಡುಕಿ...',
    },
    'g2q3qoul': {
      'en': 'Male',
      'kn': 'ಪುರುಷ',
    },
    '7op1k1tt': {
      'en': 'Female',
      'kn': 'ಹೆಣ್ಣು',
    },
    'p663i07k': {
      'en': 'Grade',
      'kn': 'ಲಿಂಗ',
    },
    'i0ye2qvl': {
      'en': 'Search for an item...',
      'kn': 'ಐಟಂಗಾಗಿ ಹುಡುಕಿ...',
    },
    'd1118xj1': {
      'en': '1',
      'kn': '',
    },
    'r04isu7v': {
      'en': '2',
      'kn': '',
    },
    'h65u3jhg': {
      'en': '3',
      'kn': '',
    },
    'n7u0fwuj': {
      'en': '4',
      'kn': '',
    },
    'zho8kilt': {
      'en': '5',
      'kn': '',
    },
    '7h28586j': {
      'en': '6',
      'kn': '',
    },
    '11i1qxvh': {
      'en': '7',
      'kn': '',
    },
    'y36jnz5e': {
      'en': '8',
      'kn': '',
    },
    'tj6ay0o9': {
      'en': '9',
      'kn': '',
    },
    'cp5u6qeh': {
      'en': '10',
      'kn': '',
    },
    '7e0kk4nm': {
      'en': 'Enter Date of Birth',
      'kn': 'ಹುಟ್ಟಿದ ದಿನಾಂಕವನ್ನು ನಮೂದಿಸಿ',
    },
    'bqrfjtwm': {
      'en': 'Update',
      'kn': 'ಮುಂದುವರಿಸಿ',
    },
    'eqopz3ja': {
      'en': 'First Name is Required',
      'kn': 'ಮೊದಲ ಹೆಸರು ಅಗತ್ಯವಿದೆ',
    },
    'kilwt2fb': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    '63qs2j8d': {
      'en': 'Last Name is required',
      'kn': 'ಕೊನೆಯ ಹೆಸರು ಅಗತ್ಯವಿದೆ',
    },
    'h2hjhczo': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    's7f9081p': {
      'en': 'Enter the name of your school',
      'kn': 'ನಿಮ್ಮ ಶಾಲೆಯ ಹೆಸರನ್ನು ನಮೂದಿಸಿ',
    },
    'j9qbww20': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    '25bgpp3h': {
      'en': 'Field is required',
      'kn': 'ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ',
    },
    '1r28kkak': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    'o3ccm6s1': {
      'en': 'Enter School Pincode',
      'kn': 'ಶಾಲೆಯ ಪಿನ್‌ಕೋಡ್ ನಮೂದಿಸಿ',
    },
    'u9h3df6x': {
      'en': 'Enter 6 digit Pincode',
      'kn': '6 ಅಂಕಿಯ ಪಿನ್‌ಕೋಡ್ ನಮೂದಿಸಿ',
    },
    'p1h4kvk1': {
      'en': 'Please choose an option from the dropdown',
      'kn': 'ದಯವಿಟ್ಟು ಡ್ರಾಪ್‌ಡೌನ್‌ನಿಂದ ಆಯ್ಕೆಯನ್ನು ಆರಿಸಿ',
    },
    'tpx1a49i': {
      'en': 'Home',
      'kn': 'ಮನೆ',
    },
  },
  // loginPage
  {
    '5vm6l7gp': {
      'en': 'Welcome,',
      'kn': '',
    },
    '7lufno3n': {
      'en': 'Access your account below or',
      'kn': '',
    },
    'z7jfm5g4': {
      'en': 'Create Account',
      'kn': '',
    },
    'srl1wz78': {
      'en': 'Your email...',
      'kn': '',
    },
    'pvtx00f4': {
      'en': 'Password',
      'kn': '',
    },
    'z9usyrfa': {
      'en': 'Forgot Password?',
      'kn': '',
    },
    'h5ca8d90': {
      'en': 'Login',
      'kn': '',
    },
    '64pfy991': {
      'en': 'Sign-In Using Google or Facebook',
      'kn': '',
    },
    '35bxdj8b': {
      'en': 'Home',
      'kn': '',
    },
  },
  // createAccountPage
  {
    'pcrzvciz': {
      'en': 'Welcome,',
      'kn': '',
    },
    'v1cmugh8': {
      'en': 'Create your account below, or',
      'kn': '',
    },
    'pesxwba6': {
      'en': 'Login',
      'kn': '',
    },
    'igaynzur': {
      'en': 'Email Address',
      'kn': '',
    },
    'o34abipl': {
      'en': 'Password',
      'kn': '',
    },
    'f36wyhi7': {
      'en': 'Confirm Password',
      'kn': '',
    },
    'no600ey3': {
      'en': 'Create Account',
      'kn': '',
    },
    'f4ncyyqc': {
      'en': 'Continue as guest',
      'kn': '',
    },
    'pkzn7691': {
      'en': 'Home',
      'kn': '',
    },
  },
  // resetPassword
  {
    'lmb7bshu': {
      'en': 'Change Password',
      'kn': '',
    },
    'gmv87udu': {
      'en': 'Change Password',
      'kn': '',
    },
    'ykp9l2tw': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'kn': '',
    },
    'a8768rja': {
      'en': 'Enter your email',
      'kn': '',
    },
    '34duwyrv': {
      'en': 'Send Reset Link',
      'kn': '',
    },
    'uyldt426': {
      'en': 'Home',
      'kn': '',
    },
  },
  // completeProfilePage
  {
    'bibcczgq': {
      'en': 'Complete Your Child Profile',
      'kn': '',
    },
    'eitfko1e': {
      'en': 'Enter Full Name',
      'kn': '',
    },
    '7rgujzkx': {
      'en': '',
      'kn': '',
    },
    'iw5nnj3r': {
      'en': 'Gender',
      'kn': 'ಲಿಂಗ',
    },
    'i1fb6dwv': {
      'en': 'Search for an item...',
      'kn': 'ಐಟಂಗಾಗಿ ಹುಡುಕಿ...',
    },
    'i7uazyu6': {
      'en': 'Male',
      'kn': 'ಪುರುಷ',
    },
    '73yn8n7n': {
      'en': 'Female',
      'kn': 'ಹೆಣ್ಣು',
    },
    'r4hhygwd': {
      'en': '',
      'kn': '',
    },
    '16f0he0m': {
      'en': 'Grade',
      'kn': 'ಲಿಂಗ',
    },
    'j50kdiwn': {
      'en': 'Search for an item...',
      'kn': 'ಐಟಂಗಾಗಿ ಹುಡುಕಿ...',
    },
    'yywk854o': {
      'en': '1',
      'kn': 'ಪುರುಷ',
    },
    'arx5ii0d': {
      'en': '2',
      'kn': 'ಹೆಣ್ಣು',
    },
    'mwebq4cy': {
      'en': '3',
      'kn': '',
    },
    'e93emm55': {
      'en': '4',
      'kn': '',
    },
    'dr6vbwnc': {
      'en': '5',
      'kn': '',
    },
    '6j6daog5': {
      'en': '6',
      'kn': '',
    },
    '4xxv6cd5': {
      'en': '7',
      'kn': '',
    },
    'e9jiuv38': {
      'en': '8',
      'kn': '',
    },
    'kzeyc7i0': {
      'en': '9',
      'kn': '',
    },
    'nqfgw981': {
      'en': '10',
      'kn': '',
    },
    'v0rp25kz': {
      'en': 'Enter Date of Birth',
      'kn': 'ಹುಟ್ಟಿದ ದಿನಾಂಕವನ್ನು ನಮೂದಿಸಿ',
    },
    'fbqdtv3e': {
      'en': 'Finish',
      'kn': '',
    },
    's3w28fgt': {
      'en': 'Home',
      'kn': '',
    },
  },
  // Blogs
  {
    '7lewkq29': {
      'en': 'Blogs',
      'kn': '',
    },
    'lowhmt9a': {
      'en': 'Grow with the Community',
      'kn': '',
    },
    '6bv2fr94': {
      'en': 'Post',
      'kn': '',
    },
    'ap4hbde3': {
      'en': 'Tell Me More',
      'kn': '',
    },
    'mvk2yhks': {
      'en': 'Home',
      'kn': '',
    },
  },
  // centersPage
  {
    'm1nrv8dc': {
      'en': 'Schools and Center Near You',
      'kn': '',
    },
    'u3wqyzgn': {
      'en': 'Learn with the Community',
      'kn': '',
    },
    '5ejcrwbk': {
      'en': 'Tell Me More',
      'kn': '',
    },
    'rfy15sam': {
      'en': 'Home',
      'kn': '',
    },
  },
  // geminiChat
  {
    'usd5rlg3': {
      'en': 'Write your prompt here...',
      'kn': '',
    },
    '8j28u8lo': {
      'en': 'Home',
      'kn': '',
    },
  },
  // dyslexiaAssessment
  {
    'ujfeyuel': {
      'en': 'Read the below text out loud :',
      'kn': '',
    },
    'kvpfs82o': {
      'en':
          'It was the summer of 1880. A healthy baby girl was born in a small town in Alabama. Her parents loved her dearly and named her Helen Keller. But one day, the baby became ill and day after day, her fever stayed high. Everyone in the family tried to help her to get better, but all they could say was, \"There is nothing more we can do. The baby may not live.\" Helen lived. But she was not the same after her illness. \"Something is very wrong,\" her mother said. At last they found out what was wrong. The child could not see or hear. The baby grew into a little girl. Her parents felt sorry for her. Helen often cried and held on to her mother. \"Give the poor child what she wants,\" her father would say.',
      'kn': '',
    },
    'z39z3fv0': {
      'en': 'Tap to Record',
      'kn': '',
    },
    'uvugt3i5': {
      'en': 'Tap to Stop Recording',
      'kn': '',
    },
    '31ohqtzx': {
      'en': 'Process',
      'kn': '',
    },
    '2dlhwfl1': {
      'en': 'Once Audio Has been Captured Click the button Above to Process',
      'kn': '',
    },
    'b3manror': {
      'en': 'Severity Score : ',
      'kn': '',
    },
    'z6i76f6b': {
      'en': 'Severity Score : ',
      'kn': '',
    },
    '1gev21hc': {
      'en': 'Diagnosis : ',
      'kn': '',
    },
    '0ar8yl1j': {
      'en': 'Severity Score : ',
      'kn': '',
    },
    'rjzpdijs': {
      'en': 'Reading Severity Level : ',
      'kn': '',
    },
    'nqlmcfo8': {
      'en': 'Severity Score : ',
      'kn': '',
    },
    'ekbi48un': {
      'en': 'Detailed Analysis : ',
      'kn': '',
    },
    '44vnacvf': {
      'en': 'Go Home',
      'kn': '',
    },
    't8imxeu1': {
      'en': 'Dyslexia Assessment',
      'kn': '',
    },
    'ea9ef2xj': {
      'en': 'Home',
      'kn': '',
    },
  },
  // dysgraphiaAssessment
  {
    'cqtleiuf': {
      'en': 'Upload  Image of  your Child\'s Handwriting',
      'kn': '',
    },
    'x2jfxfdu': {
      'en':
          'Dictate the following words to your child and have them write this down on an A4 Sized, single lined paper. \n\n\n\"The quick brown fox jumps over the lazy dog and finds a zebra near the jungle with five boxes of jam. He asks the zebra, \'Do you want to join my picnic under the oak tree?\' They pack a yellow kite, some apples, and a quilt. As they walk, they spot a wizard playing xylophone music for a group of penguins. Everyone laughs and claps before enjoying the tasty snacks together.\"',
      'kn': '',
    },
    'pfrfa4pt': {
      'en': 'Tap to Upload',
      'kn': '',
    },
    'rqgf283h': {
      'en': 'Uploaded',
      'kn': '',
    },
    'gxiifzcv': {
      'en': 'Process',
      'kn': '',
    },
    'akkaxija': {
      'en': 'Image has been Captured Click the button Above to Process',
      'kn': '',
    },
    '36djhwft': {
      'en': 'Severity Score : ',
      'kn': '',
    },
    'flzsfk9c': {
      'en': 'Severity Score : 90',
      'kn': '',
    },
    'ho5q2s8q': {
      'en': 'Go Home',
      'kn': '',
    },
    'a9kcrjsn': {
      'en': 'Dysgraphia Assessment',
      'kn': '',
    },
    'ixribgdp': {
      'en': 'Home',
      'kn': '',
    },
  },
  // dyscalculiaAssessment
  {
    'eiuwofg0': {
      'en': 'Proceed',
      'kn': '',
    },
    '2rizk5ns': {
      'en':
          'Severity Score : 53.7\nClock Recognization is Low\nCount Measuring is Moderate\nMinor Difficulties found',
      'kn': '',
    },
    'dixkvztn': {
      'en': 'Go Home',
      'kn': '',
    },
    'zo2j7je5': {
      'en': 'Dyscalculia Assessment',
      'kn': '',
    },
    'dhyxz4xc': {
      'en': 'Home',
      'kn': '',
    },
  },
  // remedialProcedures
  {
    'ky7jm7rl': {
      'en': 'Dyslexia Assessment',
      'kn': '',
    },
    '3a7uzohw': {
      'en': 'Dysgraphia Assessment',
      'kn': '',
    },
    'yteaba73': {
      'en': 'Dysgraphia Assessment',
      'kn': '',
    },
    'wse2jrmn': {
      'en': 'Remedial Procedures',
      'kn': '',
    },
    't9ionhy6': {
      'en': 'Home',
      'kn': '',
    },
  },
  // BulletPoint
  {
    '9yelrcjk': {
      'en': ' •',
      'kn': ' •',
    },
  },
  // TermsAndCondition
  {
    'f0xtj5wc': {
      'en': 'Terms and Condition',
      'kn': 'ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತು',
    },
    '212a25gg': {
      'en':
          '1. Acceptance of Terms\nWelcome to CDSIMER SLD Screening. By accessing or using our mobile application (\"App\"), you agree to be bound by these Terms and Conditions (\"Terms\"). If you do not agree with these Terms, please do not use the App.\n2. User Registration and Account Management\n•\tAccount Creation: Users may need to register and create an account to access certain features of the App. You agree to provide accurate and complete information during registration.\n•\tAccount Security: You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.\n•\tAccount Termination: We reserve the right to suspend or terminate your account at any time if you violate these Terms.\n3. User Responsibilities and Conduct\n•\tAcceptable Use: You agree to use the App in compliance with all applicable laws and regulations. You must not engage in any activity that could harm the App or its users.\n•\tProhibited Activities: You are prohibited from using the App to post or transmit any harmful, offensive, or illegal content.\n4. Content and Intellectual Property\n•\tOwnership: All content provided by us on the App, including text, graphics, logos, and software, is the property of Dayananda Sagar University or its licensors.\n•\tUser-Generated Content: By submitting content to the App, you grant us a non-exclusive, worldwide, royalty-free license to use, reproduce, and distribute your content.\n5. Purchases and Payments\n•\tIn-App Purchases: The App may offer in-app purchases and subscriptions. All purchases are final and non-refundable, except as required by law.\n•\tPayment Processing: Payments are processed through third-party payment processors. We are not responsible for any issues related to payment processing.\n6. Privacy and Data Collection\n•\tData Collected: We collect personal data as described in our Privacy Policy.\n•\tUse of Data: We use your data to provide and improve our services. Data is used only for educational purposes and is stored with end-to-end encryption in the google firestore.\n7. Liability and Disclaimers\n•\tDisclaimer of Warranties: The App is provided \"as is\" without warranties of any kind. We do not guarantee that the App will be error-free or uninterrupted.\n•\tLimitation of Liability: To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, or consequential damages arising from your use of the App.\n8. Termination and Suspension of Services\n•\tTermination by User: You may terminate your account at any time by following the instructions within the App.\n•\tTermination by Us: We may suspend or terminate your account and access to the App if you violate these Terms.\n9. Governing Law and Dispute Resolution\n•\tJurisdiction: These Terms shall be governed by and construed in accordance with the laws of India.\n•\tDispute Resolution: Any disputes arising out of or relating to these Terms shall be resolved through binding arbitration in accordance with the rules of Arbitration and Conciliation Act, 1996.\n10. Changes to Terms and Conditions\n•\tAmendments: We reserve the right to modify these Terms at any time. Changes will be effective upon posting on the App. Your continued use of the App after changes are posted constitutes your acceptance of the new Terms.\n•\tNotification: We will notify users of significant changes to these Terms via email or through the App.\n11. Miscellaneous\n•\tSeverability: If any provision of these Terms is found to be invalid or unenforceable, the remaining provisions will remain in full force and effect.\n•\tEntire Agreement: These Terms constitute the entire agreement between you and Dayananda Sagar University regarding your use of the App.\nFor any questions or concerns about these Terms, please contact us at email :  ',
      'kn':
          '1.\tನಿಯಮಗಳ ಸ್ವೀಕಾರ\nCDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್‌ಗೆ ಸುಸ್ವಾಗತ. ನಮ್ಮ ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ (\"ಅಪ್ಲಿಕೇಶನ್\") ಅನ್ನು ಪ್ರವೇಶಿಸುವ ಮೂಲಕ ಅಥವಾ ಬಳಸುವ ಮೂಲಕ, ನೀವು ಈ ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳಿಗೆ (\"ನಿಯಮಗಳು\") ಬದ್ಧರಾಗಿರಲು ಒಪ್ಪುತ್ತೀರಿ. ನೀವು ಈ ನಿಯಮಗಳನ್ನು ಒಪ್ಪದಿದ್ದರೆ, ದಯವಿಟ್ಟು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸಬೇಡಿ.\n2.\tಬಳಕೆದಾರ ನೋಂದಣಿ ಮತ್ತು ಖಾತೆ ನಿರ್ವಹಣೆ\n•\tಖಾತೆ ರಚನೆ: ಅಪ್ಲಿಕೇಶನ್‌ನ ಕೆಲವು ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಪ್ರವೇಶಿಸಲು ಬಳಕೆದಾರರು ನೋಂದಾಯಿಸಿಕೊಳ್ಳಬೇಕಾಗಬಹುದು ಮತ್ತು ಖಾತೆಯನ್ನು ರಚಿಸಬೇಕಾಗಬಹುದು. ನೋಂದಣಿ ಸಮಯದಲ್ಲಿ ನಿಖರವಾದ ಮತ್ತು ಸಂಪೂರ್ಣ ಮಾಹಿತಿಯನ್ನು ಒದಗಿಸಲು ನೀವು ಒಪ್ಪುತ್ತೀರಿ.\n•\tಖಾತೆ ಭದ್ರತೆ: ನಿಮ್ಮ ಖಾತೆಯ ರುಜುವಾತುಗಳ ಗೌಪ್ಯತೆಯನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳಲು ಮತ್ತು ನಿಮ್ಮ ಖಾತೆಯ ಅಡಿಯಲ್ಲಿ ಸಂಭವಿಸುವ ಎಲ್ಲಾ ಚಟುವಟಿಕೆಗಳಿಗೆ ನೀವು ಜವಾಬ್ದಾರರಾಗಿರುತ್ತೀರಿ.\n•\tಖಾತೆಯ ಮುಕ್ತಾಯ: ನೀವು ಈ ನಿಯಮಗಳನ್ನು ಉಲ್ಲಂಘಿಸಿದರೆ ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಮಾನತುಗೊಳಿಸುವ ಅಥವಾ ಕೊನೆಗೊಳಿಸುವ ಹಕ್ಕನ್ನು ನಾವು ಕಾಯ್ದಿರಿಸಿದ್ದೇವೆ.\n3.\tಬಳಕೆದಾರರ ಜವಾಬ್ದಾರಿಗಳು ಮತ್ತು ನಡವಳಿಕೆ:\n•\tಸ್ವೀಕಾರಾರ್ಹ ಬಳಕೆ: ಅನ್ವಯವಾಗುವ ಎಲ್ಲಾ ಕಾನೂನುಗಳು ಮತ್ತು ನಿಬಂಧನೆಗಳಿಗೆ ಅನುಗುಣವಾಗಿ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸಲು ನೀವು ಒಪ್ಪುತ್ತೀರಿ. ಅಪ್ಲಿಕೇಶನ್ ಅಥವಾ ಅದರ ಬಳಕೆದಾರರಿಗೆ ಹಾನಿಯುಂಟುಮಾಡುವ ಯಾವುದೇ ಚಟುವಟಿಕೆಯಲ್ಲಿ ನೀವು ತೊಡಗಿಸಬಾರದು.\n•\tನಿಷೇಧಿತ ಚಟುವಟಿಕೆಗಳು: ಯಾವುದೇ ಹಾನಿಕಾರಕ, ಆಕ್ಷೇಪಾರ್ಹ ಅಥವಾ ಕಾನೂನುಬಾಹಿರ ವಿಷಯವನ್ನು ಪೋಸ್ಟ್ ಮಾಡಲು ಅಥವಾ ರವಾನಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸುವುದನ್ನು ನೀವು ನಿಷೇಧಿಸಲಾಗಿದೆ.\n4.\tವಿಷಯ ಮತ್ತು ಬೌದ್ಧಿಕ ಆಸ್ತಿ:\n•\tಮಾಲೀಕತ್ವ: ಪಠ್ಯ, ಗ್ರಾಫಿಕ್ಸ್, ಲೋಗೊಗಳು ಮತ್ತು ಸಾಫ್ಟ್‌ವೇರ್ ಸೇರಿದಂತೆ ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ನಾವು ಒದಗಿಸಿದ ಎಲ್ಲಾ ವಿಷಯಗಳು ದಯಾನಂದ ಸಾಗರ್ ವಿಶ್ವವಿದ್ಯಾಲಯ ಅಥವಾ ಅದರ ಪರವಾನಗಿದಾರರ ಆಸ್ತಿಯಾಗಿದೆ.    \n•\tಬಳಕೆದಾರ-ರಚಿಸಿದ ವಿಷಯ: ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ವಿಷಯವನ್ನು ಸಲ್ಲಿಸುವ ಮೂಲಕ, ನಿಮ್ಮ ವಿಷಯವನ್ನು ಬಳಸಲು, ಮರುಉತ್ಪಾದಿಸಲು ಮತ್ತು ವಿತರಿಸಲು ನೀವು ನಮಗೆ ವಿಶೇಷವಲ್ಲದ, ವಿಶ್ವಾದ್ಯಂತ, ರಾಯಲ್ಟಿ-ಮುಕ್ತ ಪರವಾನಗಿಯನ್ನು ನೀಡುತ್ತೀರಿ.\n5.\tಖರೀದಿಗಳು ಮತ್ತು ಪಾವತಿಗಳು:\n•\tಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಖರೀದಿಗಳು: ಅಪ್ಲಿಕೇಶನ್ ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಖರೀದಿಗಳು ಮತ್ತು ಚಂದಾದಾರಿಕೆಗಳನ್ನು ನೀಡಬಹುದು. ಕಾನೂನಿನ ಪ್ರಕಾರ ಹೊರತುಪಡಿಸಿ ಎಲ್ಲಾ ಖರೀದಿಗಳು ಅಂತಿಮ ಮತ್ತು ಮರುಪಾವತಿಸಲಾಗುವುದಿಲ್ಲ.\n•\tಪಾವತಿ ಪ್ರಕ್ರಿಯೆ: ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಪಾವತಿ ಸಂಸ್ಕಾರಕಗಳ ಮೂಲಕ ಪಾವತಿಗಳನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಲಾಗುತ್ತದೆ. ಪಾವತಿ ಪ್ರಕ್ರಿಯೆಗೆ ಸಂಬಂಧಿಸಿದ ಯಾವುದೇ ಸಮಸ್ಯೆಗಳಿಗೆ ನಾವು ಜವಾಬ್ದಾರರಾಗಿರುವುದಿಲ್ಲ.\n6.\tಗೌಪ್ಯತೆ ಮತ್ತು ಡೇಟಾ ಸಂಗ್ರಹಣೆ:\n•\tಸಂಗ್ರಹಿಸಲಾದ ಡೇಟಾ: ನಮ್ಮ ಗೌಪ್ಯತೆ ನೀತಿಯಲ್ಲಿ ವಿವರಿಸಿದಂತೆ ನಾವು ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ.\n•\tಡೇಟಾದ ಬಳಕೆ: ನಮ್ಮ ಸೇವೆಗಳನ್ನು ಒದಗಿಸಲು ಮತ್ತು ಸುಧಾರಿಸಲು ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಬಳಸುತ್ತೇವೆ. ಡೇಟಾವನ್ನು ಶೈಕ್ಷಣಿಕ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಮಾತ್ರ ಬಳಸಲಾಗುತ್ತದೆ ಮತ್ತು google firestore ನಲ್ಲಿ ಅಂತ್ಯದಿಂದ ಅಂತ್ಯದ ಎನ್‌ಕ್ರಿಪ್ಶನ್‌ನೊಂದಿಗೆ ಸಂಗ್ರಹಿಸಲಾಗುತ್ತದೆ.\n7.\tಹೊಣೆಗಾರಿಕೆ ಮತ್ತು ಹಕ್ಕು ನಿರಾಕರಣೆಗಳು:\n•\tವಾರಂಟಿಗಳ ಹಕ್ಕು ನಿರಾಕರಣೆ: ಯಾವುದೇ ರೀತಿಯ ವಾರಂಟಿಗಳಿಲ್ಲದೆ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು \"ಇರುವಂತೆ\" ಒದಗಿಸಲಾಗಿದೆ. ಅಪ್ಲಿಕೇಶನ್ ದೋಷ-ಮುಕ್ತ ಅಥವಾ ತಡೆರಹಿತವಾಗಿರುತ್ತದೆ ಎಂದು ನಾವು ಖಾತರಿ ನೀಡುವುದಿಲ್ಲ.\n•\tಹೊಣೆಗಾರಿಕೆಯ ಮಿತಿ: ಕಾನೂನಿನಿಂದ ಅನುಮತಿಸಲಾದ ಗರಿಷ್ಠ ಮಟ್ಟಿಗೆ, ನಿಮ್ಮ ಅಪ್ಲಿಕೇಶನ್‌ನ ಬಳಕೆಯಿಂದ ಉಂಟಾಗುವ ಯಾವುದೇ ಪರೋಕ್ಷ, ಪ್ರಾಸಂಗಿಕ ಅಥವಾ ಪರಿಣಾಮವಾಗಿ ಉಂಟಾಗುವ ಹಾನಿಗಳಿಗೆ ನಾವು ಜವಾಬ್ದಾರರಾಗಿರುವುದಿಲ್ಲ.\n8.\tಸೇವೆಗಳ ಮುಕ್ತಾಯ ಮತ್ತು ಅಮಾನತು:\n•\tಬಳಕೆದಾರರಿಂದ ಮುಕ್ತಾಯ: ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸುವ ಮೂಲಕ ನೀವು ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಕೊನೆಗೊಳಿಸಬಹುದು.\n•\tನಮ್ಮಿಂದ ಮುಕ್ತಾಯ: ನೀವು ಈ ನಿಯಮಗಳನ್ನು ಉಲ್ಲಂಘಿಸಿದರೆ ನಿಮ್ಮ ಖಾತೆ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಪ್ರವೇಶವನ್ನು ನಾವು ಅಮಾನತುಗೊಳಿಸಬಹುದು ಅಥವಾ ಕೊನೆಗೊಳಿಸಬಹುದು.\n9.\tಆಡಳಿತ ಕಾನೂನು ಮತ್ತು ವಿವಾದ ಪರಿಹಾರ\n•\tನ್ಯಾಯವ್ಯಾಪ್ತಿ: ಈ ನಿಯಮಗಳನ್ನು ಭಾರತದ ಕಾನೂನುಗಳಿಗೆ ಅನುಸಾರವಾಗಿ ನಿಯಂತ್ರಿಸಲಾಗುತ್ತದೆ ಮತ್ತು ಅರ್ಥೈಸಲಾಗುತ್ತದೆ.\n•\tವಿವಾದ ಪರಿಹಾರ: ಈ ನಿಯಮಗಳಿಂದ ಉಂಟಾಗುವ ಅಥವಾ ಸಂಬಂಧಿಸಿದ ಯಾವುದೇ ವಿವಾದಗಳನ್ನು ಮಧ್ಯಸ್ಥಿಕೆ ಮತ್ತು ಸಮನ್ವಯ ಕಾಯಿದೆ, 1996 ರ ನಿಯಮಗಳಿಗೆ ಅನುಸಾರವಾಗಿ ಬಂಧಿಸುವ ಮಧ್ಯಸ್ಥಿಕೆಯ ಮೂಲಕ ಪರಿಹರಿಸಲಾಗುತ್ತದೆ.\n10.\tನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳಿಗೆ ಬದಲಾವಣೆಗಳು:\n•\tತಿದ್ದುಪಡಿಗಳು: ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ಈ ನಿಯಮಗಳನ್ನು ಮಾರ್ಪಡಿಸುವ ಹಕ್ಕನ್ನು ನಾವು ಕಾಯ್ದಿರಿಸಿದ್ದೇವೆ. ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಪೋಸ್ಟ್ ಮಾಡಿದ ನಂತರ ಬದಲಾವಣೆಗಳು ಪರಿಣಾಮಕಾರಿಯಾಗಿರುತ್ತವೆ. ಬದಲಾವಣೆಗಳನ್ನು ಪೋಸ್ಟ್ ಮಾಡಿದ ನಂತರ ಅಪ್ಲಿಕೇಶನ್‌ನ ನಿಮ್ಮ ಮುಂದುವರಿದ ಬಳಕೆಯು ಹೊಸ ನಿಯಮಗಳನ್ನು ನೀವು ಒಪ್ಪಿಕೊಳ್ಳುತ್ತದೆ.\n•\tಅಧಿಸೂಚನೆ: ನಾವು ಇಮೇಲ್ ಮೂಲಕ ಅಥವಾ ಅಪ್ಲಿಕೇಶನ್ ಮೂಲಕ ಈ ನಿಯಮಗಳಿಗೆ ಗಮನಾರ್ಹ ಬದಲಾವಣೆಗಳನ್ನು ಬಳಕೆದಾರರಿಗೆ ಸೂಚಿಸುತ್ತೇವೆ.\n11.\tವಿವಿಧ:\n•\tಸೆವೆರೆಬಿಲಿಟಿ: ಈ ನಿಯಮಗಳ ಯಾವುದೇ ನಿಬಂಧನೆಯು ಅಮಾನ್ಯವಾಗಿದೆ ಅಥವಾ ಜಾರಿಗೊಳಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ ಎಂದು ಕಂಡುಬಂದರೆ, ಉಳಿದ ನಿಬಂಧನೆಗಳು ಪೂರ್ಣ ಬಲ ಮತ್ತು ಪರಿಣಾಮದಲ್ಲಿ ಉಳಿಯುತ್ತವೆ.\n•\tಸಂಪೂರ್ಣ ಒಪ್ಪಂದ: ಈ ನಿಯಮಗಳು ನಿಮ್ಮ ಮತ್ತು ದಯಾನಂದ ಸಾಗರ್ ವಿಶ್ವವಿದ್ಯಾನಿಲಯದ ನಡುವಿನ ನಿಮ್ಮ ಅಪ್ಲಿಕೇಶನ್‌ನ ಬಳಕೆಯ ಬಗ್ಗೆ ಸಂಪೂರ್ಣ ಒಪ್ಪಂದವನ್ನು ರೂಪಿಸುತ್ತವೆ.\nಈ ನಿಯಮಗಳ ಕುರಿತು ಯಾವುದೇ ಪ್ರಶ್ನೆಗಳು ಅಥವಾ ಕಾಳಜಿಗಳಿಗಾಗಿ, ದಯವಿಟ್ಟು ಇಮೇಲ್ ನಲ್ಲಿ ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ : ',
    },
    'r6ixcjq6': {
      'en': 'sldscreeningcdsimer@gmail.com',
      'kn': 'sldscreeningcdsimer@gmail.com',
    },
    'zav5n30d': {
      'en':
          'At CDSIMER SLD Screening (Developer) App, accessible from, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by CDSIMER SLD Screening and how we use it.\nThis page is used to inform visitors regarding the application policies regarding the collection, use, and disclosure of Personal Information if anyone decided to use this application’s service.\nThis Privacy Policy applies only to our online activities and is valid for visitors to our App with regards to the information that they shared and/or collect in. This policy is not applicable to any information collected offline or via channels other than this App.\nOur mobile application is designed for teachers to screen children aged 4 to 9 years for specific learning disabilities (SLDs). Children identified as at risk of SLD will be referred for further management to improve their learning outcomes. The app is currently in beta form and will undergo pilot testing with teachers for feasibility. Our next step involves validation, which will occur once we secure a fresh grant (anticipated within the next 2-3 months). \nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\nInformation we collect\nInformation You Provide, when you register to the App, use it, complete forms, participate in skills tests or surveys, or use the App as collaborator, and/or register to our affiliate or influencer or similar program, we ask you to provide certain personal information, including a valid email address. We will also ask you to provide or otherwise collect additional information, such as, Name of the child, age of the child, Gender of the child, Address of school, Name of the teacher or other contact details, transactional information, payment information (for example, in certain cases we process your payment method and credit card number), and additional authentication information (such as copies of your government issued ID, passport, or driving license, as permitted by applicable laws and as detailed in our Seller Help Center at “Verifying Your Identity”). We also collect information about or contained in your communications with CDSIMER SLD Screening as well as any of your posts on our blogs or forums and your communication with other users of CDSIMER SLD Screening.\nInformation We Collect Automatically\n We collect information while you access, browse, view or otherwise use the App. In other words, when you access the App we collect personal information on your usage of the App, including transactions and communications with other users through the App, your searches, the pages you visited, as well as other actions on App. We also, collect, use and process the information relating to such usage, including geo-location information, IP address, device and connection information, browser information and web-log information, and the URLs of the web pages you’ve viewed or engaged with before or after using the App. We also collect and process information relating to the use of cookies and similar technologies, as detailed below. We use that information to provide you our services, enhance user experience, personalize your browsing experience as well as monitor the App for preventing fraud and inappropriate content or behavior.\nAdditionally, in order to improve your online experience at CDSIMER SLD Screening, we have implemented impression reporting. While you view our ads, we gather user Global Unique Identifier, HTTP request data like, user agent, IP, host, URL, country/continent from which request made, browser info, device/operating system/operating system version.\nThe personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.\nIf you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.\nWhen you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\nHow Do We Use the Information Collected?\nWe will use your personal information for the following purposes:\n• To provide you with quality service and security, to operate the App, to perform our obligations to you and to develop and improve our service. For example, we use personal information to verify your identity. We also use this information to establish and set up your account, verify or re-issue a password, log your activity, enable your communications with other members, provide customer support and contact you from time to time. The information helps us to develop and improve our services, to understand and analyses our performance as well as your preferences and performance and to customize and personalize our service and enhance your experience (including by making Gig suggestions, ranking search results, etc.).\n•\tTo ensure marketplace integrity, prevent fraud and maintain a safe and secure marketplace and services. For example, we use personal information to monitor, track and prevent fraudulent activities and other inappropriate activities, monitor content integrity, conduct security investigations and risk assessments, verify or authenticate information provided by you, enforce our Terms of Service and comply with applicable laws. We conduct certain behavioral analytics to achieve the above objectives and in limited cases, if we detect activity that we think poses a risk to the CDSIMER SLD Screening marketplace, other users, our community, or third parties, automated processes may restrict or limit your ability to use CDSIMER SLD Screening. If you would like to challenge any such decision, please contact us at anandmeundi@yahoo.com. \n•\tTo contact you, as requested by you or as otherwise approved by you or permitted according to this Policy.\n•\tTo promote and advertise the App, our services and the CDSIMER SLD Screening marketplace. For example, we use the information collected from you for the purpose of sending direct marketing messages (as detailed below), to show you information that may be of interest to you, to organize and facilitate referral programs, contests or other promotional activities or events.\n•\tWe use your personal information to send you direct marketing communications about our products, services or promotions from CDSIMER SLD Screening that may be of interest to you or our related services. This may be via email, post, SMS, telephone or targeted online advertisements.\nHow Long Do We Keep Personal Information?\nWe apply a general rule of keeping personal information only for as long as is required to fulfil the purpose for which it was collected. However, in some circumstances, we will retain your personal information for longer periods of time. We will retain personal information for the following purposes:\n•\tAs long as it is necessary and relevant for our operations, e.g. so that we have an accurate record of your dealings with us in the event of any complaints or challenge; and\n•\tIn relation to personal information from closed accounts to comply with applicable laws, prevent fraud, collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigation, enforce our App terms and take other actions as permitted by law.\nSecurity\nYour trust is being valued for providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and it cannot be guaranteed its absolute security.\nWe have implemented robust data encryption protocols to ensure that only administrators or their authorized representatives can access data, and only to the extent appropriate to their level of authorization. This measure protects the confidentiality and integrity of your data, ensuring that it remains secure and accessible only to those with proper authorization.\nLog Data\nThis is to inform you that whenever you use CDSIMER SLD Screening App. services, in case of an error in the App, the collected data and information (through third-party products) on your phone is called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the App when utilizing my Service, the time and date of your use of the Service, and other statistics.\nCookies\nWe use cookies and similar technologies (such as web beacons, pixels, tags, and scripts) to improve and personalize your experience, provide our services, analyze App performance and for marketing purposes.\nThis Service does not use these “cookies” explicitly. However, the App may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nUse of the Platform by the Child\nYou expressly acknowledge and undertake that:\n\tYou are competent and have all the necessary legal rights to enter into this agreement on behalf of the child.\n\tYou grant your consent to the Developer for your child to attend and participate in the classes, courses, tests, sessions, and/or any other program conducted and/or organized by the Institutions that developers are tied up with or schools or developers on its Platform and in relation to the services provided by the developers.\n\tYou undertake that the participation of the Child and all the activities done by the Child will be under your direct and constant supervision.\n\tYou further accept full and complete liability arising out of the child’s acts, whether direct or indirect.\n\nChanges to This Privacy Policy\n The Privacy Policy may get updated from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of ____________\nContact Us\nIf you have any questions or suggestions about my Privacy Policy, do not hesitate to contact us at anandmeundi@yahoo.com. \n',
      'kn': '',
    },
    '2euw3rog': {
      'en': 'Cancel',
      'kn': 'ರದ್ದುಮಾಡು',
    },
  },
  // PrivacyPolicy
  {
    '7nyggqxb': {
      'en': 'Privacy Policy',
      'kn': 'ಗೌಪ್ಯತೆ ನೀತಿ',
    },
    'l8zrpxyb': {
      'en':
          'At CDSIMER SLD Screening (Developer) App, accessible from, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by CDSIMER SLD Screening and how we use it.\nThis page is used to inform visitors regarding the application policies regarding the collection, use, and disclosure of Personal Information if anyone decided to use this application’s service.\nThis Privacy Policy applies only to our online activities and is valid for visitors to our App with regards to the information that they shared and/or collect in. This policy is not applicable to any information collected offline or via channels other than this App.\nOur mobile application is designed for teachers to screen children aged 4 to 9 years for specific learning disabilities (SLDs). Children identified as at risk of SLD will be referred for further management to improve their learning outcomes. The app is currently in beta form and will undergo pilot testing with teachers for feasibility. Our next step involves validation, which will occur once we secure a fresh grant (anticipated within the next 2-3 months). \nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\nInformation we collect\nInformation You Provide, when you register to the App, use it, complete forms, participate in skills tests or surveys, or use the App as collaborator, and/or register to our affiliate or influencer or similar program, we ask you to provide certain personal information, including a valid email address. We will also ask you to provide or otherwise collect additional information, such as, Name of the child, age of the child, Gender of the child, Address of school, Name of the teacher or other contact details, transactional information, payment information (for example, in certain cases we process your payment method and credit card number), and additional authentication information (such as copies of your government issued ID, passport, or driving license, as permitted by applicable laws and as detailed in our Seller Help Center at “Verifying Your Identity”). We also collect information about or contained in your communications with CDSIMER SLD Screening as well as any of your posts on our blogs or forums and your communication with other users of CDSIMER SLD Screening.\nInformation We Collect Automatically\n We collect information while you access, browse, view or otherwise use the App. In other words, when you access the App we collect personal information on your usage of the App, including transactions and communications with other users through the App, your searches, the pages you visited, as well as other actions on App. We also, collect, use and process the information relating to such usage, including geo-location information, IP address, device and connection information, browser information and web-log information, and the URLs of the web pages you’ve viewed or engaged with before or after using the App. We also collect and process information relating to the use of cookies and similar technologies, as detailed below. We use that information to provide you our services, enhance user experience, personalize your browsing experience as well as monitor the App for preventing fraud and inappropriate content or behavior.\nAdditionally, in order to improve your online experience at CDSIMER SLD Screening, we have implemented impression reporting. While you view our ads, we gather user Global Unique Identifier, HTTP request data like, user agent, IP, host, URL, country/continent from which request made, browser info, device/operating system/operating system version.\nThe personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.\nIf you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.\nWhen you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\nHow Do We Use the Information Collected?\nWe will use your personal information for the following purposes:\n• To provide you with quality service and security, to operate the App, to perform our obligations to you and to develop and improve our service. For example, we use personal information to verify your identity. We also use this information to establish and set up your account, verify or re-issue a password, log your activity, enable your communications with other members, provide customer support and contact you from time to time. The information helps us to develop and improve our services, to understand and analyses our performance as well as your preferences and performance and to customize and personalize our service and enhance your experience (including by making Gig suggestions, ranking search results, etc.).\n•\tTo ensure marketplace integrity, prevent fraud and maintain a safe and secure marketplace and services. For example, we use personal information to monitor, track and prevent fraudulent activities and other inappropriate activities, monitor content integrity, conduct security investigations and risk assessments, verify or authenticate information provided by you, enforce our Terms of Service and comply with applicable laws. We conduct certain behavioral analytics to achieve the above objectives and in limited cases, if we detect activity that we think poses a risk to the CDSIMER SLD Screening marketplace, other users, our community, or third parties, automated processes may restrict or limit your ability to use CDSIMER SLD Screening. If you would like to challenge any such decision, please contact us at anandmeundi@yahoo.com. \n•\tTo contact you, as requested by you or as otherwise approved by you or permitted according to this Policy.\n•\tTo promote and advertise the App, our services and the CDSIMER SLD Screening marketplace. For example, we use the information collected from you for the purpose of sending direct marketing messages (as detailed below), to show you information that may be of interest to you, to organize and facilitate referral programs, contests or other promotional activities or events.\n•\tWe use your personal information to send you direct marketing communications about our products, services or promotions from CDSIMER SLD Screening that may be of interest to you or our related services. This may be via email, post, SMS, telephone or targeted online advertisements.\nHow Long Do We Keep Personal Information?\nWe apply a general rule of keeping personal information only for as long as is required to fulfil the purpose for which it was collected. However, in some circumstances, we will retain your personal information for longer periods of time. We will retain personal information for the following purposes:\n•\tAs long as it is necessary and relevant for our operations, e.g. so that we have an accurate record of your dealings with us in the event of any complaints or challenge; and\n•\tIn relation to personal information from closed accounts to comply with applicable laws, prevent fraud, collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigation, enforce our App terms and take other actions as permitted by law.\nSecurity\nYour trust is being valued for providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and it cannot be guaranteed its absolute security.\nWe have implemented robust data encryption protocols to ensure that only administrators or their authorized representatives can access data, and only to the extent appropriate to their level of authorization. This measure protects the confidentiality and integrity of your data, ensuring that it remains secure and accessible only to those with proper authorization.\nLog Data\nThis is to inform you that whenever you use CDSIMER SLD Screening App. services, in case of an error in the App, the collected data and information (through third-party products) on your phone is called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the App when utilizing my Service, the time and date of your use of the Service, and other statistics.\nCookies\nWe use cookies and similar technologies (such as web beacons, pixels, tags, and scripts) to improve and personalize your experience, provide our services, analyze App performance and for marketing purposes.\nThis Service does not use these “cookies” explicitly. However, the App may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nUse of the Platform by the Child\nYou expressly acknowledge and undertake that:\n\tYou are competent and have all the necessary legal rights to enter into this agreement on behalf of the child.\n\tYou grant your consent to the Developer for your child to attend and participate in the classes, courses, tests, sessions, and/or any other program conducted and/or organized by the Institutions that developers are tied up with or schools or developers on its Platform and in relation to the services provided by the developers.\n\tYou undertake that the participation of the Child and all the activities done by the Child will be under your direct and constant supervision.\n\tYou further accept full and complete liability arising out of the child’s acts, whether direct or indirect.\n\nChanges to This Privacy Policy\n The Privacy Policy may get updated from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of ____________\nContact Us\nIf you have any questions or suggestions about my Privacy Policy, do not hesitate to contact us at : ',
      'kn':
          'CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ (ಡೆವಲಪರ್) ಎಂಬ ಅಪ್ಲಿಕೇಶನ್ ನಮ್ಮ ಸಂದರ್ಶಕರ ಗೌಪ್ಯತೆಯನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳುವ ಗುರಿಯನ್ನು ಹೊಂದಿರುವ ಅಪ್ಲಿಕೇಶನ್ ಆಗಿದೆ. ಈ ಗೌಪ್ಯತಾ ನೀತಿ ಡಾಕ್ಯುಮೆಂಟ್ CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ ಮೂಲಕ ಸಂಗ್ರಹಿಸಿದ ಮತ್ತು ರೆಕಾರ್ಡ್ ಮಾಡಲಾದ ಮಾಹಿತಿಯನ್ನು ಮತ್ತು ಅದನ್ನು ಹೇಗೆ ಬಳಸುವುದು ಎಂಬುದನ್ನು ಒಳಗೊಂಡಿದೆ.\nಯಾರಾದರೂ ಈ ಅಪ್ಲಿಕೇಶನ್‌ನ ಸೇವೆಯನ್ನು ಬಳಸಲು ನಿರ್ಧರಿಸಿದರೆ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯ ಸಂಗ್ರಹಣೆ, ಬಳಕೆ ಮತ್ತು ಬಹಿರಂಗಪಡಿಸುವಿಕೆಗೆ ಸಂಬಂಧಿಸಿದಂತೆ ಅಪ್ಲಿಕೇಶನ್ ನೀತಿಗಳ ಕುರಿತು ಸಂದರ್ಶಕರಿಗೆ ತಿಳಿಸಲು ಈ ಪುಟವನ್ನು ಬಳಸಲಾಗುತ್ತದೆ.\nಈ ಗೌಪ್ಯತಾ ನೀತಿಯು ನಮ್ಮ ಆನ್‌ಲೈನ್ ಚಟುವಟಿಕೆಗಳಿಗೆ ಮಾತ್ರ ಅನ್ವಯಿಸುತ್ತದೆ ಮತ್ತು ನಮ್ಮ ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಭೇಟಿ ನೀಡುವವರು ಅವರು ಹಂಚಿಕೊಂಡ ಮತ್ತು/ಅಥವಾ ಸಂಗ್ರಹಿಸುವ ಮಾಹಿತಿಗೆ ಸಂಬಂಧಿಸಿದಂತೆ ಮಾನ್ಯವಾಗಿರುತ್ತದೆ. ಈ ಅಪ್ಲಿಕೇಶನ್ ಹೊರತುಪಡಿಸಿ ಆಫ್‌ಲೈನ್ ಅಥವಾ ಚಾನಲ್‌ಗಳ ಮೂಲಕ ಸಂಗ್ರಹಿಸಲಾದ ಯಾವುದೇ ಮಾಹಿತಿಗೆ ಈ ನೀತಿಯು ಅನ್ವಯಿಸುವುದಿಲ್ಲ.\nನಮ್ಮ ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ 4 ರಿಂದ 9 ವರ್ಷ ವಯಸ್ಸಿನ ವಿಕಲಚೇತನ ಮಕ್ಕಳಿಗೆ ನಿರ್ದಿಷ್ಟ ಕಲಿಕೆಯಲ್ಲಿ  ಪರೀಕ್ಷಿಸಲು(SLDs) ಶಿಕ್ಷಕರಿಗೆ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ. SLD ಅಪಾಯದಲ್ಲಿರುವ ಮಕ್ಕಳನ್ನು ಅವರ ಕಲಿಕೆಯ ಫಲಿತಾಂಶಗಳನ್ನು ಸುಧಾರಿಸಲು ಹೆಚ್ಚಿನ ನಿರ್ವಹಣೆಗಾಗಿ ಉಲ್ಲೇಖಿಸಲಾಗುತ್ತದೆ. ಅಪ್ಲಿಕೇಶನ್ ಪ್ರಸ್ತುತ ಬೀಟಾ ರೂಪದಲ್ಲಿದೆ ಮತ್ತು ಕಾರ್ಯಸಾಧ್ಯತೆಗಾಗಿ ಶಿಕ್ಷಕರೊಂದಿಗೆ ಪ್ರಾಯೋಗಿಕ ಪರೀಕ್ಷೆಗೆ ಒಳಗಾಗುತ್ತದೆ. ನಾವು ಹೊಸ ಅನುದಾನವನ್ನು ಪಡೆದುಕೊಂಡ ನಂತರ ನಮ್ಮ ಮುಂದಿನ ಹಂತವು ಊರ್ಜಿತಗೊಳಿಸುವಿಕೆಯನ್ನು (validation) ಒಳಗೊಂಡಿರುತ್ತದೆ, ಇದು (ಮುಂದಿನ 2-3 ತಿಂಗಳೊಳಗೆ ನಿರೀಕ್ಷಿಸಲಾಗಿದೆ).\nನೀವು ಹೆಚ್ಚುವರಿ ಪ್ರಶ್ನೆಗಳನ್ನು ಹೊಂದಿದ್ದರೆ ಅಥವಾ ನಮ್ಮ ಗೌಪ್ಯತೆ ನೀತಿಯ ಕುರಿತು ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಅಗತ್ಯವಿದ್ದರೆ, ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಲು ಹಿಂಜರಿಯಬೇಡಿ.\n\nನಾವು ಸಂಗ್ರಹಿಸುವ ಮಾಹಿತಿ:\nನೀವು ಒದಗಿಸುವ ಮಾಹಿತಿ, ನೀವು ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ನೋಂದಾಯಿಸಿದಾಗ, ಅದನ್ನು ಬಳಸಿ, ಫಾರ್ಮ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದಾಗ, ಕೌಶಲ್ಯ ಪರೀಕ್ಷೆಗಳು ಅಥವಾ ಸಮೀಕ್ಷೆಗಳಲ್ಲಿ ಭಾಗವಹಿಸಿ, ಅಥವಾ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಸಹಯೋಗಿಯಾಗಿ ಬಳಸಿ, ಮತ್ತು/ಅಥವಾ ನಮ್ಮ ಅಂಗಸಂಸ್ಥೆ ಅಥವಾ ಪ್ರಭಾವಿ ಅಥವಾ ಅಂತಹುದೇ ಪ್ರೋಗ್ರಾಂಗೆ ನೋಂದಾಯಿಸಿದಾಗ, ನಾವು ನಿಮಗೆ ನಿರ್ದಿಷ್ಟವಾಗಿ ಒದಗಿಸಲು ಕೇಳುತ್ತೇವೆ ಮಾನ್ಯ ಇಮೇಲ್ ವಿಳಾಸ ಸೇರಿದಂತೆ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿ, ಮಗುವಿನ ಹೆಸರು, ಮಗುವಿನ ವಯಸ್ಸು, ಮಗುವಿನ ಲಿಂಗ, ಶಾಲೆಯ ವಿಳಾಸ, ಶಿಕ್ಷಕರ ಹೆಸರು ಅಥವಾ ಇತರ ಸಂಪರ್ಕ ವಿವರಗಳು, ವಹಿವಾಟಿನ ಮಾಹಿತಿ, ಪಾವತಿ ಮಾಹಿತಿಯಂತಹ ಹೆಚ್ಚುವರಿ ಮಾಹಿತಿಯನ್ನು ಒದಗಿಸಲು ಅಥವಾ ಸಂಗ್ರಹಿಸಲು ನಾವು ನಿಮ್ಮನ್ನು ಕೇಳುತ್ತೇವೆ ( ಉದಾಹರಣೆಗೆ, ಕೆಲವು ಸಂದರ್ಭಗಳಲ್ಲಿ ನಾವು ನಿಮ್ಮ ಪಾವತಿ ವಿಧಾನ ಮತ್ತು ಕ್ರೆಡಿಟ್ ಕಾರ್ಡ್ ಸಂಖ್ಯೆಯನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುತ್ತೇವೆ), ಮತ್ತು ಹೆಚ್ಚುವರಿ ದೃಢೀಕರಣ ಮಾಹಿತಿಯನ್ನು (ನಿಮ್ಮ ಸರ್ಕಾರ ನೀಡಿದ ಐಡಿ, ಪಾಸ್‌ಪೋರ್ಟ್ ಅಥವಾ ಡ್ರೈವಿಂಗ್ ಲೈಸೆನ್ಸ್‌ನ ಪ್ರತಿಗಳು, ಅನ್ವಯವಾಗುವ ಕಾನೂನುಗಳಿಂದ ಅನುಮತಿಸಿದಂತೆ ಮತ್ತು ನಮ್ಮ ಮಾರಾಟಗಾರರ ಸಹಾಯ ಕೇಂದ್ರದಲ್ಲಿ ವಿವರಿಸಿದಂತೆ \"ನಿಮ್ಮ ಗುರುತನ್ನು ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ\" ನಲ್ಲಿ). CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್‌ನೊಂದಿಗಿನ ನಿಮ್ಮ ಸಂವಹನಗಳ ಜೊತೆಗೆ ನಮ್ಮ ಬ್ಲಾಗ್‌ಗಳು ಅಥವಾ ಫೋರಮ್‌ಗಳಲ್ಲಿನ ನಿಮ್ಮ ಯಾವುದೇ ಪೋಸ್ಟ್‌ಗಳು ಮತ್ತು CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್‌ನ ಇತರ ಬಳಕೆದಾರರೊಂದಿಗೆ ನಿಮ್ಮ ಸಂವಹನದ ಕುರಿತು ನಾವು ಮಾಹಿತಿಯನ್ನು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ.\n\nನಾವು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಸಂಗ್ರಹಿಸುವ ಮಾಹಿತಿ:\nನೀವು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಪ್ರವೇಶಿಸುವಾಗ, ಬ್ರೌಸ್ ಮಾಡುವಾಗ, ವೀಕ್ಷಿಸುವಾಗ ಅಥವಾ ಬಳಸುವಾಗ ನಾವು ಮಾಹಿತಿಯನ್ನು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ. ಬೇರೆ ರೀತಿಯಲ್ಲಿ ಹೇಳುವುದಾದರೆ, ನೀವು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಪ್ರವೇಶಿಸಿದಾಗ, ಅಪ್ಲಿಕೇಶನ್‌ನ ಮೂಲಕ ಇತರ ಬಳಕೆದಾರರೊಂದಿಗೆ ವ್ಯವಹಾರಗಳು ಮತ್ತು ಸಂವಹನಗಳು, ನಿಮ್ಮ ಹುಡುಕಾಟಗಳು, ನೀವು ಭೇಟಿ ನೀಡಿದ ಪುಟಗಳು ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿನ ಇತರ ಕ್ರಿಯೆಗಳು ಸೇರಿದಂತೆ ನಿಮ್ಮ ಅಪ್ಲಿಕೇಶನ್‌ನ ಬಳಕೆಯ ಕುರಿತು ನಾವು ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ. ಭೌಗೋಳಿಕ ಸ್ಥಳ ಮಾಹಿತಿ, IP ವಿಳಾಸ, ಸಾಧನ ಮತ್ತು ಸಂಪರ್ಕ ಮಾಹಿತಿ, ಬ್ರೌಸರ್ ಮಾಹಿತಿ ಮತ್ತು ವೆಬ್-ಲಾಗ್ ಮಾಹಿತಿ ಮತ್ತು ನೀವು ವೀಕ್ಷಿಸಿದ ಅಥವಾ ತೊಡಗಿಸಿಕೊಂಡಿರುವ ವೆಬ್ ಪುಟಗಳ URL ಗಳು ಸೇರಿದಂತೆ ಅಂತಹ ಬಳಕೆಗೆ ಸಂಬಂಧಿಸಿದ ಮಾಹಿತಿಯನ್ನು ನಾವು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ, ಬಳಸುತ್ತೇವೆ ಮತ್ತು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುತ್ತೇವೆ ಅಪ್ಲಿಕೇಶನ್ ಬಳಸುವ ಮೊದಲು ಅಥವಾ ನಂತರ. ಕೆಳಗೆ ವಿವರಿಸಿದಂತೆ ಕುಕೀಗಳು ಮತ್ತು ಅಂತಹುದೇ ತಂತ್ರಜ್ಞಾನಗಳ ಬಳಕೆಗೆ ಸಂಬಂಧಿಸಿದ ಮಾಹಿತಿಯನ್ನು ನಾವು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ ಮತ್ತು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುತ್ತೇವೆ. ನಿಮಗೆ ನಮ್ಮ ಸೇವೆಗಳನ್ನು ಒದಗಿಸಲು, ಬಳಕೆದಾರರ ಅನುಭವವನ್ನು ಹೆಚ್ಚಿಸಲು, ನಿಮ್ಮ ಬ್ರೌಸಿಂಗ್ ಅನುಭವವನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ವಂಚನೆ ಮತ್ತು ಅನುಚಿತ ವಿಷಯ ಅಥವಾ ನಡವಳಿಕೆಯನ್ನು ತಡೆಗಟ್ಟಲು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಲು ನಾವು ಆ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ.\n\nಹೆಚ್ಚುವರಿಯಾಗಿ, CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್‌ನಲ್ಲಿ ನಿಮ್ಮ ಆನ್‌ಲೈನ್ ಅನುಭವವನ್ನು ಸುಧಾರಿಸಲು, ನಾವು ಇಂಪ್ರೆಶನ್ ವರದಿ ಮಾಡುವಿಕೆಯನ್ನು ಅಳವಡಿಸಿದ್ದೇವೆ. ನೀವು ನಮ್ಮ ಜಾಹೀರಾತುಗಳನ್ನು ವೀಕ್ಷಿಸುವಾಗ, ನಾವು ಬಳಕೆದಾರರ ಜಾಗತಿಕ ವಿಶಿಷ್ಟ ಗುರುತಿಸುವಿಕೆ, HTTP ವಿನಂತಿ ಡೇಟಾ, ಬಳಕೆದಾರ ಏಜೆಂಟ್, IP, ಹೋಸ್ಟ್, URL, ವಿನಂತಿಯನ್ನು ಮಾಡಿದ ದೇಶ/ಖಂಡ, ಬ್ರೌಸರ್ ಮಾಹಿತಿ, ಸಾಧನ/ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್/ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಆವೃತ್ತಿಯನ್ನು ಸಂಗ್ರಹಿಸುತ್ತೇವೆ.\nನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಒದಗಿಸಲು ನಾವು ನಿಮ್ಮನ್ನು ಕೇಳುವ ಹಂತದಲ್ಲಿ ನಿಮಗೆ ಒದಗಿಸಲು ಕೇಳಲಾದ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿ ಮತ್ತು ಅದನ್ನು ಏಕೆ ನೀಡಲು ನಿಮ್ಮನ್ನು ಕೇಳಲಾಗುತ್ತದೆ ಎಂಬುದನ್ನು ನಿಮಗೆ ಸ್ಪಷ್ಟಪಡಿಸಲಾಗುತ್ತದೆ.\nನೀವು ನಮ್ಮನ್ನು ನೇರವಾಗಿ ಸಂಪರ್ಕಿಸಿದರೆ, ನಿಮ್ಮ ಹೆಸರು, ಇಮೇಲ್ ವಿಳಾಸ, ಫೋನ್ ಸಂಖ್ಯೆ, ಸಂದೇಶದ ವಿಷಯಗಳು ಮತ್ತು/ಅಥವಾ ನೀವು ನಮಗೆ ಕಳುಹಿಸಬಹುದಾದ ಲಗತ್ತುಗಳು ಮತ್ತು ನೀವು ಒದಗಿಸಲು ಆಯ್ಕೆಮಾಡುವ ಯಾವುದೇ ಇತರ ಮಾಹಿತಿಯಂತಹ ನಿಮ್ಮ ಕುರಿತು ಹೆಚ್ಚುವರಿ ಮಾಹಿತಿಯನ್ನು ನಾವು ಪಡೆಯಬಹುದು.\nನೀವು ಖಾತೆಗಾಗಿ ನೋಂದಾಯಿಸಿದಾಗ, ಹೆಸರು, ಕಂಪನಿಯ ಹೆಸರು, ವಿಳಾಸ, ಇಮೇಲ್ ವಿಳಾಸ ಮತ್ತು ದೂರವಾಣಿ ಸಂಖ್ಯೆಯಂತಹ ಐಟಂಗಳನ್ನು ಒಳಗೊಂಡಂತೆ ನಿಮ್ಮ ಸಂಪರ್ಕ ಮಾಹಿತಿಯನ್ನು ನಾವು ಕೇಳಬಹುದು.\n\nಸಂಗ್ರಹಿಸಿದ ಮಾಹಿತಿಯನ್ನು ನಾವು ಹೇಗೆ ಬಳಸುತ್ತೇವೆ?\nಕೆಳಗಿನ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನಾವು ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ:\nನಿಮಗೆ ಗುಣಮಟ್ಟದ ಸೇವೆ ಮತ್ತು ಭದ್ರತೆಯನ್ನು ಒದಗಿಸಲು, ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ನಿರ್ವಹಿಸಲು, ನಿಮಗೆ ನಮ್ಮ ಜವಾಬ್ದಾರಿಗಳನ್ನು ನಿರ್ವಹಿಸಲು ಮತ್ತು ನಮ್ಮ ಸೇವೆಯನ್ನು ಅಭಿವೃದ್ಧಿಪಡಿಸಲು ಮತ್ತು ಸುಧಾರಿಸಲು. ಉದಾಹರಣೆಗೆ, ನಿಮ್ಮ ಗುರುತನ್ನು ಪರಿಶೀಲಿಸಲು ನಾವು ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ. ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಸ್ಥಾಪಿಸಲು ಮತ್ತು ಹೊಂದಿಸಲು, ಪಾಸ್‌ವರ್ಡ್ ಅನ್ನು ಪರಿಶೀಲಿಸಲು ಅಥವಾ ಮರು-ನೀಡಲು, ನಿಮ್ಮ ಚಟುವಟಿಕೆಯನ್ನು ಲಾಗ್ ಮಾಡಲು, ಇತರ ಸದಸ್ಯರೊಂದಿಗೆ ನಿಮ್ಮ ಸಂವಹನಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲು, ಗ್ರಾಹಕ ಬೆಂಬಲವನ್ನು ಒದಗಿಸಲು ಮತ್ತು ಕಾಲಕಾಲಕ್ಕೆ ನಿಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಲು ನಾವು ಈ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ. ನಮ್ಮ ಸೇವೆಗಳನ್ನು ಅಭಿವೃದ್ಧಿಪಡಿಸಲು ಮತ್ತು ಸುಧಾರಿಸಲು, ನಮ್ಮ ಕಾರ್ಯಕ್ಷಮತೆ ಮತ್ತು ನಿಮ್ಮ ಆದ್ಯತೆಗಳು ಮತ್ತು ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ಮತ್ತು ವಿಶ್ಲೇಷಿಸಲು ಮತ್ತು ನಮ್ಮ ಸೇವೆಯನ್ನು ಕಸ್ಟಮೈಸ್ ಮಾಡಲು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ನಿಮ್ಮ ಅನುಭವವನ್ನು ವರ್ಧಿಸಲು ಮಾಹಿತಿಯು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ (ಗಿಗ್ ಸಲಹೆಗಳನ್ನು ಮಾಡುವ ಮೂಲಕ, ಶ್ರೇಯಾಂಕ (ranking), ಹುಡುಕಾಟ ಫಲಿತಾಂಶಗಳು, ಇತ್ಯಾದಿ ಒಳಗೊಂಡಿದೆ.).\n•\tಮಾರುಕಟ್ಟೆ ಸ್ಥಳದ ಸಮಗ್ರತೆಯನ್ನು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಲು, ವಂಚನೆಯನ್ನು ತಡೆಗಟ್ಟಲು ಮತ್ತು ಸುರಕ್ಷಿತ ಮತ್ತು ಸುರಕ್ಷಿತ ಮಾರುಕಟ್ಟೆ ಮತ್ತು ಸೇವೆಗಳನ್ನು ನಿರ್ವಹಿಸಲು. ಉದಾಹರಣೆಗೆ, ಮೋಸದ ಚಟುವಟಿಕೆಗಳು ಮತ್ತು ಇತರ ಅನುಚಿತ ಚಟುವಟಿಕೆಗಳನ್ನು ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಲು, ಟ್ರ್ಯಾಕ್ ಮಾಡಲು ಮತ್ತು ತಡೆಗಟ್ಟಲು, ವಿಷಯ ಸಮಗ್ರತೆಯನ್ನು ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಲು, ಭದ್ರತಾ ತನಿಖೆಗಳು ಮತ್ತು ಅಪಾಯದ ಮೌಲ್ಯಮಾಪನಗಳನ್ನು ನಡೆಸಲು, ನೀವು ಒದಗಿಸಿದ ಮಾಹಿತಿಯನ್ನು ಪರಿಶೀಲಿಸಲು ಅಥವಾ ದೃಢೀಕರಿಸಲು, ನಮ್ಮ ಸೇವಾ ನಿಯಮಗಳನ್ನು ಜಾರಿಗೊಳಿಸಲು ಮತ್ತು ಅನ್ವಯಿಸುವ ಕಾನೂನುಗಳನ್ನು ಅನುಸರಿಸಲು ನಾವು ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ. ಮೇಲಿನ ಉದ್ದೇಶಗಳನ್ನು ಸಾಧಿಸಲು ನಾವು ಕೆಲವು ನಡವಳಿಕೆಯ ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ನಡೆಸುತ್ತೇವೆ ಮತ್ತು ಸೀಮಿತ ಸಂದರ್ಭಗಳಲ್ಲಿ, CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ ಮಾರುಕಟ್ಟೆ, ಇತರ ಬಳಕೆದಾರರು, ನಮ್ಮ ಸಮುದಾಯ ಅಥವಾ ಮೂರನೇ ವ್ಯಕ್ತಿಗಳಿಗೆ ಅಪಾಯವನ್ನುಂಟುಮಾಡುವ ಚಟುವಟಿಕೆಯನ್ನು ನಾವು ಪತ್ತೆ ಮಾಡಿದರೆ, ಸ್ವಯಂಚಾಲಿತ ಪ್ರಕ್ರಿಯೆಗಳು ನಿಮ್ಮ ಸಾಮರ್ಥ್ಯವನ್ನು ನಿರ್ಬಂಧಿಸಬಹುದು ಅಥವಾ ಮಿತಿಗೊಳಿಸಬಹುದು. CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅನ್ನು ಬಳಸಲು. ಅಂತಹ ಯಾವುದೇ ನಿರ್ಧಾರವನ್ನು ನೀವು ಪ್ರಶ್ನಿಸಲು ಬಯಸಿದರೆ, ದಯವಿಟ್ಟು anandmeundi@yahoo.com ನಲ್ಲಿ ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ.\n•\tನಿಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಲು, ನೀವು ವಿನಂತಿಸಿದಂತೆ ಅಥವಾ ನೀವು ಅನುಮೋದಿಸಿದಂತೆ ಅಥವಾ ಈ ನೀತಿಯ ಪ್ರಕಾರ ಅನುಮತಿಸಲಾಗಿದೆ.\n•\tಅಪ್ಲಿಕೇಶನ್, ನಮ್ಮ ಸೇವೆಗಳು ಮತ್ತು CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ ಮಾರ್ಕೆಟ್‌ಪ್ಲೇಸ್ ಅನ್ನು ಪ್ರಚಾರ ಮಾಡಲು ಮತ್ತು ಜಾಹೀರಾತು ಮಾಡಲು. ಉದಾಹರಣೆಗೆ, ನೇರ ವ್ಯಾಪಾರೋದ್ಯಮ ಸಂದೇಶಗಳನ್ನು ಕಳುಹಿಸುವ ಉದ್ದೇಶಕ್ಕಾಗಿ (ಕೆಳಗೆ ವಿವರಿಸಿದಂತೆ), ನಿಮಗೆ ಆಸಕ್ತಿಯಿರುವ ಮಾಹಿತಿಯನ್ನು ನಿಮಗೆ ತೋರಿಸಲು, ರೆಫರಲ್ ಕಾರ್ಯಕ್ರಮಗಳು, ಸ್ಪರ್ಧೆಗಳು ಅಥವಾ ಇತರ ಪ್ರಚಾರ ಚಟುವಟಿಕೆಗಳು ಅಥವಾ ಈವೆಂಟ್‌ಗಳನ್ನು ಸಂಘಟಿಸಲು ಮತ್ತು ಸುಗಮಗೊಳಿಸಲು ನಾವು ನಿಮ್ಮಿಂದ ಸಂಗ್ರಹಿಸಿದ ಮಾಹಿತಿಯನ್ನು ಬಳಸುತ್ತೇವೆ.\n•\tನಿಮಗೆ ಅಥವಾ ನಮ್ಮ ಸಂಬಂಧಿತ ಸೇವೆಗಳಿಗೆ ಆಸಕ್ತಿಯಿರುವ CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್‌ನಿಂದ ನಮ್ಮ ಉತ್ಪನ್ನಗಳು, ಸೇವೆಗಳು ಅಥವಾ ಪ್ರಚಾರಗಳ ಕುರಿತು ನಿಮಗೆ ನೇರ ವ್ಯಾಪಾರೋದ್ಯಮ ಸಂವಹನಗಳನ್ನು ಕಳುಹಿಸಲು ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ನಾವು ಬಳಸುತ್ತೇವೆ. ಇದು ಇಮೇಲ್, ಪೋಸ್ಟ್, SMS, ದೂರವಾಣಿ ಅಥವಾ ಉದ್ದೇಶಿತ ಆನ್‌ಲೈನ್ ಜಾಹೀರಾತುಗಳ ಮೂಲಕ ಆಗಿರಬಹುದು.\n\nನಾವು ಎಷ್ಟು ಸಮಯದವರೆಗೆ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಇಟ್ಟುಕೊಳ್ಳುತ್ತೇವೆ?\nವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಸಂಗ್ರಹಿಸಿದ ಉದ್ದೇಶವನ್ನು ಪೂರೈಸಲು ಅಗತ್ಯವಿರುವವರೆಗೆ ಮಾತ್ರ ಇರಿಸಿಕೊಳ್ಳುವ ಸಾಮಾನ್ಯ ನಿಯಮವನ್ನು ನಾವು ಅನ್ವಯಿಸುತ್ತೇವೆ. ಆದಾಗ್ಯೂ, ಕೆಲವು ಸಂದರ್ಭಗಳಲ್ಲಿ, ನಾವು ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ದೀರ್ಘಾವಧಿಯವರೆಗೆ ಉಳಿಸಿಕೊಳ್ಳುತ್ತೇವೆ. ಕೆಳಗಿನ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನಾವು ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ಉಳಿಸಿಕೊಳ್ಳುತ್ತೇವೆ:\n•\tನಮ್ಮ ಕಾರ್ಯಾಚರಣೆಗಳಿಗೆ ಇದು ಅವಶ್ಯಕ ಮತ್ತು ಪ್ರಸ್ತುತವಾಗಿರುವವರೆಗೆ, ಉದಾ. ಯಾವುದೇ ದೂರುಗಳು ಅಥವಾ ಸವಾಲಿನ ಸಂದರ್ಭದಲ್ಲಿ ನಮ್ಮೊಂದಿಗೆ ನಿಮ್ಮ ವ್ಯವಹಾರಗಳ ನಿಖರವಾದ ದಾಖಲೆಯನ್ನು ನಾವು ಹೊಂದಿದ್ದೇವೆ; ಮತ್ತು\n•\tಅನ್ವಯವಾಗುವ ಕಾನೂನುಗಳನ್ನು ಅನುಸರಿಸಲು, ವಂಚನೆಯನ್ನು ತಡೆಗಟ್ಟಲು, ಯಾವುದೇ ಶುಲ್ಕವನ್ನು ಸಂಗ್ರಹಿಸಲು, ವಿವಾದಗಳನ್ನು ಪರಿಹರಿಸಲು, ಸಮಸ್ಯೆಗಳನ್ನು ಪರಿಹರಿಸಲು, ಯಾವುದೇ ತನಿಖೆಗೆ ಸಹಾಯ ಮಾಡಲು, ನಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ನಿಯಮಗಳನ್ನು ಜಾರಿಗೊಳಿಸಲು ಮತ್ತು ಕಾನೂನಿನಿಂದ ಅನುಮತಿಸಲಾದ ಇತರ ಕ್ರಮಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಲು ಮುಚ್ಚಿದ ಖಾತೆಗಳಿಂದ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಗೆ ಸಂಬಂಧಿಸಿದಂತೆ.\n\nಭದ್ರತೆ:\nನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಯನ್ನು ನಮಗೆ ಒದಗಿಸುವುದಕ್ಕಾಗಿ ನಿಮ್ಮ ನಂಬಿಕೆಯನ್ನು ಮೌಲ್ಯೀಕರಿಸಲಾಗುತ್ತಿದೆ, ಆದ್ದರಿಂದ ನಾವು ಅದನ್ನು ರಕ್ಷಿಸಲು ವಾಣಿಜ್ಯಿಕವಾಗಿ ಸ್ವೀಕಾರಾರ್ಹ ವಿಧಾನಗಳನ್ನು ಬಳಸಲು ಪ್ರಯತ್ನಿಸುತ್ತಿದ್ದೇವೆ. ಆದರೆ ಅಂತರ್ಜಾಲದ ಮೂಲಕ ಪ್ರಸರಣ ವಿಧಾನ ಅಥವಾ ಎಲೆಕ್ಟ್ರಾನಿಕ್ ಸಂಗ್ರಹಣೆಯ ವಿಧಾನವು 100% ಸುರಕ್ಷಿತ ಮತ್ತು ವಿಶ್ವಾಸಾರ್ಹವಲ್ಲ ಎಂದು ನೆನಪಿಡಿ, ಮತ್ತು ಅದರ ಸಂಪೂರ್ಣ ಸುರಕ್ಷತೆಯನ್ನು ಖಾತರಿಪಡಿಸಲಾಗುವುದಿಲ್ಲ.\nನಿರ್ವಾಹಕರು ಅಥವಾ ಅವರ ಅಧಿಕೃತ ಪ್ರತಿನಿಧಿಗಳು ಮಾತ್ರ ಡೇಟಾವನ್ನು ಪ್ರವೇಶಿಸಬಹುದೆಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಲು ನಾವು ದೃಢವಾದ ಡೇಟಾ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಪ್ರೋಟೋಕಾಲ್‌ಗಳನ್ನು ಜಾರಿಗೊಳಿಸಿದ್ದೇವೆ ಮತ್ತು ಅವರ ಪ್ರಮಾಣೀಕರಣದ ಮಟ್ಟಕ್ಕೆ ಸೂಕ್ತವಾದ ಮಟ್ಟಿಗೆ ಮಾತ್ರ. ಈ ಅಳತೆಯು ನಿಮ್ಮ ಡೇಟಾದ ಗೌಪ್ಯತೆ ಮತ್ತು ಸಮಗ್ರತೆಯನ್ನು ರಕ್ಷಿಸುತ್ತದೆ, ಅದು ಸುರಕ್ಷಿತವಾಗಿ ಉಳಿಯುತ್ತದೆ ಮತ್ತು ಸರಿಯಾದ ಅಧಿಕಾರ ಹೊಂದಿರುವವರಿಗೆ ಮಾತ್ರ ಪ್ರವೇಶಿಸಬಹುದು.\n\nಲಾಗ್ ಡೇಟಾ:\nನೀವು CDSIMER SLD ಸ್ಕ್ರೀನಿಂಗ್ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸುವಾಗ ಇದು ನಿಮಗೆ ತಿಳಿಸುತ್ತದೆ. ಸೇವೆಗಳು, ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ದೋಷದ ಸಂದರ್ಭದಲ್ಲಿ, ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲಿ ಸಂಗ್ರಹಿಸಿದ ಡೇಟಾ ಮತ್ತು ಮಾಹಿತಿಯನ್ನು (ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಉತ್ಪನ್ನಗಳ ಮೂಲಕ) ಲಾಗ್ ಡೇಟಾ ಎಂದು ಕರೆಯಲಾಗುತ್ತದೆ. ಈ ಲಾಗ್ ಡೇಟಾವು ನಿಮ್ಮ ಸಾಧನದ ಇಂಟರ್ನೆಟ್ ಪ್ರೋಟೋಕಾಲ್ (\"IP\") ವಿಳಾಸ, ಸಾಧನದ ಹೆಸರು, ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಆವೃತ್ತಿ, ನನ್ನ ಸೇವೆಯನ್ನು ಬಳಸುವಾಗ ಅಪ್ಲಿಕೇಶನ್‌ನ ಕಾನ್ಫಿಗರೇಶನ್, ನಿಮ್ಮ ಸೇವೆಯ ಬಳಕೆಯ ಸಮಯ ಮತ್ತು ದಿನಾಂಕ ಮತ್ತು ಇತರ ಅಂಕಿಅಂಶಗಳಂತಹ ಮಾಹಿತಿಯನ್ನು ಒಳಗೊಂಡಿರಬಹುದು.\n\nಕುಕೀಸ್:\nನಿಮ್ಮ ಅನುಭವವನ್ನು ಸುಧಾರಿಸಲು ಮತ್ತು ವೈಯಕ್ತೀಕರಿಸಲು, ನಮ್ಮ ಸೇವೆಗಳನ್ನು ಒದಗಿಸಲು, ಅಪ್ಲಿಕೇಶನ್ ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ವಿಶ್ಲೇಷಿಸಲು ಮತ್ತು ಮಾರ್ಕೆಟಿಂಗ್ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನಾವು ಕುಕೀಗಳು ಮತ್ತು ಅಂತಹುದೇ ತಂತ್ರಜ್ಞಾನಗಳನ್ನು (ವೆಬ್ ಬೀಕನ್‌ಗಳು, ಪಿಕ್ಸೆಲ್‌ಗಳು, ಟ್ಯಾಗ್‌ಗಳು ಮತ್ತು ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳಂತಹ) ಬಳಸುತ್ತೇವೆ.\nಈ ಸೇವೆಯು ಈ \"ಕುಕೀಗಳನ್ನು\" ಸ್ಪಷ್ಟವಾಗಿ ಬಳಸುವುದಿಲ್ಲ. ಆದಾಗ್ಯೂ, ಮಾಹಿತಿಯನ್ನು ಸಂಗ್ರಹಿಸಲು ಮತ್ತು ತಮ್ಮ ಸೇವೆಗಳನ್ನು ಸುಧಾರಿಸಲು \"ಕುಕೀಗಳನ್ನು\" ಬಳಸುವ ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಕೋಡ್ ಮತ್ತು ಲೈಬ್ರರಿಗಳನ್ನು ಅಪ್ಲಿಕೇಶನ್ ಬಳಸಬಹುದು. ಈ ಕುಕೀಗಳನ್ನು ಸ್ವೀಕರಿಸಲು ಅಥವಾ ನಿರಾಕರಿಸಲು ನೀವು ಆಯ್ಕೆಯನ್ನು ಹೊಂದಿದ್ದೀರಿ ಮತ್ತು ನಿಮ್ಮ ಸಾಧನಕ್ಕೆ ಕುಕೀಯನ್ನು ಯಾವಾಗ ಕಳುಹಿಸಲಾಗುತ್ತಿದೆ ಎಂಬುದನ್ನು ತಿಳಿದುಕೊಳ್ಳಿ. ನಮ್ಮ ಕುಕೀಗಳನ್ನು ನಿರಾಕರಿಸಲು ನೀವು ಆಯ್ಕೆ ಮಾಡಿದರೆ, ಈ ಸೇವೆಯ ಕೆಲವು ಭಾಗಗಳನ್ನು ಬಳಸಲು ನಿಮಗೆ ಸಾಧ್ಯವಾಗದೇ ಇರಬಹುದು.\n\nಮಗುವಿನಿಂದ ವೇದಿಕೆಯ ಬಳಕೆ:\nನೀವು ಅದನ್ನು ಸ್ಪಷ್ಟವಾಗಿ ಅಂಗೀಕರಿಸುತ್ತೀರಿ ಮತ್ತು ಕೈಗೊಳ್ಳುತ್ತೀರಿ:\n•\tನೀವು ಸಮರ್ಥರು ಮತ್ತು ಮಗುವಿನ ಪರವಾಗಿ ಈ ಒಪ್ಪಂದಕ್ಕೆ ಪ್ರವೇಶಿಸಲು ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ಕಾನೂನು ಹಕ್ಕುಗಳನ್ನು ಹೊಂದಿದ್ದೀರಿ.\n•\tನಿಮ್ಮ ಮಗುವಿಗೆ ತರಗತಿಗಳು, ಕೋರ್ಸ್‌ಗಳು, ಪರೀಕ್ಷೆಗಳು, ಸೆಷನ್‌ಗಳು ಮತ್ತು/ಅಥವಾ ಡೆವಲಪರ್‌ಗಳೊಂದಿಗೆ ಸಂಬಂಧ ಹೊಂದಿರುವ ಸಂಸ್ಥೆಗಳು ಅಥವಾ ಶಾಲೆಗಳು ಅಥವಾ ಡೆವಲಪರ್‌ಗಳು ನಡೆಸುವ ಮತ್ತು/ಅಥವಾ ಆಯೋಜಿಸಿರುವ ಯಾವುದೇ ಇತರ ಕಾರ್ಯಕ್ರಮಗಳಿಗೆ ಹಾಜರಾಗಲು ಮತ್ತು ಭಾಗವಹಿಸಲು ನೀವು ಡೆವಲಪರ್‌ಗೆ ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯನ್ನು ನೀಡುತ್ತೀರಿ. ಅದರ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್ ಮತ್ತು ಡೆವಲಪರ್‌ಗಳು ಒದಗಿಸಿದ ಸೇವೆಗಳಿಗೆ ಸಂಬಂಧಿಸಿದಂತೆ.\n•\tಮಗುವಿನ ಭಾಗವಹಿಸುವಿಕೆ ಮತ್ತು ಮಗು ಮಾಡುವ ಎಲ್ಲಾ ಚಟುವಟಿಕೆಗಳು ನಿಮ್ಮ ನೇರ ಮತ್ತು ನಿರಂತರ ಮೇಲ್ವಿಚಾರಣೆಯಲ್ಲಿರುತ್ತದೆ ಎಂದು ನೀವು ಕೈಗೊಳ್ಳುತ್ತೀರಿ.\n•\tಮಗುವಿನ ಕೃತ್ಯಗಳಿಂದ ಪ್ರತ್ಯಕ್ಷ ಅಥವಾ ಪರೋಕ್ಷವಾಗಿ ಉಂಟಾಗುವ ಸಂಪೂರ್ಣ ಮತ್ತು ಸಂಪೂರ್ಣ ಹೊಣೆಗಾರಿಕೆಯನ್ನು ನೀವು ಮತ್ತಷ್ಟು ಸ್ವೀಕರಿಸುತ್ತೀರಿ.\n\nಈ ಗೌಪ್ಯತಾ ನೀತಿಗೆ ಬದಲಾವಣೆಗಳು:\nಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಕಾಲಕಾಲಕ್ಕೆ ನವೀಕರಿಸಬಹುದು. ಹೀಗಾಗಿ, ಯಾವುದೇ ಬದಲಾವಣೆಗಳಿಗಾಗಿ ಈ ಪುಟವನ್ನು ನಿಯತಕಾಲಿಕವಾಗಿ ಪರಿಶೀಲಿಸಲು ನಿಮಗೆ ಸಲಹೆ ನೀಡಲಾಗುತ್ತದೆ. ಈ ಪುಟದಲ್ಲಿ ಹೊಸ ಗೌಪ್ಯತೆ ನೀತಿಯನ್ನು ಪೋಸ್ಟ್ ಮಾಡುವ ಮೂಲಕ ನಾನು ಯಾವುದೇ ಬದಲಾವಣೆಗಳನ್ನು ನಿಮಗೆ ತಿಳಿಸುತ್ತೇನೆ.\n\nಈ ನೀತಿಯು ____________ ದಿನಾಂಕದಿಂದ ಪರಿಣಾಮಕಾರಿಯಾಗಿದೆ\n\nನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ:\nನನ್ನ ಗೌಪ್ಯತೆ ನೀತಿಯ ಕುರಿತು ನೀವು ಯಾವುದೇ ಪ್ರಶ್ನೆಗಳನ್ನು ಅಥವಾ ಸಲಹೆಗಳನ್ನು ಹೊಂದಿದ್ದರೆ, ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಲು ಹಿಂಜರಿಯಬೇಡಿ : ',
    },
    '25hd212k': {
      'en': 'anandmeundi@yahoo.com',
      'kn': 'anandmeundi@yahoo.com',
    },
    'cia2ko7j': {
      'en':
          'At CDSIMER SLD Screening (Developer) App, accessible from, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by CDSIMER SLD Screening and how we use it.\nThis page is used to inform visitors regarding the application policies regarding the collection, use, and disclosure of Personal Information if anyone decided to use this application’s service.\nThis Privacy Policy applies only to our online activities and is valid for visitors to our App with regards to the information that they shared and/or collect in. This policy is not applicable to any information collected offline or via channels other than this App.\nOur mobile application is designed for teachers to screen children aged 4 to 9 years for specific learning disabilities (SLDs). Children identified as at risk of SLD will be referred for further management to improve their learning outcomes. The app is currently in beta form and will undergo pilot testing with teachers for feasibility. Our next step involves validation, which will occur once we secure a fresh grant (anticipated within the next 2-3 months). \nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\nInformation we collect\nInformation You Provide, when you register to the App, use it, complete forms, participate in skills tests or surveys, or use the App as collaborator, and/or register to our affiliate or influencer or similar program, we ask you to provide certain personal information, including a valid email address. We will also ask you to provide or otherwise collect additional information, such as, Name of the child, age of the child, Gender of the child, Address of school, Name of the teacher or other contact details, transactional information, payment information (for example, in certain cases we process your payment method and credit card number), and additional authentication information (such as copies of your government issued ID, passport, or driving license, as permitted by applicable laws and as detailed in our Seller Help Center at “Verifying Your Identity”). We also collect information about or contained in your communications with CDSIMER SLD Screening as well as any of your posts on our blogs or forums and your communication with other users of CDSIMER SLD Screening.\nInformation We Collect Automatically\n We collect information while you access, browse, view or otherwise use the App. In other words, when you access the App we collect personal information on your usage of the App, including transactions and communications with other users through the App, your searches, the pages you visited, as well as other actions on App. We also, collect, use and process the information relating to such usage, including geo-location information, IP address, device and connection information, browser information and web-log information, and the URLs of the web pages you’ve viewed or engaged with before or after using the App. We also collect and process information relating to the use of cookies and similar technologies, as detailed below. We use that information to provide you our services, enhance user experience, personalize your browsing experience as well as monitor the App for preventing fraud and inappropriate content or behavior.\nAdditionally, in order to improve your online experience at CDSIMER SLD Screening, we have implemented impression reporting. While you view our ads, we gather user Global Unique Identifier, HTTP request data like, user agent, IP, host, URL, country/continent from which request made, browser info, device/operating system/operating system version.\nThe personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.\nIf you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.\nWhen you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\nHow Do We Use the Information Collected?\nWe will use your personal information for the following purposes:\n• To provide you with quality service and security, to operate the App, to perform our obligations to you and to develop and improve our service. For example, we use personal information to verify your identity. We also use this information to establish and set up your account, verify or re-issue a password, log your activity, enable your communications with other members, provide customer support and contact you from time to time. The information helps us to develop and improve our services, to understand and analyses our performance as well as your preferences and performance and to customize and personalize our service and enhance your experience (including by making Gig suggestions, ranking search results, etc.).\n•\tTo ensure marketplace integrity, prevent fraud and maintain a safe and secure marketplace and services. For example, we use personal information to monitor, track and prevent fraudulent activities and other inappropriate activities, monitor content integrity, conduct security investigations and risk assessments, verify or authenticate information provided by you, enforce our Terms of Service and comply with applicable laws. We conduct certain behavioral analytics to achieve the above objectives and in limited cases, if we detect activity that we think poses a risk to the CDSIMER SLD Screening marketplace, other users, our community, or third parties, automated processes may restrict or limit your ability to use CDSIMER SLD Screening. If you would like to challenge any such decision, please contact us at anandmeundi@yahoo.com. \n•\tTo contact you, as requested by you or as otherwise approved by you or permitted according to this Policy.\n•\tTo promote and advertise the App, our services and the CDSIMER SLD Screening marketplace. For example, we use the information collected from you for the purpose of sending direct marketing messages (as detailed below), to show you information that may be of interest to you, to organize and facilitate referral programs, contests or other promotional activities or events.\n•\tWe use your personal information to send you direct marketing communications about our products, services or promotions from CDSIMER SLD Screening that may be of interest to you or our related services. This may be via email, post, SMS, telephone or targeted online advertisements.\nHow Long Do We Keep Personal Information?\nWe apply a general rule of keeping personal information only for as long as is required to fulfil the purpose for which it was collected. However, in some circumstances, we will retain your personal information for longer periods of time. We will retain personal information for the following purposes:\n•\tAs long as it is necessary and relevant for our operations, e.g. so that we have an accurate record of your dealings with us in the event of any complaints or challenge; and\n•\tIn relation to personal information from closed accounts to comply with applicable laws, prevent fraud, collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigation, enforce our App terms and take other actions as permitted by law.\nSecurity\nYour trust is being valued for providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and it cannot be guaranteed its absolute security.\nWe have implemented robust data encryption protocols to ensure that only administrators or their authorized representatives can access data, and only to the extent appropriate to their level of authorization. This measure protects the confidentiality and integrity of your data, ensuring that it remains secure and accessible only to those with proper authorization.\nLog Data\nThis is to inform you that whenever you use CDSIMER SLD Screening App. services, in case of an error in the App, the collected data and information (through third-party products) on your phone is called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the App when utilizing my Service, the time and date of your use of the Service, and other statistics.\nCookies\nWe use cookies and similar technologies (such as web beacons, pixels, tags, and scripts) to improve and personalize your experience, provide our services, analyze App performance and for marketing purposes.\nThis Service does not use these “cookies” explicitly. However, the App may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nUse of the Platform by the Child\nYou expressly acknowledge and undertake that:\n\tYou are competent and have all the necessary legal rights to enter into this agreement on behalf of the child.\n\tYou grant your consent to the Developer for your child to attend and participate in the classes, courses, tests, sessions, and/or any other program conducted and/or organized by the Institutions that developers are tied up with or schools or developers on its Platform and in relation to the services provided by the developers.\n\tYou undertake that the participation of the Child and all the activities done by the Child will be under your direct and constant supervision.\n\tYou further accept full and complete liability arising out of the child’s acts, whether direct or indirect.\n\nChanges to This Privacy Policy\n The Privacy Policy may get updated from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of ____________\nContact Us\nIf you have any questions or suggestions about my Privacy Policy, do not hesitate to contact us at anandmeundi@yahoo.com. \n',
      'kn': '',
    },
    'pkncxjyz': {
      'en': 'Cancel',
      'kn': 'ರದ್ದುಮಾಡಿ',
    },
  },
  // Teminate
  {
    'v1erpah0': {
      'en': 'Are you sure that you want to terminate the screening process?',
      'kn': 'ಸ್ಕ್ರೀನಿಂಗ್ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಕೊನೆಗೊಳಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?',
    },
    '5r67l3g8': {
      'en': 'All the child details and saved information will be deleted.',
      'kn': 'ಎಲ್ಲಾ ಮಕ್ಕಳ ವಿವರಗಳು ಮತ್ತು ಉಳಿಸಿದ ಮಾಹಿತಿಯನ್ನು ಅಳಿಸಲಾಗುತ್ತದೆ.',
    },
    'dxqp4163': {
      'en': 'No',
      'kn': 'ಸಂ',
    },
    'd13ylvob': {
      'en': 'Yes',
      'kn': 'ಹೌದು',
    },
  },
  // ListOBehaviours
  {
    '33zdc444': {
      'en':
          'Behaviors suggestive of visual problems in school aged children (6-18 years) : ',
      'kn':
          'ಶಾಲಾ ವಯಸ್ಸಿನ ಮಕ್ಕಳಲ್ಲಿ (6-18 ವರ್ಷಗಳು) ದೃಷ್ಟಿ ದೋಷಗಳನ್ನು ಸೂಚಿಸುವ ನಡವಳಿಕೆಗಳು : ',
    },
    'jmkbcx7v': {
      'en':
          '•\tComplaints of discomfort and fatigue.\n•\tFrequent eye rubbing or blinking.\n•\tShort attention span.\n•\tAvoiding reading and other close activities.\n•\tFrequent headaches.\n•\tCovering one eye.\n•\tTilting the head to one side.\n•\tHolding reading materials close to the face.\n•\tAn eye turning in or out.\n•\tSeeing double.\n•\tLosing place when reading.\n•\tDifficulty remembering what he or she read',
      'kn':
          '•\tಅಸ್ವಸ್ಥತೆ ಮತ್ತು ಆಯಾಸದ ಸಮಸ್ಯೆಗಳು.\n•\tಆಗಾಗ್ಗೆ ಕಣ್ಣು ಉಜ್ಜುವುದು ಅಥವಾ ಮಿಟುಕಿಸುವುದು.\n•\tಗಮನ ಮತ್ತು ಏಕಾಗ್ರತೆಯ ಕೊರತೆ.\n•\tಓದುವಿಕೆ ಮತ್ತು ಇತರ ಸಂಬಂಧಿತ ಚಟುವಟಿಕೆಗಳನ್ನು ತಪ್ಪಿಸುವುದು.\n•\tಆಗಾಗ್ಗೆ ತಲೆನೋವು.\n•\tಒಂದು ಕಣ್ಣನ್ನು ಮುಚ್ಚುವುದು.\n•\tತಲೆಯನ್ನು ಒಂದು ಬದಿಗೆ ತಿರುಗಿಸುವುದು.\n•\tಓದುವ ಸಾಮಗ್ರಿಗಳನ್ನು ಮುಖದ ಹತ್ತಿರ ಹಿಡಿದುಕೊಳ್ಳುವುದು.\n•\tಕಣ್ಣು ಒಳಗೆ ಅಥವಾ ಹೊರಗೆ ತಿರುಗುವುದು.\n•\tಎರೆಡೆರೆಡು ಕಾಣಿಸುವುದೆಂದು ಹೇಳುವುದು.\n•\tಓದುವಾಗ ಜಾಡು ಕಳೆದುಕೊಳ್ಳುವುದು.\n•\tಓದಿದ್ದನ್ನು ನೆನಪಿಟ್ಟುಕೊಳ್ಳುವುದು ಕಷ್ಟಕರವಾಗಿರುವುದು',
    },
    'h66shctw': {
      'en': 'Some possible signs of hearing loss in a school-age child : ',
      'kn': ' ಶಾಲಾ ವಯಸ್ಸಿನ ಮಗುವಿನಲ್ಲಿ ಶ್ರವಣ ದೋಷದ ಕೆಲವು ಸಂಭವನೀಯ ಚಿಹ್ನೆಗಳು : ',
    },
    'kibdkh3p': {
      'en':
          '•\tDoes not follow simple commands, such as “get your shoes,” or understand simple directions\n•\tIs easily frustrated or experiences communication breakdowns\n•\tIs falling behind with speech and communication skills\n•\tCannot understand what you are saying unless they are looking directly at you\n•\tCannot identify where sounds are coming from\n•\tIs exhausted at the end of school from concentrating to understand speech\n•\tShows signs of behavioural problems or social difficulties\n•\tExperiences problems keeping up at school or grades slipping',
      'kn':
          '•\tಮಗುವಿಗೆ ಸರಳ ನಿರ್ದೇಶನಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳುವಂತಹ ಅಥವಾ ಸರಳ ಆಜ್ಞೆಗಳನ್ನು ಅನುಸರಿಸಲು ಆಗುವುದಿಲ್ಲ\n•\tಸುಲಭವಾಗಿ ಹತಾಶರಾಗುತ್ತಾರೆ ಅಥವಾ ಅವಕ್ಕಾಗಿ ನಿಂತುಬಿಡುವುದು ಇಂಥವುಗಳನ್ನು ಅನುಭವಿಸುತ್ತಾರೆ\n•\tಮಾತು ಮತ್ತು ಸಂವಹನ ಕೌಶಲ್ಯದಲ್ಲಿ ಹಿಂದೆ ಬೀಳುತ್ತಾರೆ\n•\tಅವರು ನಿಮ್ಮನ್ನು ನೇರವಾಗಿ ನೋಡದ ಹೊರತು ನೀವು ಏನು ಹೇಳುತ್ತಿರುವಿರಿ ಎಂಬುದನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ಸಾಧ್ಯವಿಲ್ಲ\n•\tಶಬ್ದಗಳು ಎಲ್ಲಿಂದ ಬರುತ್ತಿವೆ ಎಂಬುದನ್ನು ಗುರುತಿಸಲು ಕಷ್ಟವೆನಿಸುವುದು\n•\tಮಾತನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ಏಕಾಗ್ರತೆ ಕಾಯ್ದುಕೊಳ್ಳಲಾಗದೆ ದಿನದ ಕೊನೆಯಲ್ಲಿ ದಣಿವನುಭವಿಸುವುದು\n•\tವರ್ತನೆಯ ಸಮಸ್ಯೆಗಳು ಅಥವಾ ಸಾಮಾಜಿಕ ತೊಂದರೆಗಳು ಕಾಣಿಸಬಹುದು\n•\tಶಾಲೆಯಲ್ಲಿ ಕಲಿಕಾ ಸಮಸ್ಯೆಗಳು ಅಥವಾ ಗ್ರೇಡ್‌ಗಳು ಇಳಿಮುಖವಾಗುವುದು',
    },
    'vye5ozne': {
      'en':
          'Many such behaviours or complaints may resemble ADHD or even learning disorder. But getting an eye and ear exam and if needed, correction which is easier and more advisable before proceeding to more detailed psychological assessments, diagnoses and treatments.',
      'kn':
          'ಇಂತಹ ಅನೇಕ ನಡವಳಿಕೆಗಳು ಅಥವಾ ಸಮಸ್ಯೆಗಳು ಬಹುತೇಕ ಎಡಿಎಚ್‌ಡಿ ಅಥವಾ ಕಲಿಕೆಯ ಅಸ್ವಸ್ಥತೆಯನ್ನು ಹೋಲುತ್ತವೆ. ಆದರೆ ಕಣ್ಣು ಮತ್ತು ಕಿವಿ ಪರೀಕ್ಷೆಯನ್ನು ಮಾಡಿಸಿ ಮತ್ತು ಅಗತ್ಯವಿದ್ದರೆ ಅದರ ಚಿಕಿತ್ಸೆ ಹೆಚ್ಚು ವಿವರವಾದ ಮಾನಸಿಕ ಮೌಲ್ಯಮಾಪನಗಳು, ರೋಗನಿರ್ಣಯಗಳು ಮತ್ತು ಚಿಕಿತ್ಸೆಗಳಿಗೆ ಮುಂದುವರಿಯುವದಕ್ಕಿಂತ ಸುಲಭಕರವಾಗಿರಬಹುದು.',
    },
    'xs4ub4b7': {
      'en': 'Cancel',
      'kn': 'ರದ್ದುಮಾಡಿ',
    },
  },
  // blogPost
  {
    'v8w29ph4': {
      'en': 'Create Project',
      'kn': '',
    },
    '2bubud1y': {
      'en': 'Please enter the information below to add a project.',
      'kn': '',
    },
    'xrd8ndn4': {
      'en': 'Add Photo',
      'kn': '',
    },
    'p7uosgea': {
      'en': 'Upload an image here...',
      'kn': '',
    },
    'iounu211': {
      'en': 'Enter the Heading',
      'kn': '',
    },
    'mfz81dw6': {
      'en': 'Description here...',
      'kn': '',
    },
    '7dhkjcq1': {
      'en': 'Post',
      'kn': '',
    },
    '9a7ti83q': {
      'en': 'Field is required',
      'kn': '',
    },
    'btepo8y3': {
      'en': 'Please enter a real name',
      'kn': '',
    },
    'ekp9f4i1': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    '0ewtkagb': {
      'en': 'Please enter a short desription',
      'kn': '',
    },
    'f1lgqkin': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    '8khuwzae': {
      'en': 'We have to have a URL for the project.',
      'kn': '',
    },
    'wxr758n8': {
      'en': 'Please enter a valid URL...',
      'kn': '',
    },
    '7ifszpe5': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    't1xr41gq': {
      'en': 'Field is required',
      'kn': '',
    },
    'cx5pokhm': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
  },
  // mapsCenters
  {
    'i3bvdfsj': {
      'en': 'Find the Location',
      'kn': '',
    },
    '4h6tztob': {
      'en': 'Field is required',
      'kn': '',
    },
    'p7nzfr0s': {
      'en': 'Please enter a real name',
      'kn': '',
    },
    'x2r0c971': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    '65q05jgf': {
      'en': 'Please enter a short desription',
      'kn': '',
    },
    'sp8dm41q': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    'fv900yln': {
      'en': 'We have to have a URL for the project.',
      'kn': '',
    },
    'atsn384m': {
      'en': 'Please enter a valid URL...',
      'kn': '',
    },
    'qwa8uq26': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
    'p505sfo5': {
      'en': 'Field is required',
      'kn': '',
    },
    'c2ejlzoy': {
      'en': 'Please choose an option from the dropdown',
      'kn': '',
    },
  },
  // ChatBubble
  {
    '9ojk3uek': {
      'en': 'NeuroBudy',
      'kn': '',
    },
  },
  // TopHeader
  {
    '88ol0chi': {
      'en': 'NeuroBuddy',
      'kn': '',
    },
  },
  // graphs
  {
    'e8u3fah1': {
      'en': 'Dyslexia Scores',
      'kn': '',
    },
    '93wol1eo': {
      'en': 'Scores',
      'kn': '',
    },
    'lzja9cnd': {
      'en': 'Time',
      'kn': '',
    },
    'o4nogxr8': {
      'en': 'Dysgraphia Scores',
      'kn': '',
    },
    '3ws3ll1o': {
      'en': 'Scores',
      'kn': '',
    },
    'mg92gso6': {
      'en': 'Time',
      'kn': '',
    },
    'zyjixhrk': {
      'en': 'Dyscalculia Scores',
      'kn': '',
    },
    '09fuzmll': {
      'en': 'Scores',
      'kn': '',
    },
    'kvkdvo6a': {
      'en': 'Time',
      'kn': '',
    },
  },
  // Miscellaneous
  {
    'fyupy821': {
      'en': '',
      'kn': '',
    },
    'e3v4igmk': {
      'en': '',
      'kn': '',
    },
    'r1choe3s': {
      'en': '',
      'kn': '',
    },
    '4ul644od': {
      'en': '',
      'kn': '',
    },
    'j3jvoarq': {
      'en': '',
      'kn': '',
    },
    '4xuwfwzy': {
      'en': '',
      'kn': '',
    },
    'aoabe0sm': {
      'en': '',
      'kn': '',
    },
    'hluhtmq2': {
      'en': '',
      'kn': '',
    },
    'cto20yf2': {
      'en': '',
      'kn': '',
    },
    'srkhqser': {
      'en': '',
      'kn': '',
    },
    '3mtryleu': {
      'en': '',
      'kn': '',
    },
    't36pqqda': {
      'en': '',
      'kn': '',
    },
    'kfia1vf0': {
      'en': '',
      'kn': '',
    },
    's3wmvf4n': {
      'en': '',
      'kn': '',
    },
    'ghuln72f': {
      'en': '',
      'kn': '',
    },
    'cscwl51h': {
      'en': '',
      'kn': '',
    },
    'cv0tgy9p': {
      'en': '',
      'kn': '',
    },
    '3jsk9uiu': {
      'en': '',
      'kn': '',
    },
    'mbb91xxm': {
      'en': '',
      'kn': '',
    },
    '2m3e8zbo': {
      'en': '',
      'kn': '',
    },
    'utgulchh': {
      'en': '',
      'kn': '',
    },
    'jdifcwh3': {
      'en': '',
      'kn': '',
    },
    'hk1vp82d': {
      'en': '',
      'kn': '',
    },
    'zz4x23j0': {
      'en': '',
      'kn': '',
    },
    '9zwkqn2w': {
      'en': '',
      'kn': '',
    },
    'cc31q88i': {
      'en': '',
      'kn': '',
    },
    'nv0z4exd': {
      'en': '',
      'kn': '',
    },
    'kigfh7hh': {
      'en': '',
      'kn': '',
    },
  },
].reduce((a, b) => a..addAll(b));
