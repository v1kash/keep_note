import 'package:bloc/bloc.dart';

class DataCubit extends Cubit<List<String>> {
	DataCubit() : super([]);
	void addItem(String newItem) => emit(List.from(state)..add(newItem));
  void delteItem(int index) => emit(List.from(state)..removeAt(index));
  void getItem(int index) => emit(List.from(state)..elementAt(index));
}

