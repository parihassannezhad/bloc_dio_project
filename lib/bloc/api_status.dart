abstract class APIstatus {}

class APILoading extends APIstatus {}

class APIError extends APIstatus {
  final String error;

  APIError({required this.error});
}

class APICompleted extends APIstatus {
  final dynamic data;

  APICompleted({required this.data});
}
