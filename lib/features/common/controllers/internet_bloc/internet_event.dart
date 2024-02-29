part of 'internet_bloc.dart';

abstract class InternetEvent {}

class GlobalCheck extends InternetEvent {
  final bool isConnected;

  GlobalCheck({required this.isConnected});
}
