import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/features/notes/data/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_color_item.dart';

class CustomColorsListView extends StatefulWidget {
  const CustomColorsListView({super.key});

  @override
  State<CustomColorsListView> createState() => _CustomColorsListViewState();
}

class _CustomColorsListViewState extends State<CustomColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xff69626D),
    const Color(0xffBCAF9C),
    const Color(0xffCBBEB3),
    const Color(0xffD9BDC5),
    const Color(0xffE8C7DE),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: CustomColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
