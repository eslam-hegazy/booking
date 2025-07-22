import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loadingLoginState() = LoadingLoginState;
  const factory LoginState.successLoginState(dynamic data) =
      SuccessLoginState<T>;
  const factory LoginState.errorLoginState({required String error}) =
      ErrorLoginState;
}
