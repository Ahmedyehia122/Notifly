import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/customs/custom_text_field.dart';
import 'package:note_app/features/notes/data/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/features/notes/models/note_model.dart';
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
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoadingState ? true : false,
                onPressed: () {
                  if (formState.currentState!.validate()) {
                    formState.currentState!.save();
                    var noteModel = NoteModel(
                      title: title.text,
                      subTitle: content.text,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
