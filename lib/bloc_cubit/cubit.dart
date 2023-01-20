import 'package:basic_cubit_training/bloc_cubit/model.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    // state in cubit refers to super
    emit(state + 1);
  }
}
