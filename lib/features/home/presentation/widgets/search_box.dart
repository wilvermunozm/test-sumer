import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_sumer/core/presentation/widgets/loader_widget.dart';
import 'package:test_sumer/features/home/presentation/cubit/gift/gif_cubit.dart';

import '../../../../core/config/constants/colors.dart';
import '../../../../core/config/constants/dimensions.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: kDimens50, left: kDimens10, right: kDimens10, bottom: kDimens10),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDimens20),
        ),
        height: kDimens50,
        child: TextField(
          controller: myController,
          textInputAction: TextInputAction.search,
          decoration:  InputDecoration(
            fillColor: kColorGrey.withOpacity(0.5),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(kDimens20)),
            ),
            focusedBorder:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(kDimens20)),
            ),
            hintStyle: const TextStyle(fontSize: kDimens16),
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: kColorBlack,
              size: kDimens30,
            ),
            hintText: 'Search by name',
            filled: true,
          ),
          onChanged: (value) {
            if (value.length > 3) context.read<GifCubit>().requestSearchGifList(value);
          },
        ),
      ),
    );
  }
}
