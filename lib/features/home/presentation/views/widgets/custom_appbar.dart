import 'package:bookly_app/core/function/route.dart';
import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/search/manger/search_Cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            SizedBox(width: 70, child: Image.asset('assets/Logo.png')),
            const Spacer(),
            IconButton(
                onPressed: () {
                  gotoPush(
                      context,
                      BlocProvider(
                        create: (context) =>
                            SearchCubit(getIt.get<SearchRepoImpl>()),
                        child: const SearchView(),
                      ));
                },
                icon: const Icon(CupertinoIcons.search))
          ],
        ),
      ),
    );
  }
}
