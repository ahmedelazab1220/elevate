import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/utils/dependency_injection.dart';
import '../../data/repos/home_repo_implementation.dart';
import '../view_model/home_cubit/home_cubit.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => HomeCubit(
            homeRepo: serviceLocator<HomeRepoImplementation>(),
          )..fetchProducts(),
          child: HomeBody(),
        ),
      ),
    );
  }
}
