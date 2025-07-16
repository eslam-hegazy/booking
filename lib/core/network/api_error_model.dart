class ApiErrorModel {
  final String message;
  final int code;

  ApiErrorModel({required this.message, required this.code});

  // Factory constructor to create an instance from a JSON map
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] as String,
      code: json['code'] as int,
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
    };
  }
}
