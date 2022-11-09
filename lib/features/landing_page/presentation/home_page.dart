import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_sumer/features/landing_page/presentation/cubit/gift/gif_cubit.dart';
import 'package:test_sumer/features/landing_page/presentation/widgets/git_item.dart';
import 'package:test_sumer/features/landing_page/presentation/widgets/search_box.dart';

import '../../../core/config/constants/dimensions.dart';
import '../domain/models/gift_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<GifCubit>().requestGifList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBox(),
          Expanded(child: BlocBuilder<GifCubit, GiftState>(
            builder: (context, state) {
              return _gifList(giftList: state.giftModel);
            },
          )),
        ],
      ),
    );
  }

  Widget _gifList({required List<GiftModel> giftList}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kDimens20,
        left: kDimens20,
        right: kDimens20,
      ),
      child: MasonryGridView.count(
        itemCount: giftList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(kDimens8),
            child: GiftItem(gif: giftList[index]),
          );
        },
        crossAxisCount: 2,
      ),
    );
  }
}
