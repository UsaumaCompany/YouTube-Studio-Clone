import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc()
      : super(const InternetState(isConnected: false, status: FormzSubmissionStatus.initial)) {
    on<GlobalCheck>((event, emit) {
      emit(state.copyWith(isConnected: event.isConnected));
    });
  }
}
