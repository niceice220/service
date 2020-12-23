import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:universal_html/prefer_sdk/html.dart';
import 'dart:async';

import 'server_event.dart';
import 'server_state.dart';
import 'server_repository.dart';
export 'server_event.dart';
export 'server_state.dart';

class ServerBloc extends Bloc<ServerEvent, ServerState> {
  ServerRepository _repository;

  ServerBloc(final String addr)
      : _repository = ServerRepository(addr),
        super(ServerState());

  @override
  Stream<ServerState> mapEventToState(ServerEvent event) async* {
    _repository.isConnected();
  }
}

// @override
// Stream<ServerState> mapEventToState(ServerEvent event) async* {
//   if (event is ConnectedEvent) {
//     yield state.copyWith(isConnectedServer: true);
//   } else if (event is DisconnectedEvent) {
//     yield state.copyWith(isConnectedServer: false);
//   } else if (event is PingEvent) {
//     yield state;
//     Stream.periodic(Duration(seconds: 5)).take(1).listen((event) {
//       // _webSocket.send('ping');
//       if (!state.isConnectedServer) {
//         // _webSocket = WebSocket(_addr);
//       }
//       add(PingEvent());
//     });
//   } else if (event is MsgEvent) {
//     // _webSocket.send(event.msg);
//   }
// }
