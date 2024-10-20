import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.onChanged,
  });
  final void Function(String value)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          focusedBorder: outLineBorders(),
          enabledBorder: outLineBorders(),
          hintText: 'Search',
          suffixIcon: const Icon(CupertinoIcons.search)),
    );
  }

  OutlineInputBorder outLineBorders() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(color: Colors.grey));
  }
}
