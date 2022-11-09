import 'package:flutter/material.dart';
import 'package:test_sumer/features/landing_page/presentation/widgets/git_item.dart';

import '../../../core/config/constants/colors.dart';
import '../../../core/config/constants/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
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
          ),
          const Expanded(child: GifItem()),
        ],
      ),
    );
  }
}
