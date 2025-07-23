import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_states.freezed.dart';

@freezed
class ProfileStates<T> with _$ProfileStates<T> {
  const factory ProfileStates.initial() = _Initial;
  const factory ProfileStates.loadingProfileStates() = LoadingProfileStates;
  const factory ProfileStates.successProfileStates(dynamic data) =
      SuccessProfileStates<T>;
  const factory ProfileStates.errorProfileStates({required String error}) =
      ErrorProfileStates;
}
