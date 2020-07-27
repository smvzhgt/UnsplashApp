import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash_app/di/injection.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/bloc/image_list_bloc.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/pages/images_page.dart';
import 'package:unsplash_app/di/injection.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider(
          create: (context) => sl<ImageListBloc>(),
          child: const ImagesPage(),
        ));
  }
}
