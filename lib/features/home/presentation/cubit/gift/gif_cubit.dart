import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/domain/error/faillure.dart';
import '../../../../../core/domain/use_cases/use_case.dart';
import '../../../../../injection_container.dart';
import '../../../domain/models/gif_model.dart';
import '../../../domain/use_cases/get_gifs_use_case.dart';

part 'gif_cubit.freezed.dart';
part 'gif_state.dart';

class GifCubit extends Cubit<GiftState> {
  final GetGifsUseCase _getGifsUseCase;

  GifCubit({GetGifsUseCase? getGifsUseCase})
      : _getGifsUseCase = getGifsUseCase ?? sl(),
        super(GiftState.initial());

  void requestGifList() async {
    emit(state.copyWith(isLoading: true));
    final result = await _getGifsUseCase.call(NoParams());
    result.fold(
      (left) => emit(state.copyWith(error: ServerFailure("Fail"), isLoading: false)),
      (right) => emit(state.copyWith(gifList: right, isLoading: false)),
    );
  }
}
