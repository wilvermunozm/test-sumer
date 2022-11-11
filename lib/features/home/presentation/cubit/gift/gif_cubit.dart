import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/domain/error/faillure.dart';
import '../../../../../injection_container.dart';
import '../../../domain/models/gif_model.dart';
import '../../../domain/use_cases/get_gifs_use_case.dart';

part 'gif_cubit.freezed.dart';
part 'gif_state.dart';

class GifCubit extends Cubit<GifState> {
  final GetGifsUseCase _getGifsUseCase;

  GifCubit({GetGifsUseCase? getGifsUseCase})
      : _getGifsUseCase = getGifsUseCase ?? sl(),
        super(GifState.initial());

  void requestGifList() async {
    emit(state.copyWith(isLoading: true));
    final result = await _getGifsUseCase.call("");
    result.fold(
      (left) => emit(state.copyWith(error: ServerFailure("Fail"), isLoading: false)),
      (right) => emit(state.copyWith(gifList: right, isLoading: false)),
    );
  }

  void requestSearchGifList(String value) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getGifsUseCase.call(value);
    result.fold(
      (left) => emit(state.copyWith(error: ServerFailure("Fail"), isLoading: false)),
      (right) => emit(state.copyWith(gifList: right, isLoading: false)),
    );
  }

  void saveFavoriteList(String idFavorite) async {
    List<String> newFavoritesList = [];
    newFavoritesList.addAll(state.favoriteList);
    if(!state.favoriteList.contains(idFavorite)){
      newFavoritesList.add(idFavorite);
    }
    emit(state.copyWith(favoriteList: newFavoritesList, isLoading: false));
  }

  bool isFavorite(String favoriteId) => !state.favoriteList.contains(favoriteId);
}
