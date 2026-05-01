// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';

SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color customColor1;
  late Color customColor2;
  late Color customColor3;
  late Color customColor4;
  late Color customColor5;
  late Color customColor6;
  late Color customColor7;
  late Color customColor8;
  late Color customColor9;
  late Color customColor10;
  late Color customColor11;
  late Color customColor12;
  late Color customColor13;
  late Color customColor14;
  late Color customColor15;
  late Color customColor16;
  late Color customColor17;
  late Color customColor18;
  late Color customColor19;
  late Color customColor20;
  late Color customColor21;
  late Color customColor22;
  late Color customColor23;
  late Color customColor24;
  late Color customColor25;
  late Color customColor26;
  late Color customColor27;
  late Color customColor28;
  late Color customColor29;
  late Color customColor30;
  late Color customColor31;
  late Color customColor32;
  late Color customColor33;
  late Color customColor34;
  late Color customColor35;
  late Color customColor36;
  late Color customColor37;
  late Color customColor38;
  late Color customColor39;
  late Color customColor40;
  late Color customColor41;
  late Color customColor42;
  late Color customColor43;
  late Color customColor44;
  late Color customColor45;
  late Color customColor46;
  late Color customColor47;
  late Color customColor48;
  late Color customColor49;
  late Color customColor50;
  late Color customColor51;
  late Color customColor52;
  late Color customColor53;
  late Color customColor54;
  late Color customColor55;
  late Color customColor56;
  late Color customColor57;
  late Color customColor58;
  late Color customColor59;
  late Color customColor60;
  late Color customColor61;
  late Color customColor62;
  late Color customColor63;
  late Color customColor64;
  late Color customColor65;
  late Color customColor66;
  late Color customColor67;
  late Color customColor68;
  late Color customColor69;

  FFDesignTokens get designToken => FFDesignTokens(this);

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color customColor1 = const Color(0xFF83C8F8);
  late Color customColor2 = const Color(0xFFA438ED);
  late Color customColor3 = const Color(0xFF58C54F);
  late Color customColor4 = const Color(0xFF938C57);
  late Color customColor5 = const Color(0xFF630B00);
  late Color customColor6 = const Color(0xFF26977D);
  late Color customColor7 = const Color(0xFF8C18E4);
  late Color customColor8 = const Color(0xFF8D94B9);
  late Color customColor9 = const Color(0xFFD94685);
  late Color customColor10 = const Color(0xFF19F8A3);
  late Color customColor11 = const Color(0xFF0213DC);
  late Color customColor12 = const Color(0xFFFC3D48);
  late Color customColor13 = const Color(0xFFC51F73);
  late Color customColor14 = const Color(0xFF8873E7);
  late Color customColor15 = const Color(0xFF559AAA);
  late Color customColor16 = const Color(0xFF7798A5);
  late Color customColor17 = const Color(0xFF257E5A);
  late Color customColor18 = const Color(0xFF75CCFD);
  late Color customColor19 = const Color(0xFFBCC213);
  late Color customColor20 = const Color(0xFF9056D9);
  late Color customColor21 = const Color(0xFF958B6C);
  late Color customColor22 = const Color(0xFF9838D6);
  late Color customColor23 = const Color(0xFF9A1520);
  late Color customColor24 = const Color(0xFFE465E2);
  late Color customColor25 = const Color(0xFF04E62B);
  late Color customColor26 = const Color(0xFF7F31E3);
  late Color customColor27 = const Color(0xFFCD01D2);
  late Color customColor28 = const Color(0xFF1442A4);
  late Color customColor29 = const Color(0xFF817916);
  late Color customColor30 = const Color(0xFF39892C);
  late Color customColor31 = const Color(0xFF32CA74);
  late Color customColor32 = const Color(0xFF2B6C0B);
  late Color customColor33 = const Color(0xFF19F710);
  late Color customColor34 = const Color(0xFF62235A);
  late Color customColor35 = const Color(0xFF00AFA4);
  late Color customColor36 = const Color(0xFF302AA3);
  late Color customColor37 = const Color(0xFF96994E);
  late Color customColor38 = const Color(0xFF2167B2);
  late Color customColor39 = const Color(0xFF99A006);
  late Color customColor40 = const Color(0xFFBA6E16);
  late Color customColor41 = const Color(0xFF546CB4);
  late Color customColor42 = const Color(0xFF3A37A0);
  late Color customColor43 = const Color(0xFF9FEF7C);
  late Color customColor44 = const Color(0xFF688BBC);
  late Color customColor45 = const Color(0xFFC422E5);
  late Color customColor46 = const Color(0xFF974149);
  late Color customColor47 = const Color(0xFFCFBA4A);
  late Color customColor48 = const Color(0xFF2E9DC9);
  late Color customColor49 = const Color(0xFF8FE50A);
  late Color customColor50 = const Color(0xFFC611A4);
  late Color customColor51 = const Color(0xFF077DFD);
  late Color customColor52 = const Color(0xFFDAD4C5);
  late Color customColor53 = const Color(0xFF743E92);
  late Color customColor54 = const Color(0xFFB19C84);
  late Color customColor55 = const Color(0xFFA6F2BC);
  late Color customColor56 = const Color(0xFF398D17);
  late Color customColor57 = const Color(0xFFBCAC7D);
  late Color customColor58 = const Color(0xFF0FFFCD);
  late Color customColor59 = const Color(0xFF654CFD);
  late Color customColor60 = const Color(0xFF73A20D);
  late Color customColor61 = const Color(0xFFD212D3);
  late Color customColor62 = const Color(0xFF31DF3F);
  late Color customColor63 = const Color(0xFFD4B46B);
  late Color customColor64 = const Color(0xFFDF9254);
  late Color customColor65 = const Color(0xFFBBBAE8);
  late Color customColor66 = const Color(0xFF932F9A);
  late Color customColor67 = const Color(0xFFCC71A3);
  late Color customColor68 = const Color(0xFFCC264F);
  late Color customColor69 = const Color(0xFFEB67E1);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Outfit';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Outfit';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Outfit';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Outfit';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Outfit';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Outfit';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Outfit';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.outfit(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Readex Pro';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.readexPro(
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Readex Pro';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.readexPro(
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Readex Pro';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.readexPro(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Readex Pro';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.readexPro(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Readex Pro';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.readexPro(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Readex Pro';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.readexPro(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Readex Pro';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.readexPro(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Readex Pro';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.readexPro(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1D2428);
  late Color secondaryBackground = const Color(0xFF14181B);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color customColor1 = const Color(0xFF83C8F8);
  late Color customColor2 = const Color(0xFFA438ED);
  late Color customColor3 = const Color(0xFF58C54F);
  late Color customColor4 = const Color(0xFF938C57);
  late Color customColor5 = const Color(0xFF630B00);
  late Color customColor6 = const Color(0xFF26977D);
  late Color customColor7 = const Color(0xFF8C18E4);
  late Color customColor8 = const Color(0xFF8D94B9);
  late Color customColor9 = const Color(0xFFD94685);
  late Color customColor10 = const Color(0xFF19F8A3);
  late Color customColor11 = const Color(0xFF0213DC);
  late Color customColor12 = const Color(0xFFFC3D48);
  late Color customColor13 = const Color(0xFFC51F73);
  late Color customColor14 = const Color(0xFF8873E7);
  late Color customColor15 = const Color(0xFF559AAA);
  late Color customColor16 = const Color(0xFF7798A5);
  late Color customColor17 = const Color(0xFF257E5A);
  late Color customColor18 = const Color(0xFF75CCFD);
  late Color customColor19 = const Color(0xFFBCC213);
  late Color customColor20 = const Color(0xFF9056D9);
  late Color customColor21 = const Color(0xFF958B6C);
  late Color customColor22 = const Color(0xFF9838D6);
  late Color customColor23 = const Color(0xFF9A1520);
  late Color customColor24 = const Color(0xFFE465E2);
  late Color customColor25 = const Color(0xFF04E62B);
  late Color customColor26 = const Color(0xFF7F31E3);
  late Color customColor27 = const Color(0xFFCD01D2);
  late Color customColor28 = const Color(0xFF1442A4);
  late Color customColor29 = const Color(0xFF817916);
  late Color customColor30 = const Color(0xFF39892C);
  late Color customColor31 = const Color(0xFF32CA74);
  late Color customColor32 = const Color(0xFF2B6C0B);
  late Color customColor33 = const Color(0xFF19F710);
  late Color customColor34 = const Color(0xFF62235A);
  late Color customColor35 = const Color(0xFF00AFA4);
  late Color customColor36 = const Color(0xFF302AA3);
  late Color customColor37 = const Color(0xFF96994E);
  late Color customColor38 = const Color(0xFF2167B2);
  late Color customColor39 = const Color(0xFF99A006);
  late Color customColor40 = const Color(0xFFBA6E16);
  late Color customColor41 = const Color(0xFF546CB4);
  late Color customColor42 = const Color(0xFF3A37A0);
  late Color customColor43 = const Color(0xFF9FEF7C);
  late Color customColor44 = const Color(0xFF688BBC);
  late Color customColor45 = const Color(0xFFC422E5);
  late Color customColor46 = const Color(0xFF974149);
  late Color customColor47 = const Color(0xFFCFBA4A);
  late Color customColor48 = const Color(0xFF2E9DC9);
  late Color customColor49 = const Color(0xFF8FE50A);
  late Color customColor50 = const Color(0xFFC611A4);
  late Color customColor51 = const Color(0xFF077DFD);
  late Color customColor52 = const Color(0xFFDAD4C5);
  late Color customColor53 = const Color(0xFF743E92);
  late Color customColor54 = const Color(0xFFB19C84);
  late Color customColor55 = const Color(0xFFA6F2BC);
  late Color customColor56 = const Color(0xFF398D17);
  late Color customColor57 = const Color(0xFFBCAC7D);
  late Color customColor58 = const Color(0xFF0FFFCD);
  late Color customColor59 = const Color(0xFF654CFD);
  late Color customColor60 = const Color(0xFF73A20D);
  late Color customColor61 = const Color(0xFFD212D3);
  late Color customColor62 = const Color(0xFF31DF3F);
  late Color customColor63 = const Color(0xFFD4B46B);
  late Color customColor64 = const Color(0xFFDF9254);
  late Color customColor65 = const Color(0xFFBBBAE8);
  late Color customColor66 = const Color(0xFF932F9A);
  late Color customColor67 = const Color(0xFFCC71A3);
  late Color customColor68 = const Color(0xFFCC264F);
  late Color customColor69 = const Color(0xFFEB67E1);
}

class FFDesignTokens {
  const FFDesignTokens(this.theme);
  final FlutterFlowTheme theme;
  FFSpacing get spacing => const FFSpacing();
  FFRadius get radius => const FFRadius();
  FFShadows get shadow => FFShadows(theme);
}

class FFSpacing {
  const FFSpacing();
  double get xs => 4.0;
  double get sm => 8.0;
  double get md => 16.0;
  double get lg => 24.0;
  double get xl => 32.0;
}

class FFRadius {
  const FFRadius();
  double get sm => 8.0;
  double get md => 16.0;
  double get lg => 24.0;
  double get full => 9999.0;
}

class FFShadows {
  const FFShadows(this.theme);
  final FlutterFlowTheme theme;
  BoxShadow get sm => const BoxShadow(
      blurRadius: 3.0,
      color: const Color(0x1A000000),
      offset: const Offset(0.0, 1.0),
      spreadRadius: 0.0);
  BoxShadow get md => const BoxShadow(
      blurRadius: 6.0,
      color: const Color(0x1A000000),
      offset: const Offset(0.0, 3.0),
      spreadRadius: 0.0);
  BoxShadow get lg => const BoxShadow(
      blurRadius: 15.0,
      color: const Color(0x1A000000),
      offset: const Offset(0.0, 8.0),
      spreadRadius: 0.0);
  BoxShadow get xl => const BoxShadow(
      blurRadius: 25.0,
      color: const Color(0x1A000000),
      offset: const Offset(0.0, 16.0),
      spreadRadius: 0.0);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
