import 'package:dartz/dartz.dart';
import 'package:intelicity_auth_web/app/home/domain/entities/params.dart';
import 'package:intelicity_auth_web/app/home/domain/errors/errors.dart';

import '../repositories/uri_repository.dart';

abstract class SetParams {
  Either<Failure, Unit> call(Uri uri);
}

class SetParamsImpl implements SetParams {
  final UriRepository repository;

  SetParamsImpl(this.repository);
  @override
  Either<Failure, Unit> call(Uri uri) {
    final params = Params.fromQueryParams(uri.queryParameters);

    if (!params.isValidParams) {
      return Left(InvalidParams('Invalid parameters'));
    }
    repository.setParamsFromUri(params);
    return const Right(unit);
  }
}
