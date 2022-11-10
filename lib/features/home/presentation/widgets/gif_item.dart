import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:test_sumer/core/config/constants/dimensions.dart';
import 'package:test_sumer/core/presentation/widgets/loader_widget.dart';

import '../../domain/models/gif_model.dart';
import 'favorite_widget.dart';

class GifItem extends StatelessWidget {
  GifModel gif;

  GifItem({key, required this.gif}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (gif.urlImage.isEmpty) {
      return const SizedBox();
    }
    return Stack(
      children: [
        GifView.network(
          gif.urlImage,
          progress: const LoaderWidget(),
          fit: BoxFit.cover,
          height: gif.height,
        ),

        Positioned(
          bottom: kDimens5,
          right: kDimens5,
          child: FavoriteWidget(favorite: gif.favorite),
        ),
      ],
    );
  }
}
