class Params {
  final String? redirectUri;

  Params._({required this.redirectUri});

  bool get isValidParams => _isValidRedirectUri;
  bool get _isValidRedirectUri => (redirectUri?.isNotEmpty ?? false);
  // Callbacks.verificaDominio(redirectUri ?? '');

  String get paramsRequiredMessage => [
        !_isValidRedirectUri ? 'redirect_uri' : null
      ].whereType<String>().join(', ');

  factory Params.fromQueryParams(Map<String, String> queryParams) {
    return Params._(redirectUri: queryParams['redirect_uri']);
  }
  factory Params.initial() {
    return Params._(redirectUri: '');
  }

  Params copyWith({
    String? redirectUri,
  }) {
    return Params._(
      redirectUri: redirectUri ?? this.redirectUri,
    );
  }
}
