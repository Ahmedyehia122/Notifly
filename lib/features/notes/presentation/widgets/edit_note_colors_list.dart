import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants/colors.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_color_item.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = AppColors.kColors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: AppColors.kColors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = AppColors.kColors[index].value;

                setState(() {});
              },
              child: CustomColorItem(
                isActive: currentIndex == index,
                color: AppColors.kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
