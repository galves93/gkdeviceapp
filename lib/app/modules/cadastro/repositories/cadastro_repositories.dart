import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/model/cadastro_model.dart';
import 'package:gkdeviceapplication/app/server/request_model.dart';
import 'package:gkdeviceapplication/app/server/server_cofig.dart';

class CadastroRepositories {
  Dio dio = Dio();
  Future<RequestVO> novoCadastro(CadastroModel cadastroModel) async {
    Response response = await dio.post(
      kDebugMode
          ? ServerConfig.baseUrlTeste + "/usuario"
          : ServerConfig.baseUrl + "/usuario",
      data: cadastroModel.toJson(),
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );

    RequestVO request = RequestVO.fromJson(response);

    return request;
  }
}
