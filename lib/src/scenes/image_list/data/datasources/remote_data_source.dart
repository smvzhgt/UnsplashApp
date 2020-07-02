import 'package:dartz/dartz.dart';
import 'package:unsplash_app/core/api_client/api_client.dart';
import 'package:unsplash_app/core/ecxceptions.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

abstract class RemoteDataSource {
  Future<Either<NetworkException, List<ImageModel>>> fetchImages();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiClient apiClient;

  RemoteDataSourceImpl(this.apiClient);

  @override
  Future<Either<NetworkException, List<ImageModel>>> fetchImages() {
    return apiClient.fetchImages();
  }
}
