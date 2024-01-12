import '../../domain/entities/params.dart';
import '../../domain/repositories/uri_repository.dart';

class UriRepositoryImpl implements UriRepository {
  Params _params = Params.initial();

  UriRepositoryImpl() {
    _params = Params.fromQueryParams(Uri.base.queryParameters);
  }

  @override
  Params getParams() {
    return _params;
  }

  @override
  void setParamsFromUri(Params params) {
    _params = _params.copyWith(redirectUri: params.redirectUri);
  }
}
