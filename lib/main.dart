import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants/fonts.dart';
import 'package:note_app/core/constants/routes.dart';
import 'package:note_app/core/constants/strings.dart';
import 'package:note_app/features/notes/data/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/routes.dart';
import 'package:note_app/simble_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimbleBlocObserver();
  await Hive.openBox(AppStrings.kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(
    const NoteApp(),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AddNotesCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: AppFonts.poppnis,
              brightness: Brightness.dark,
            ),
            initialRoute: AppRoutes.initRoute,
            routes: routes,
          ),
        );
      },
    );
  }
}
