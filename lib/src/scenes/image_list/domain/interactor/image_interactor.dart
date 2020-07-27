import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_app/core/ecxceptions.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/repositories/image_repository.dart';

abstract class ImageInteractor {
  Future<Either<NetworkException, List<ImageModel>>> fetchImages();
}

class ImageInteractorImpl implements ImageInteractor {
  final ImageRepository repository;

  ImageInteractorImpl({
    @required this.repository,
  });
  
  @override
  Future<Either<NetworkException, List<ImageModel>>> fetchImages() {
    return repository.fetchImages();
  }
}
