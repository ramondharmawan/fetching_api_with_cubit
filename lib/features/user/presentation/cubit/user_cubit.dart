import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fetching_api_with_cubit/features/user/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@singleton
class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.initial());

  fetchUsers() async {
    try {
      emit(const UserState.loading());
      Dio dio = Dio();

      final res = await dio.get('https://jsonplaceholder.typicode.com/users');

      if (res.statusCode == 200) {
        final users = res.data.map<UserEntity>((item) {
          return UserEntity.fromJson(item);
        }).toList();

        emit(UserState.success(users));
      } else {
        emit(UserState.error("Error loading users: ${res.data.toString()}"));
      }
    } catch (e) {
      emit(UserState.error("Error loading users: ${e.toString()}"));
    }
  }
}
