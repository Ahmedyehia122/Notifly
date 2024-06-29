import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/customs/custom_text_field.dart';
import 'package:note_app/features/notes/presentation/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final TextEditingController title = TextEditingController();

  final TextEditingController content = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            text: 'Title',
            controller: title,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextField(
            text: 'Content',
            controller: content,
            maxLines: 5,
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomButton(
            onPressed: () {
              if (formState.currentState!.validate()) {
                formState.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
