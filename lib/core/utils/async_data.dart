sealed class AsyncData<T> {
  B when<B>({
    required B Function(T data) onData,
    required B Function() onLoading,
    required B Function(String message) onError,
  }) {
    return switch (this) {
      AsyncValue<T>(:final data) => onData(data),
      AsyncLoading<T>() => onLoading(),
      AsyncError<T>(:final message) => onError(message),
    };
  }
}

class AsyncValue<T> extends AsyncData<T> {
  final T data;

  AsyncValue({required this.data});
}

class AsyncLoading<T> extends AsyncData<T> {}

class AsyncError<T> extends AsyncData<T> {
  final String message;

  AsyncError({required this.message});
}
