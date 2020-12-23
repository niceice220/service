import 'package:equatable/equatable.dart';

class ServerState extends Equatable {
  final bool _isConnected;
  bool get isConnected => _isConnected;

  @override
  List<Object> get props => [_isConnected];

  ServerState({bool isConnected = false})
      : _isConnected = isConnected;

  ServerState copyWith({bool isConnected}) {
    return ServerState(
        isConnected: isConnected ?? this._isConnected);
  }

  @override
  String toString() {
    print('is Connected server: $_isConnected');
    return super.toString();
  }
}
