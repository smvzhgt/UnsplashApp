import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/detail/presentation/page/image_detail_page.dart';
import 'package:intl/intl.dart';

class ImageItem extends StatelessWidget {
  final ImageModel model;
  const ImageItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ImageDetailPage.routeName,
            arguments: model);
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _buildImage(model.urls.thumb),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTopLabelWidget(context, size),
              _buildBottomLabelWidget(context, size)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return imageUrl.isEmpty
        ? Image(image: AssetImage(kNoImagePlaceholder), fit: BoxFit.fill)
        : Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 0)
                      : null,
                ),
              );
            },
          );
  }

  Widget _buildTopLabelWidget(BuildContext context, Size size) {
    return model.altDescription.isNotEmpty
        ? Container(
            color: Theme.of(context).cardColor,
            width: size.width / kTopContainerCoefficientWidth,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                toBeginningOfSentenceCase(model.altDescription) ??
                    model.altDescription,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(color: Theme.of(context).focusColor),
              ),
            ),
          )
        : SizedBox.shrink();
  }

  Widget _buildBottomLabelWidget(BuildContext context, Size size) {
    return model.user.name.isNotEmpty
        ? Container(
            color: Theme.of(context).cardColor,
            height: size.width * kBottomContainerCoefficientHeight,
            width: size.width / kBottomContainerCoefficientWidth,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                model.user.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: Theme.of(context).focusColor),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
