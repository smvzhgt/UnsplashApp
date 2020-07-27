import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' show Client;
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

import '../ecxceptions.dart';

abstract class ApiClient {
  Future<Either<NetworkException, List<ImageModel>>> fetchImages();
}

class ApiClientImpl implements ApiClient {
  final Client _client = Client();

  @override
  Future<Either<NetworkException, List<ImageModel>>> fetchImages() async {
    final authority = BASE_URL;
    final unencodedPath = '/photos/';
    final queryParams = {
      "client_id": API_KEY,
    };
    var url = Uri.https(
      authority,
      unencodedPath,
      queryParams,
    );
    final response = await _client.get(url);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body) as List;
      List<ImageModel> imageList =
          jsonList.map((e) => ImageModel.fromJson(e)).toList();
      return Right(imageList);
    } else {
      return Left(NetworkException());
    }
  }
}
