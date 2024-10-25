import 'package:flutter/material.dart';
import 'package:keep_notes/components/index.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text('Please add note'),
           TextFormField(
            initialValue: 'Add note',
           )
          ],
        ),
      ),
    );
  }
}
