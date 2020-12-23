import 'server_state.dart';

class ServerRepository {

  ServerRepository(final String addr) {
    connectServer();
  }

  Stream<ServerState> isConnected() async* {
    yield ServerState(isConnected: true);
  }

  void connectServer() {
    // bool canReconnect = true;
    print('connect server');
    // _webSocket = WebSocket(_addr);
    // _webSocket.onOpen.listen((e) {
    //   add(ConnectedEvent());
    //   add(PingEvent());
    // });
    // _webSocket.onClose.listen((e) {
    //   add(DisconnectedEvent());
    //   if (canReconnect) {
    //     Timer(Duration(seconds: 3), () => connectServer());
    //     canReconnect = false;
    //   }
    // });
    // _webSocket.onError.listen((e) {
    //   _webSocket.close();
    //   add(DisconnectedEvent());
    //   if (canReconnect) {
    //     Timer(Duration(seconds: 3), () => connectServer());
    //     canReconnect = false;
    //   }
    // });
    // _webSocket.onMessage.listen((MessageEvent e) {
    //   print('Received message: ${e.data}');
    // });
  }
}
