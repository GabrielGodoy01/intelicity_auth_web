import '../entities/params.dart';

abstract class UriRepository {
  void setParamsFromUri(Params params);
  Params getParams();
}
