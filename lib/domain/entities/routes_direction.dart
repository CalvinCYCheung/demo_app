enum RouteDirection {
  inbound,
  outbound;

  static String byCharacter(String character) {
    return switch (character) {
      'I' => 'inbound',
      'O' => 'outbound',
      _ => throw ArgumentError('Invalid character: $character'),
    };
  }

  RouteDirection get opposite {
    return switch (this) {
      RouteDirection.inbound => RouteDirection.outbound,
      RouteDirection.outbound => RouteDirection.inbound,
    };
  }
}
