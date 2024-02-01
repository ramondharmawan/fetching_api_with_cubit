import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'core/di/injector.dart';
import 'features/user/presentation/cubit/user_cubit.dart';
import 'features/user/presentation/pages/user_page.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Cosume API with Cubit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider.value(
        value: GetIt.I<UserCubit>(),
        child: const UserPage(),
      ),
    );
  }
}
