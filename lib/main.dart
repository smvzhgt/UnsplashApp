import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:unsplash_app/core/theme.dart';
import 'package:unsplash_app/di/injection.dart' as di;
import 'package:unsplash_app/src/scenes/detail/presentation/page/image_detail_page.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/bloc/image_list_bloc.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/pages/images_page.dart';

import 'di/injection.dart';
import 'generated/l10n.dart';

void main() async {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({
    Key? key,
    this.savedThemeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        title: 'Flutter Demo',
        theme: light,
        darkTheme: dark,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: ImagesPage.routeName,
        routes: {
          ImagesPage.routeName: (context) => BlocProvider(
                create: (context) => sl<ImageListBloc>(),
                child: const ImagesPage(),
              ),
          ImageDetailPage.routeName: (context) => const ImageDetailPage(),
        },
      ),
    );
  }
}
