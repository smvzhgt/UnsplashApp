import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unsplash_app/src/scenes/image_list/data/models/image_model.dart';
import 'package:unsplash_app/src/scenes/image_list/domain/interactor/image_interactor.dart';

part 'image_list_event.dart';
part 'image_list_state.dart';

class ImageListBloc extends Bloc<ImageListEvent, ImageListState> {
  final ImageInteractor interactor;

  ImageListBloc(this.interactor);

  @override
  ImageListState get initialState => ImageListInitialState();

  @override
  Stream<ImageListState> mapEventToState(
    ImageListEvent event,
  ) async* {
    if (event is FetchAllImageEvent) {
      yield ImageListLoadingState();
      final either = await interactor.fetchImages();
      if (either.isRight()) {
        final images = either.getOrElse(null);
        if (images.isEmpty) {
          yield ImageListInitialState();
        } else {
          yield ImageListLoadedState(images);
        }
      } else {
        yield ImageListErrorState();
      }
    }
  }
}
