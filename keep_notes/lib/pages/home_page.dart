import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/index.dart';
import '../utils/get_small_viewport.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: const Color.fromARGB(255, 211, 237, 249),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isSmallPort(context) ? 8 : 32, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonCard(
                    child: "New note",
                    onClick: () {
                      print('add note');
                      context.push('/show-notes');
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  ButtonCard(
                    child: "To do",
                    onClick: () {
                      print('add note');
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  ButtonCard(
                    child: "New jounal",
                    onClick: () {
                      print('add note');
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
