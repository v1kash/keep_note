import 'package:go_router/go_router.dart';
import 'pages/index.dart';

// GoRouter configuration
final _router = GoRouter(
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
  ],
);
