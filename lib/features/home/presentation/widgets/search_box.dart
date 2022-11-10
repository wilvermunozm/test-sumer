import 'package:flutter/material.dart';

import '../../../../core/config/constants/colors.dart';
import '../../../../core/config/constants/dimensions.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDimens50, left: kDimens10, right: kDimens10, bottom: kDimens10),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDimens10),
        ),
        height: kDimens50,
        child: const TextField(
          textInputAction: TextInputAction.search,
          // focusNode: _focusInput,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(fontSize: kDimens16),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: kColorBlack,
              size: kDimens30,
            ),
            hintText: 'Search by name',
            filled: true,
          ),
        ),
      ),
    );
  }
}
