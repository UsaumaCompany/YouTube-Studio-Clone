import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selectable_event.dart';
part 'selectable_state.dart';

class SelectableBloc extends Bloc<SelectableEvent, SelectableState> {
  SelectableBloc() : super(SelectableState()) {
    on<SelectableEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
