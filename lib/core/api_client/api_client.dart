import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/core/wrappers/dotenv_wrapper.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

import '../exceptions.dart';

abstract class ApiClient {
  Future<Either<Exception, List<ImageModel>>> fetchImages();
}

class ApiClientImpl implements ApiClient {
  static final Client _client = Client();

  static Future<Either<Exception, List<ImageModel>>> doRequest(Uri url) async {
    final response = await _client.get(url);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body) as List;
      try {
        List<ImageModel> imageList =
            jsonList.map((e) => ImageModel.fromJson(e)).toList();
        return Right(imageList);
      } on DataParsingException {
        return Left(DataParsingException());
      }
    } else {
      return Left(NetworkException());
    }
  }

  @override
  Future<Either<Exception, List<ImageModel>>> fetchImages() async {
    final url = Uri.https(
      BASE_URL,
      '/photos/',
      {
        "client_id": DotenvWrapper.instance.getValue(DotenvWrapper.apiKey),
      },
    );

    return compute(doRequest, url);
  }
}
