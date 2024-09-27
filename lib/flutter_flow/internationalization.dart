import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en'];

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
    String? frText = '',
    String? enText = '',
  }) =>
      [frText, enText][languageIndex] ?? '';

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

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // dreams
  {
    'hgqspatj': {
      'fr': 'Tous les reves',
      'en': 'All dreams',
    },
    'mh36r0gp': {
      'fr': 'Favoris',
      'en': 'Favorites',
    },
    'uh6l3e3b': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // dashboard
  {
    '6t39ixug': {
      'fr': 'Total Dreams',
      'en': 'Total Dreams',
    },
    'hah6ak2c': {
      'fr': 'This Year',
      'en': 'This Year',
    },
    'y9vk6akw': {
      'fr': 'This Month',
      'en': 'This Month',
    },
    'pl8v34li': {
      'fr': 'Button',
      'en': '',
    },
    'inew1mfw': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // environnement
  {
    'zzotgb17': {
      'fr': 'Personnages',
      'en': 'Characters',
    },
    'km7gth8e': {
      'fr': 'Lieux',
      'en': 'Places',
    },
    '9fjzaz50': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // login
  {
    'soqi3t9j': {
      'fr': 'Connexion',
      'en': 'Login',
    },
    'tkfp15cy': {
      'fr': 'Email',
      'en': 'E-mail',
    },
    'vhgl6l9c': {
      'fr': 'Mot de passe',
      'en': 'Password',
    },
    '3eag1k39': {
      'fr': 'Connexion',
      'en': 'Login',
    },
    'b3ta4w4v': {
      'fr': 'Mot de passe oublié',
      'en': 'Forgot your password',
    },
    '7grq0b2n': {
      'fr': 'Ou connectes-toi avec',
      'en': 'Or connect with',
    },
    'e8ar699h': {
      'fr': 'Continues avec Google',
      'en': 'Continue with Google',
    },
    'rd11tl3o': {
      'fr': 'Inscription',
      'en': 'Registration',
    },
    'h2c75j3c': {
      'fr': 'Email',
      'en': 'E-mail',
    },
    'bo0wynv3': {
      'fr': 'Mot de passe',
      'en': 'Password',
    },
    '3096q2zw': {
      'fr': 'Confirmer le mot de passe',
      'en': 'Confirm password',
    },
    'u27tqeub': {
      'fr': 'Creation du compte',
      'en': 'Account creation',
    },
    'gsyfnx9s': {
      'fr': 'Ou inscris-toi avec',
      'en': 'Or sign up with',
    },
    'ednofr3c': {
      'fr': 'Continues avec Google',
      'en': 'Continue with Google',
    },
    'ihruzzxo': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // article
  {
    'lyds2y9d': {
      'fr': '0',
      'en': '0',
    },
  },
  // add
  {
    's2xqa0ar': {
      'fr': 'Que voulez vous ajouter ?',
      'en': 'What would you like to add?',
    },
    'j23xcdyr': {
      'fr': 'Reves',
      'en': 'Dreams',
    },
    'c4ibrb5s': {
      'fr': 'Reves',
      'en': 'Dreams',
    },
    'l4e819ut': {
      'fr': 'Personnages',
      'en': 'Characters',
    },
    'zcf3nxha': {
      'fr': 'Lieux',
      'en': 'Places',
    },
    '0pf6m9q9': {
      'fr': 'Title',
      'en': 'Title',
    },
    'q4jkwfwo': {
      'fr': 'La description',
      'en': 'The description',
    },
    'ryiqe6wh': {
      'fr': 'Ajouter',
      'en': 'Add',
    },
    '6d516zkv': {
      'fr': '0',
      'en': '0',
    },
    'tfu5cllq': {
      'fr': 'Label here...',
      'en': 'Label here...',
    },
    '7t3mmft1': {
      'fr': 'Label here...',
      'en': 'Label here...',
    },
    'hb9fuu3h': {
      'fr': 'Label here...',
      'en': 'Label here...',
    },
  },
  // Miscellaneous
  {
    'lbbhybk5': {
      'fr': '',
      'en': '',
    },
    '24mrdrxm': {
      'fr': '',
      'en': '',
    },
    'gedgfjxm': {
      'fr': '',
      'en': '',
    },
    'n07ofm69': {
      'fr': '',
      'en': '',
    },
    'n6ktdd1p': {
      'fr': '',
      'en': '',
    },
    'wtudz4j1': {
      'fr': '',
      'en': '',
    },
    '5uzo8ssw': {
      'fr': '',
      'en': '',
    },
    'uv8i5i7c': {
      'fr': '',
      'en': '',
    },
    'ooaka7xe': {
      'fr': '',
      'en': '',
    },
    'wbpvlnfw': {
      'fr': '',
      'en': '',
    },
    'zcwkzzbb': {
      'fr': '',
      'en': '',
    },
    'pwvniery': {
      'fr': '',
      'en': '',
    },
    'kun0n84r': {
      'fr': '',
      'en': '',
    },
    'i3ksgp5z': {
      'fr': '',
      'en': '',
    },
    'mwwv1x5q': {
      'fr': '',
      'en': '',
    },
    't3gftsob': {
      'fr': '',
      'en': '',
    },
    '7pf2sjw1': {
      'fr': '',
      'en': '',
    },
    'tlnvd2zs': {
      'fr': '',
      'en': '',
    },
    'wkvaz81m': {
      'fr': '',
      'en': '',
    },
    '856y65gp': {
      'fr': '',
      'en': '',
    },
    'i7y69q8q': {
      'fr': '',
      'en': '',
    },
    'ckls7zl9': {
      'fr': '',
      'en': '',
    },
    'ch3noubq': {
      'fr': '',
      'en': '',
    },
    '4pg4a9ri': {
      'fr': '',
      'en': '',
    },
    'hycmpcpy': {
      'fr': '',
      'en': '',
    },
    'sels31e9': {
      'fr': '',
      'en': '',
    },
    '3gyd1ius': {
      'fr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
