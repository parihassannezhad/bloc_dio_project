import 'package:bloc_dio_project/core/data_state.dart';
import 'package:dio/dio.dart';

class APIprovider {
  Dio dio = Dio();

  Future loadProducts() async {
    var response = await dio.get('https://json.xstack.ir/api/v1/posts');

    if (response.statusCode != 200) {
      return DataFailed(error: 'Error,status code is : ${response.statusCode}');
    }
    return DataSucces(data: response.data);
  }
}
