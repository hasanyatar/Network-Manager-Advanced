import 'base_error.dart';

abstract class BaseResponse<T> {
  late bool error;
  late T data;
  late List<BaseError> errors;

  BaseResponse(Map<String, dynamic> fullJson) {
    parsing(fullJson);
  }
  T fromJson(Map<String, dynamic> json);
  dynamic dataToJson(T data);

  parsing(Map<String, dynamic> fullJson) {
    error = fullJson['error'] ?? false;
    data = fromJson(fullJson);
    errors = parseErrorList(fullJson);
  }

  List<BaseError> parseErrorList(Map<String, dynamic> fullJson) {
    List? errors = fullJson['errors'];
    return errors != null
        ? List<BaseError>.from(errors.map((x) => BaseError.fromJson(x)))
        : <BaseError>[];
  }

  Map<String, dynamic> toJson() => {
        "error": error,
        "data": dataToJson(data),
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
      };
}
