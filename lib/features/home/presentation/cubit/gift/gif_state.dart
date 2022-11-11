part of 'gif_cubit.dart';

@freezed
abstract class GifState with _$GifState {
  const factory GifState({
    required List<GifModel> gifList,
    required List<String> favoriteList,
    required bool isLoading,
    Failure? error,
  }) = _GifState;

  factory GifState.initial() => const GifState(
        gifList: [],
        isLoading: false,
        error: null,
        favoriteList: [],
      );
}
