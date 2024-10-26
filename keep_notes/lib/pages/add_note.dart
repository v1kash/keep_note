import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_notes/components/index.dart';
import 'package:keep_notes/cubit/note_cubit.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
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
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: TextFormField(
                controller: _controller,
                autofocus: true,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(labelText: 'Enter text'),
                onFieldSubmitted: (value) {
                  print(value);
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<DataCubit>().addItem(_controller.text);
                Navigator.pop(context); // Go back to the Second Page
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

