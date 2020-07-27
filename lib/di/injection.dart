import 'package:get_it/get_it.dart';
import 'package:unsplash_app/core/api_client/api_client.dart';
import 'package:unsplash_app/src/scenes/image_list/data/datasources/remote_data_source.dart';
import 'package:unsplash_app/src/scenes/image_list/data/repositories/image_repository.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/interactor/image_interactor.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/repositories/image_repository.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/bloc/image_list_bloc.dart';

final sl = GetIt.instance;

void init() {
  // Bloc
  sl.registerFactory(() => ImageListBloc(interactor: sl()));

  // Interactor
  sl.registerLazySingleton<ImageInteractor>(
      () => ImageInteractorImpl(repository: sl()));

  // Repository
  sl.registerLazySingleton<ImageRepository>(
      () => ImageRepositoryImpl(remoteDataSource: sl()));

  // RemoteDataSource
  sl.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(apiClient: sl()));

  // Api Client
  sl.registerLazySingleton<ApiClient>(() => ApiClientImpl());
}
