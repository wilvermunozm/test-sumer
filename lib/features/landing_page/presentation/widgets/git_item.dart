import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_sumer/features/landing_page/domain/models/gift_model.dart';
import 'package:test_sumer/features/landing_page/presentation/bloc/home/home_cubit.dart';

import '../../../../core/config/constants/dimensions.dart';

class GifItem extends StatelessWidget {
  const GifItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return _ListGift(gift: state.giftModel);
      },
    );
  }
}

Widget _ListGift({required List<GiftModel> gift}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: kDimens20,
      left: kDimens20,
      right: kDimens20,
    ),
    child: MasonryGridView.count(
      itemCount: gift.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(kDimens8),
          child: GiftItems(height: gift[index].height, urlImage: gift[index].urlImage, favorite: gift[index].favorite),
        );
      },
      crossAxisCount: 2,
    ),
  );
}
