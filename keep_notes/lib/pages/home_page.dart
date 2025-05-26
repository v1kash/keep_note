import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_notes/cubit/note_cubit.dart';
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
            height: MediaQuery.of(context).size.height / 3,
            color: const Color.fromARGB(255, 77, 150, 183),
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
                      context.push('/add-note');
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
                    child: "Save Password",
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
            height: MediaQuery.of(context).size.height / 2 / 3,
            width: isSmallPort(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<DataCubit, List<String>>(
                      builder: (context, dataList) {
                    return ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: LongTileButton(
                            suffix: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                context.read<DataCubit>().delteItem(index);
                              },
                            ),
                            onClick: () {
                              context.read<DataCubit>().getItem(index);
                              context.push('/edit-note/$index');
                            },
                            child: Text(
                              dataList[index],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        );
                      },
                    );
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
