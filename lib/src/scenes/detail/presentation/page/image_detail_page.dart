import 'package:flutter/material.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/generated/l10n.dart';

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
        title: Text(S.of(context).detail_image_page_title),
      ),
      body: Center(
        child: Image.network(model.urls.regular),
      ),
    );
  }
}
