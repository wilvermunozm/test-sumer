import 'package:flutter/material.dart';

class WrongWidget extends StatelessWidget {
  const WrongWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Lo sentimos, algo ha salido mal!!"),
      ],
    );
  }
}
