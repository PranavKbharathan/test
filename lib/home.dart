import 'package:bloc_test/injectabe.dart';
import 'package:bloc_test/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.updateName("Pranav")),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (ctx, state) {
            return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: ctx.read<HomeBloc>(),
                        child: ProfilePage(
                          name: state.name,
                        ),
                      ),
                    )),
                child: Text(state.name));
          },
        ),
      ),
    );
  }
}
