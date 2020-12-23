import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class ServerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerConnected extends ServerEvent {}

class ServerDisconnected extends ServerEvent {}

class ServerMsgReceived extends ServerEvent {
  final String _msg;
  String get msg => _msg;

  ServerMsgReceived(final String msg) : _msg = msg;
}
