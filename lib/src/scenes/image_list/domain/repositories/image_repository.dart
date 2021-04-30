import 'package:dartz/dartz.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

abstract class ImageRepository {
  Future<Either<Exception, List<ImageModel>>> fetchImages();
}
