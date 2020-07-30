import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';

class ImageDatailPage extends StatelessWidget {
  static const routeName = 'detailPage';
  const ImageDatailPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageModel model = ModalRoute.of(context).settings.arguments;
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
