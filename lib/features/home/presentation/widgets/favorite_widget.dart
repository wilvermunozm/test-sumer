import 'package:flutter/material.dart';

import '../../../../core/config/constants/colors.dart';
import '../../../../core/config/constants/dimensions.dart';

class FavoriteWidget extends StatelessWidget {
  bool favorite;

  FavoriteWidget({
    key,
    required this.favorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: kDimens10,
        foregroundColor: favorite == true ? kColorWhite : kColorPinkAccent,
        backgroundColor: favorite == true ? kColorRedAccent : kColorWhite,
        shape: const CircleBorder(side: BorderSide.none),
      ),
      onPressed: () => () {},
      child: Icon(
        favorite != true ? Icons.favorite_border : Icons.favorite_sharp,
      ),
    );
  }
}
