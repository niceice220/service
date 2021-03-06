import 'package:app/common/common.dart';
import 'package:app/components/server/server.dart';
import 'package:app/components/navigation/navigation.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServerBloc>(
          create: (context) => ServerBloc(Configs.getInstance().serverUrl),
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
        title: Configs.getInstance().appName,
        theme: appTheme,
        home: BlocBuilder<ServerBloc, ServerState>(builder: (context, state) {
          return Scaffold(
              appBar: state.isConnected
                  ? null
                  : AppBar(
                      centerTitle: true,
                      title: Text(Configs.getInstance().tryReconnectPrompt),
                      backgroundColor: Colors.red,
                    ),
              body: AppNavigation());
        }));
  }
}
