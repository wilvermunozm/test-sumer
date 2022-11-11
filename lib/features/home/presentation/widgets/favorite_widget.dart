import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_sumer/features/home/domain/models/gif_model.dart';

import '../../../../core/config/constants/colors.dart';
import '../../../../core/config/constants/dimensions.dart';
import '../cubit/gift/gif_cubit.dart';

class FavoriteWidget extends StatelessWidget {
  final GifModel gif;

  const FavoriteWidget({
    key,
    required this.gif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavorite = context.read<GifCubit>().isFavorite(gif.id);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: kDimens10,
        foregroundColor: kColorPinkAccent,
        backgroundColor: kColorWhite,
        shape: const CircleBorder(side: BorderSide.none),
      ),
      onPressed: () {
        context.read<GifCubit>().saveFavoriteList(gif.id);
      },
      child: Icon(
        isFavorite ? Icons.favorite_border : Icons.favorite_sharp,
      ),
    );
  }
}
