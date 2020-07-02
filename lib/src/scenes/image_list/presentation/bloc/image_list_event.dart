part of 'image_list_bloc.dart';

abstract class ImageListEvent extends Equatable {
  const ImageListEvent();
}

class FetchAllImageEvent extends ImageListEvent {
  @override
  List<Object> get props => throw UnimplementedError();
}
