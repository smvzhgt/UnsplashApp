import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash_app/generated/l10n.dart';
import 'package:unsplash_app/core/pages/error_page.dart';
import 'package:unsplash_app/core/pages/loading_page.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/bloc/image_list_bloc.dart';
import 'package:unsplash_app/src/scenes/image_list/presentation/widgets/image_item.dart';

class ImagesPage extends StatefulWidget {
  static const routeName = '/';
  const ImagesPage({
    Key? key,
  }) : super(key: key);

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ImageListBloc>(context).add(FetchAllImageEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).app_title),
      ),
      body: Center(
        child: BlocBuilder<ImageListBloc, ImageListState>(
          builder: (context, state) {
            if (state is ImageListLoadingState) {
              return const LoadingPage();
            } else if (state is ImageListLoadedState) {
              final entities = state.images;
              return _buildList(entities);
            } else if (state is ImageListErrorState) {
              return const ErrorPage();
            } else if (state is ImageListInitialState) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _buildList(List<ImageModel> entities) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ImageItem(model: entities[index]);
      },
      itemCount: entities.length,
    );
  }
}
