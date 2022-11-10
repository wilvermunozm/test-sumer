import 'package:flutter/material.dart';

import '../../config/constants/colors.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: kColorWhite),
    );
  }
}
