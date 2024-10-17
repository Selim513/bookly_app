import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featuredBookCubit/featuered_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newestBookCubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => FeatueredBooksCubit(getIt.get<HomeRepoImpl>())
              ..getFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewestBookCubit(getIt.get<HomeRepoImpl>())..getNewestBooks(),
          )
        ], child: const HomeViewBody()));
  }
}
