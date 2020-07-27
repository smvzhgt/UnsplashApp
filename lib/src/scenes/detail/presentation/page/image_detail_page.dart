import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

class ImageDatailPage extends StatelessWidget {
  final ImageModel model;
  const ImageDatailPage({
    Key key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(DETAIL_IMAGE_PAGE_TITLE),
      ),
      body: Center(
        child: Image.network(model.urls.regular),
      ),
    );
  }
}
