import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash_app/core/api_client/api_client.dart';
import 'package:unsplash_app/src/scenes/image_list/data/datasources/remote_data_source.dart';
import 'package:unsplash_app/src/scenes/image_list/data/repositories/image_repository.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/interactor/image_interactor.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/pages/images_page.dart';

import 'src/scenes/image_list/presentation/bloc/image_list_bloc.dart';

void main() {
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
        create: (context) => ImageListBloc(ImageInteractorImpl(ImageRepositoryImpl(RemoteDataSourceImpl(ApiClientImpl())))),
        child: const ImagesPage(),
      ) 
    );
  }
}

