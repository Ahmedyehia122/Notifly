import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.textName,
    required this.icon,
  });
  final String textName;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textName,
          style: TextStyle(fontSize: 28.sp),
        ),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
