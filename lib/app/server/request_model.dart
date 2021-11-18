import 'package:dio/dio.dart';

class Request {
  RequestVO? request;
}

class RequestVO {
  final value;
  final String? message;
  final int? statusCode;

  RequestVO({this.value, this.message, this.statusCode});

  factory RequestVO.fromJson(Response response) {
    Map<String, dynamic> json = response.data;
    var data = RequestVO(
        statusCode: response.statusCode,
        value: json['data'] ?? '',
        message: json['message']);

    return data;
  }
}
