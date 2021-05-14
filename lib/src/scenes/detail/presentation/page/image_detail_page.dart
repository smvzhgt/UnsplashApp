import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/generated/l10n.dart';

class ImageDetailPage extends StatelessWidget {
  static const routeName = 'detailPage';
  const ImageDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageModel model =
        ModalRoute.of(context)?.settings.arguments as ImageModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).detail_image_page_title),
      ),
      body: Center(
          child: model.urls?.regular != null
              ? Image.network(model.urls?.regular ?? "")
              : Image(
                  image: AssetImage(kNoImagePlaceholder),
                )),
    );
  }
}
