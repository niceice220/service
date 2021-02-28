import 'package:app/common/common.dart';
import 'package:app/components/server/server.dart';
import 'package:app/components/navigation/navigation.dart';
import 'package:universal_html/html.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServerBloc>(
          create: (context) => ServerBloc("wss://niceice.cn/ws"),
        )
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: gAppName,
        theme: appTheme,
        home: BlocBuilder<ServerBloc, ServerState>(builder: (context, state) {
          return Scaffold(
              appBar: state.isConnected
                  ? null
                  : AppBar(
                      centerTitle: true,
                      title: Text('尝试连接服务器...(功能不可用_)'),
                      backgroundColor: Colors.red,
                    ),
              body: AppNavigation());
        }));
  }
}
