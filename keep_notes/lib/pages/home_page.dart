import 'package:flutter/material.dart';
import '../components/button_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: const Color.fromARGB(255, 211, 237, 249),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Row(
                  children: [
                    ButtonCard(
                      child: "New note",
                      onClick: () {
                        print('add note');
                      },
                      ),
                      const SizedBox(width: 32,),
                     ButtonCard(
                      child: "To do",
                       onClick: () {
                        print('add note');
                      },
                      ),
                      const SizedBox(width: 32,),
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
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child:Text("data"),
            ),
        
          ],
        ),
      ),

    );
  }
}