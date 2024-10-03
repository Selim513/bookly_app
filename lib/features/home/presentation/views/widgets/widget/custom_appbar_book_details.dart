import 'package:bookly_app/core/function/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbarBookDetails extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbarBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            goBack(context);
          },
          icon: const Icon(CupertinoIcons.xmark)),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.cart))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
