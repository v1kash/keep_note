import 'package:bloc/bloc.dart';

class DataCubit extends Cubit<String> {
	DataCubit() : super('');
	void updateData(String newData) => emit(newData);
}

