part of 'gif_cubit.dart';

@freezed
abstract class GiftState with _$GiftState {
  const factory GiftState({
    required List<GifModel> gifList,
    required bool isLoading,
    Failure? error,
  }) = _GiftState;

  factory GiftState.initial() => const GiftState(
        gifList: [],
        isLoading: false,
        error: null,
      );
}
