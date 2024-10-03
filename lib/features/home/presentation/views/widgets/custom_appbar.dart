import 'package:bookly_app/core/function/route.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/Logo.png',
        width: 90,
      ),
      actions: [
        IconButton(
            onPressed: () {
              gotoPush(context, const SearchView());
            },
            icon: const Icon(CupertinoIcons.search))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
