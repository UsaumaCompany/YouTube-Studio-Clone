part of 'internet_bloc.dart';

class InternetState extends Equatable {
  final bool isConnected;
  final FormzSubmissionStatus status;

  const InternetState({
    required this.status,
    required this.isConnected,
  });

  InternetState copyWith({
    bool? isConnected,
    FormzSubmissionStatus? status,
  }) =>
      InternetState(
        isConnected: isConnected ?? this.isConnected,
        status: status ?? this.status,
      );

  @override
  List<Object?> get props => [
        isConnected,
        status,
      ];
}
