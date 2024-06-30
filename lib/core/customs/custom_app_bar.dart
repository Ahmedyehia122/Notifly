import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.textName,
    required this.icon,
    this.onTapIcon,
  });
  final String textName;
  final Icon icon;
  final void Function()? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textName,
          style: TextStyle(fontSize: 28.sp),
        ),
        CustomIcon(
          icon: icon,
          onTap: onTapIcon,
        )
      ],
    );
  }
}
