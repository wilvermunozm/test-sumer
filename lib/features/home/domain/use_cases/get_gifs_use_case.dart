import 'package:dartz/dartz.dart';

import '../../../../core/domain/error/faillure.dart';
import '../../../../core/domain/use_cases/use_case.dart';
import '../../../../injection_container.dart';
import '../models/gif_model.dart';
import '../repository/gif_repository.dart';

class GetGifsUseCase implements UseCase<List<GifModel>, String> {
  final GifRepository _gifRepository;

  GetGifsUseCase({GifRepository? gifRepository}) : _gifRepository = gifRepository ?? sl();

  @override
  Future<Either<Failure, List<GifModel>>> call(String search) async {
    return await _gifRepository.getGifs(search);
  }
}
