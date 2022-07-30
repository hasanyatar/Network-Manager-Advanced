class BaseError {
  int code;
  String message;

  BaseError({required this.code, required this.message});
  factory BaseError.fromJson(Map<String, dynamic> json) => BaseError(
        code: json['code'] as int,
        message: json['message'] as String,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
      };
}
