abstract class DataState {}

class DataSucces extends DataState {

  final dynamic data;

  DataSucces({required this.data});
}

class DataFailed extends DataState {
  final String error;
  DataFailed({required this.error});


}
