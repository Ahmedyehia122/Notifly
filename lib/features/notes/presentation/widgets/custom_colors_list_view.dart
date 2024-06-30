import 'package:flutter/material.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_color_item.dart';

class CustomColorsListView extends StatelessWidget {
  const CustomColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const CustomColorItem();
        },
      ),
    );
  }
}
