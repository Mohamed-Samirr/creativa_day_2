import 'package:dio/dio.dart';

class DioHelpers {
  static final dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 10)
  ));
  static dioGet (String url , [Map <String,dynamic>? parameters]) async {
    try{
      Response res = await dio.get(url,queryParameters: parameters);
      if (res.statusCode == 200){
        return res.data;
      }else {
        return {'error':'some error occurred'};
      }
      
    } catch(e){
      return {'errror':'some error occurred'};
    
  }

  }

}