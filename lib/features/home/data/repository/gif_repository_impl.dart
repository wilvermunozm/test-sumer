import 'package:dartz/dartz.dart';
import 'package:test_sumer/features/home/data/dto/gif_dto.dart';

import '../../../../core/domain/error/faillure.dart';
import '../../../../injection_container.dart';
import '../../domain/models/gif_model.dart';
import '../../domain/repository/gif_repository.dart';
import '../data_source/gif_data_source.dart';

class GifRepositoryImpl extends GifRepository {
  final GifRemoteDataSource _gifRemoteDataSource;

  GifRepositoryImpl({GifRemoteDataSource? gifRemoteDataSource}) : _gifRemoteDataSource = gifRemoteDataSource ?? sl();

  @override
  Future<Either<Failure, List<GifModel>>> getGifs() async {
    try {
      var result = await _gifRemoteDataSource.getGifs();
      final gifModels = result.map((gifDTO) => gifDTO.toModel()).toList();
      return Right(gifModels);
    } on ServerFailure catch (e) {
      return Left(ServerFailure('Server error while sending the request: $e'));
    } catch (e) {
      return Left(ServerFailure('Server error while sending the request'));
    }
  }
}
