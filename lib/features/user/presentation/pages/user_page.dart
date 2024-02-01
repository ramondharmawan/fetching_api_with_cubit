import 'package:fetching_api_with_cubit/features/user/presentation/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Consume API with Cubit"),
      ),
      body: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
        return state.when(
            initial: () => Center(
                  child: ElevatedButton(
                      onPressed: () => context.read<UserCubit>().fetchUsers(),
                      child: const Text('Get User')),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (users) {
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(users[index].name),
                      subtitle: Text(users[index].email));
                },
              );
            },
            error: ((error) => Center(
                  child: Text(error),
                )));
      }),
    );
  }
}
