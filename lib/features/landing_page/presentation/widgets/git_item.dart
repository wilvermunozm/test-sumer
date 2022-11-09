import 'package:flutter/material.dart';
import 'package:test_sumer/features/landing_page/domain/models/gift_model.dart';
import 'package:test_sumer/features/landing_page/presentation/widgets/favorite_widget.dart';

class GiftItem extends StatelessWidget {
  GiftModel gif;

  GiftItem({key, required this.gif}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (gif.urlImage.isEmpty) {
      return const SizedBox();
    }
    return Container(
      height: gif.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(gif.urlImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FavoriteWidget(favorite: gif.favorite),
        ],
      ),
    );
  }
}
