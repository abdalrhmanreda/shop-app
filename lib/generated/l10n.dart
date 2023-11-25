// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Step into Style with Sneaker`
  String get onBoardingTitle1 {
    return Intl.message(
      'Step into Style with Sneaker',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Sneaker, where style meets comfort. Explore a curated collection of the latest sneakers and elevate your fashion game effortlessly`
  String get onBoardingDescription1 {
    return Intl.message(
      'Welcome to Sneaker, where style meets comfort. Explore a curated collection of the latest sneakers and elevate your fashion game effortlessly',
      name: 'onBoardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Find Your Perfect Fit`
  String get onBoardingTitle2 {
    return Intl.message(
      'Find Your Perfect Fit',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Discover sneakers that match your unique style. With Sneaker, finding the perfect fit is just a step away. Your journey to standout footwear starts here`
  String get onBoardingDescription2 {
    return Intl.message(
      'Discover sneakers that match your unique style. With Sneaker, finding the perfect fit is just a step away. Your journey to standout footwear starts here',
      name: 'onBoardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive Releases, Exclusive Experience`
  String get onBoardingTitle3 {
    return Intl.message(
      'Exclusive Releases, Exclusive Experience',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Be the first to know about exclusive sneaker releases and immerse yourself in a world of limited-edition footwear. Join Sneaker for a premium shopping experience like no other`
  String get onBoardingDescription3 {
    return Intl.message(
      'Be the first to know about exclusive sneaker releases and immerse yourself in a world of limited-edition footwear. Join Sneaker for a premium shopping experience like no other',
      name: 'onBoardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingButtonText {
    return Intl.message(
      'Next',
      name: 'onBoardingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoardingTextButtonText {
    return Intl.message(
      'Skip',
      name: 'onBoardingTextButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Log`
  String get loginScreenTitlePartOne {
    return Intl.message(
      'Log',
      name: 'loginScreenTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// ` In`
  String get loginScreenTitlePartTwo {
    return Intl.message(
      ' In',
      name: 'loginScreenTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `login to unlock exclusive styles and personalized recommendation`
  String get loginScreenDescription {
    return Intl.message(
      'login to unlock exclusive styles and personalized recommendation',
      name: 'loginScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginScreenEmail {
    return Intl.message(
      'Email',
      name: 'loginScreenEmail',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get loginScreenPass {
    return Intl.message(
      'password',
      name: 'loginScreenPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginScreenButton {
    return Intl.message(
      'Login',
      name: 'loginScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ? `
  String get loginScreenHaveNotAccount {
    return Intl.message(
      'Don\'t have an account ? ',
      name: 'loginScreenHaveNotAccount',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get loginScreenCreateAccount {
    return Intl.message(
      'create account',
      name: 'loginScreenCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get loginScreenForgetPass {
    return Intl.message(
      'Forget Password ?',
      name: 'loginScreenForgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Sign`
  String get registerScreenTitlePartOne {
    return Intl.message(
      'Sign',
      name: 'registerScreenTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// ` Up`
  String get registerScreenTitlePartTwo {
    return Intl.message(
      ' Up',
      name: 'registerScreenTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ? `
  String get registerScreenHaveAccount {
    return Intl.message(
      'Already have an account ? ',
      name: 'registerScreenHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get registerScreenButton {
    return Intl.message(
      'Sign Up',
      name: 'registerScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now to receive a special discount on your first purchase`
  String get registerScreenDescription {
    return Intl.message(
      'Sign up now to receive a special discount on your first purchase',
      name: 'registerScreenDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
