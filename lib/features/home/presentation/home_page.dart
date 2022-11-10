import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_sumer/core/presentation/widgets/loader_widget.dart';
import 'package:test_sumer/core/presentation/widgets/wrong_widget.dart';
import 'package:test_sumer/features/home/presentation/widgets/gif_item.dart';

import '../../../core/config/constants/dimensions.dart';
import '../domain/models/gif_model.dart';
import 'cubit/gift/gif_cubit.dart';
import 'widgets/search_box.dart';

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
          Expanded(
            child: BlocBuilder<GifCubit, GiftState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoaderWidget();
                }
                if (state.error != null) {
                  return const WrongWidget();
                }
                return _gifList(giftList: state.gifList);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _gifList({required List<GifModel> giftList}) {
    return Padding(
      padding: const EdgeInsets.all(kDimens20),
      child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: giftList.length,
          itemBuilder: (context, index) {
            return GifItem(gif: giftList[index]);
          }),
    );
  }
}
