import 'package:dio/dio.dart';

abstract class Failure {
  final String error;

  Failure(this.error);
}

class ServerFailure extends Failure {
  ServerFailure(super.error);
  factory ServerFailure.DioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time out to Servier');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time out to Servier');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time out to Servier');
      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to Server was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      default:
        return ServerFailure('Your code not found , pleas try later!');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403)
      return ServerFailure(response['Error']['message']);
    else if (statusCode == 404) {
      return ServerFailure('Your code not found , pleas try later!');
    } else
      return ServerFailure('Your code not found , pleas try later!');
  }
}
