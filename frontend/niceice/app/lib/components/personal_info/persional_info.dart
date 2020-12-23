import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageStatus createState() => _MinePageStatus();
}

class _MinePageStatus extends State<MinePage> {
  static final personImage = CircleAvatar(
    radius: 34,
    backgroundImage: AssetImage('assets/wlb.png'),
  );

  static final personInfoText = Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '云胡不喜',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 18),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '唯一标识：0000001',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    ),
  );

  static final settingsIcon = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[Icon(Icons.chevron_right), SizedBox(width: 30)]);

  final personInfo = Card(child: Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(width: 30),
          personImage,
          SizedBox(width: 20),
          personInfoText,
          settingsIcon
        ],
      )));

  final settings = Card(

    child: Container(
      padding: EdgeInsets.fromLTRB(5, 20, 20, 20),
      color: Colors.white,
      child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
        SizedBox(width: 20),
        Icon(
          Icons.settings,
          color: Colors.blueAccent,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Text("设置",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        settingsIcon
      ])));

  @override
  Widget build(BuildContext context) {
    return (Container(
        color: Colors.grey[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              personInfo,
              SizedBox(
                height: 10,
              ),
              settings
            ])));
  }
}
