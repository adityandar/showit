import '../../dependencies/dependencies.dart';

class LoadDataState<T> extends Equatable {
  const LoadDataState({
    this.data,
    this.error = '',
  });
  final T? data;
  final String error;

  bool get isInitial => this is LoadDataInitial;
  bool get isLoading => this is LoadDataLoading;
  bool get isSuccess => this is LoadDataSuccess;
  bool get isFailed => this is LoadDataFailed;

  @override
  List<Object?> get props => [data];
}

class LoadDataInitial<T> extends LoadDataState<T> {
  const LoadDataInitial();
}

class LoadDataLoading<T> extends LoadDataState<T> {
  const LoadDataLoading();
}

class LoadDataSuccess<T> extends LoadDataState<T> {
  const LoadDataSuccess([T? data]) : super(data: data);
}

class LoadDataFailed<T> extends LoadDataState<T> {
  const LoadDataFailed(String? error) : super(error: error ?? '');
}
