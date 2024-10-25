import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_notes/pages/add_note.dart';
import 'router.dart';
import 'pages/index.dart';

void main() {
  runApp(const MyApp());
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
    )
  ],
),
    );

  }
}

