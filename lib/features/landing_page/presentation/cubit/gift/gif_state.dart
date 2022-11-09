part of 'gif_cubit.dart';

@freezed
abstract class GiftState with _$GiftState {
  const factory GiftState({
    required List<GiftModel> giftModel,
  }) = _GiftState;

  factory GiftState.initial() => const GiftState(giftModel: []);
}
