import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/gift_model.dart';

part 'gif_cubit.freezed.dart';
part 'gif_state.dart';

class GifCubit extends Cubit<GiftState> {
  GifCubit() : super(GiftState.initial());

  requestGifList() async {
    List<GiftModel> lsGif = [
      GiftModel(id: 1, urlImage: "https://images8.alphacoders.com/105/1054256.jpg", height: 200, favorite: true),
      GiftModel(
          id: 2,
          urlImage: "https://c4.wallpaperflare.com/wallpaper/410/867/750/vector-forest-sunset-forest-sunset-forest-wallpaper-thumb.jpg",
          height: 300,
          favorite: false),
      GiftModel(id: 3, urlImage: "https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616__340.jpg", height: 300, favorite: false),
      GiftModel(id: 4, urlImage: "https://images8.alphacoders.com/105/1054256.jpg", height: 500, favorite: true),
      GiftModel(id: 5, urlImage: "https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616__340.jpg", height: 400, favorite: false),
    ];
    emit(state.copyWith(giftModel: lsGif));
  }
}
