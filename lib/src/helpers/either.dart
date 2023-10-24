abstract class Either<L, R> {
  T when<T>(
    T Function(L) onLeft,
    T Function(R) onRight,
  ) {
    if (this is Left) {
      return (this as Left).value;
    } else if (this is Right) {
      return ((this as Right).value);
    } else {
      throw Exception("Unknown Either type");
    }
  }
}

class Left<L, R> extends Either<L, R> {
  final L value;
  Left(this.value);
}

class Right<L, R> extends Either<L, R> {
  final R value;
  Right(this.value);
}
