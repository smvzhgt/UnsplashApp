import 'package:flutter/material.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/detail/presentation/page/image_detail_page.dart';

class ImageItem extends StatelessWidget {
  final ImageModel model;
  const ImageItem({
    Key key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return ImageDatailPage(model: model);
            },
          ),
        );
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            model.urls.regular,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black54,
              height: size.width * 0.15,
              width: size.width / 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, top: 4.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                model.altDescription == null ? '' : model.altDescription,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.black54,
              height: size.width * 0.07,
              width: size.width / 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                model.user.username,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
