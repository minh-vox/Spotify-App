import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'choose_mode_event.dart';
part 'choose_mode_state.dart';

class ChooseModeBloc extends Bloc<ChooseModeEvent, ChooseModeState> {
  ChooseModeBloc() : super(ChooseModeInitial()) {
    on<ChooseModeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
