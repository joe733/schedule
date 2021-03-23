import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedule',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Schedule'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'S8 CSE',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 50),
              Row(
                  //General Row
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButtons(Icons.add_to_drive, 'Drive',
                        'https://drive.google.com/drive/folders/1oOzkR6gugx8ZtgM6SSqTDz8xpMav_v8U'),
                    SizedBox(width: 10),
                    myButtons(Icons.mail_rounded, 'Mail',
                        'mailto:iesbtechcs2k17to21@googlegroups.com'),
                    SizedBox(width: 10),
                  ]),
              SizedBox(height: 20),
              Row(
                  //Row 1
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButtons(Icons.meeting_room_rounded, 'EIA',
                        'https://meet.google.com/ecd-obdy-zgd'),
                    SizedBox(width: 10),
                    myButtons(Icons.meeting_room_rounded, 'DMW',
                        'https://meet.google.com/jce-fwot-zqb'),
                    SizedBox(width: 10),
                    myButtons(Icons.meeting_room_rounded, 'ES',
                        'https://meet.google.com/yja-kdxa-ixc'),
                    SizedBox(width: 10),
                  ]),
              SizedBox(height: 20),
              Row(
                  //Row 2
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButtons(Icons.meeting_room_rounded, 'AI',
                        'https://meet.google.com/erc-dsjk-iez'),
                    SizedBox(width: 10),
                    myButtons(Icons.meeting_room_rounded, 'PIS',
                        'https://meet.google.com/cao-gkxq-mox'),
                    SizedBox(width: 10),
                    myButtons(Icons.meeting_room_rounded, 'Project',
                        'https://meet.google.com/yzg-ccdf-qdm'),
                    SizedBox(width: 10),
                  ])
            ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class myButtons extends StatelessWidget {
  final IconData iconName;
  final String btnName, appID;
  myButtons(this.iconName, this.btnName, this.appID);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AppLauncher(appID).launchURL();
      },
      child: Column(
        children: <Widget>[
          IconButton(
            onPressed: null,
            disabledColor: Colors.white,
            icon: Icon(iconName),
          ),
          Text('$btnName'),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

class AppLauncher {
  final String appURL;
  AppLauncher(this.appURL);

  void launchURL() async =>
      await canLaunch(appURL) ? await launch(appURL) : throw 'Could not launch';
}
