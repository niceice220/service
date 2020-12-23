import 'package:app/common/common.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageStatus createState() => _HomePageStatus();
}

class _HomePageStatus extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: BackButton(
        onPressed: () => {},
      ),
    );
  }
}
