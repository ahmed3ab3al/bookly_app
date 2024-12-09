
import 'package:bookly_app/core/api/end_points.dart';

class ErrorModel {
  int code;
  String message;

  ErrorModel({required this.code, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json[ApiKeys.code],
      message: json[ApiKeys.message],
    );
  }
}
