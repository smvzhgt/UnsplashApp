import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/generated/l10n.dart';

class ImageDetailPage extends StatelessWidget {
  static const routeName = 'detailPage';
  const ImageDetailPage({
    Key? key,
  }) : super(key: key);

  String imageUrl(ImageModel model) {
    return model.urls?.regular ?? "";
  }

  @override
  Widget build(BuildContext context) {
    final ImageModel model =
        ModalRoute.of(context)?.settings.arguments as ImageModel;
    final url = imageUrl(model);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).detail_image_page_title),
      ),
      body: Center(
        child: url.isNotEmpty
            ? Image.network(url)
            : Image(image: AssetImage(kNoImagePlaceholder)),
      ),
    );
  }
}
