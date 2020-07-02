part of 'image_list_bloc.dart';

abstract class ImageListState extends Equatable {
  const ImageListState();
}

class ImageListInitialState extends ImageListState {
  @override
  List<Object> get props => [];
}

class ImageListLoadingState extends ImageListState {
  @override
  List<Object> get props => [];
}

class ImageListErrorState extends ImageListState {
  @override
  List<Object> get props => [];
}

class ImageListLoadedState extends ImageListState {
  final List<ImageModel> images;

  ImageListLoadedState(this.images);

  @override
  List<Object> get props => [];
}
