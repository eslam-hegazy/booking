import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_states.freezed.dart';

@freezed
class RegisterStates<T> with _$RegisterStates<T> {
  const factory RegisterStates.initial() = _Initial;
  const factory RegisterStates.loadingRegisterStates() = LoadingRegisterStates;
  const factory RegisterStates.successRegisterStates(dynamic data) =
      SuccessRegisterStates<T>;
  const factory RegisterStates.errorRegisterStates({required String error}) =
      ErrorRegisterStates;
}
