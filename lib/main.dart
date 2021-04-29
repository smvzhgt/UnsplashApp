import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash_app/src/scenes/detail/presentation/page/image_detail_page.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/bloc/image_list_bloc.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/pages/images_page.dart';
import 'package:unsplash_app/di/injection.dart' as di;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'di/injection.dart';

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ImagesPage.routeName,
      routes: {
        ImagesPage.routeName: (context) => BlocProvider(
              create: (context) => sl<ImageListBloc>(),
              child: const ImagesPage(),
            ),
        ImageDatailPage.routeName: (context) => const ImageDatailPage(),
      },
    );
  }
}
