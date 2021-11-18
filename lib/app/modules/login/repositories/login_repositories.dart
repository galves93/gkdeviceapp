import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gkdeviceapplication/app/modules/login/model/login_model.dart';
import 'package:gkdeviceapplication/app/server/request_model.dart';
import 'package:gkdeviceapplication/app/server/server_cofig.dart';

class LoginRepositories {
  Dio dio = Dio();

  Future<LoginModel> fazerLogin(String usuario, String senha) async {
    LoginModel model = LoginModel();

    Map<String, dynamic> header = {
      "login": usuario,
      "senha": senha,
    };

    dio.options.headers = header;

    Response response = await dio.get(
      kDebugMode
          ? ServerConfig.baseUrlTeste + "/usuario"
          : ServerConfig.baseUrl + "/usuario",
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );

    RequestVO request = RequestVO.fromJson(response);

    if (request.statusCode == 200) {
      model = LoginModel.fromJson(request.value);
      return model;
    }
    return model;
  }
}
