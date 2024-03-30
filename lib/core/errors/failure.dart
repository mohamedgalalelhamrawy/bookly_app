
import 'package:dio/dio.dart';

abstract class failure{

  final String errmessage;
  const failure(this.errmessage);
}

class ServerFailure extends failure{
  ServerFailure(super.errmessage);

    factory ServerFailure.fromDioError(DioException dioError){
      switch (dioError.type){
        case DioExceptionType.connectionTimeout:
        return ServerFailure("connection time out with api services");
        case DioExceptionType.sendTimeout:
           return ServerFailure("Send time out with api services");
        case DioExceptionType.receiveTimeout:
         return ServerFailure("Receive time out with api services");
        case DioExceptionType.badCertificate:
           
        case DioExceptionType.badResponse:
          return ServerFailure.FromResponse(dioError.response!.statusCode,dioError.response!.data);
        case DioExceptionType.cancel:
         return ServerFailure("request to ApiServer was canceld");
        case DioExceptionType.connectionError:
          return ServerFailure("no internet connection");
        case DioExceptionType.unknown:
          return ServerFailure("unexpected error please try later");
        default :
           return ServerFailure("opps there was an error ,please try later");
      }
    }

    factory ServerFailure.FromResponse(int?statuscode , dynamic response){
  if(statuscode == 400 || statuscode == 401 || statuscode == 403){
    return ServerFailure(response["error"]["message"]);
  }else if(statuscode == 404){
    return ServerFailure("your req not found , please try later");
  }else if(statuscode == 500){
    return ServerFailure("internet server error");
  }else {
    return ServerFailure("opps there was an error ,please try later");
  }
}
}

