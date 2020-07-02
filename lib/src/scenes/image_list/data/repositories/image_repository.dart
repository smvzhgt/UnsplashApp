import 'package:dartz/dartz.dart';
import 'package:unsplash_app/core/ecxceptions.dart';
import 'package:unsplash_app/src/scenes/image_list/data/datasources/remote_data_source.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/repositories/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final RemoteDataSource remoteDataSource;

  ImageRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<NetworkException, List<ImageModel>>> fetchImages() {
    return remoteDataSource.fetchImages();
  }
}
