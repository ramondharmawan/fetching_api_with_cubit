part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.success(List<UserEntity> users) = _Success;
  const factory UserState.error(String errorMessage) = _Error;
}
