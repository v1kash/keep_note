import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_notes/components/index.dart';
import 'package:keep_notes/cubit/note_cubit.dart';

class EditNote extends StatefulWidget {
   final int? id;
  const EditNote({super.key,
  required this.id});


  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Please add note'),
            SizedBox(
              height: 64,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: 
              InputForm(),
            ),
          ],
        ),
      ),
    );
  }
}

