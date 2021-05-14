import 'package:flutter/material.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/detail/presentation/page/image_detail_page.dart';

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
          _buildImage(model.urls?.thumb ?? ""),
          _buildTopContainer(context, size),
          _buildTopLabel(context, model.altDescription ?? ""),
          _buildBottomContainer(context, size),
          _buildBottomLabel(context, model.user?.username ?? "")
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return imageUrl.isEmpty
        ? Image(image: AssetImage(kNoImagePlaceholder))
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

  Widget _buildTopContainer(BuildContext context, Size size) {
    return model.altDescription != null
        ? Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Theme.of(context).cardColor,
              height: size.width * kTopContainerCoefficientHeight,
              width: size.width / kTopContainerCoefficientWidth,
            ),
          )
        : SizedBox.shrink();
  }

  Widget _buildTopLabel(BuildContext context, String text) {
    return text.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(
              left: kTopLabelPadding,
              top: kTopLabelPadding,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(color: Theme.of(context).focusColor),
              ),
            ),
          )
        : SizedBox.shrink();
  }

  Widget _buildBottomContainer(BuildContext context, Size size) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        color: Theme.of(context).cardColor,
        height: size.width * kBottomContainerCoefficientHeight,
        width: size.width / kBottomContainerCoefficientWidth,
      ),
    );
  }

  Widget _buildBottomLabel(BuildContext context, String text) {
    return text.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(
              left: kBottomLabelPadding,
              bottom: kBottomLabelPadding,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                text,
                style: TextStyle(color: Theme.of(context).focusColor),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
