import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_notes/pages/add_note.dart';
import 'package:keep_notes/pages/edit_note.dart';
import 'router.dart';
import 'pages/index.dart';
import 'cubit/note_cubit.dart';

void main() {
  runApp(
     BlocProvider(
      create: (context) => DataCubit(),
    child : const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig:  GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home-page', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      name: 'show notes',
      path: '/show-notes',
      builder: (context, state) => ShowNotes(),
    ),
     GoRoute(
      name: 'add note',
      path: '/add-note',
      builder: (context, state) => AddNote(),
    ),
    GoRoute(
      name: 'edit note',
      path: '/edit-note/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'];
         return EditNote(id: int.tryParse(id!));
          
      },
    ),
  ],
),
    );

  }
}

