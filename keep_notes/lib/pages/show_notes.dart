import 'package:flutter/material.dart';

class ShowNotes extends StatefulWidget {
  const ShowNotes({super.key});

  @override
  State<ShowNotes> createState() => _ShowNotesState();
}

class _ShowNotesState extends State<ShowNotes> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("First note"),
          SizedBox(height: 32,),
          Text("second note"),
        ],
            );
  }
}
