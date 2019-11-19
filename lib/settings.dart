import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
              largeTitle: Row(
            children: <Widget>[
              Icon(
                CupertinoIcons.settings,
                size: 40,
              ),
              Text("Settings")
            ],
          )
              //middle:
              ),
          SliverFillRemaining(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Icon(CupertinoIcons.person,color: Colors.white,),
                      title: Text("Reset account...",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Want to reset your account?",style: TextStyle(color: Colors.white)),
                      trailing: IconButton(icon: Icon(Icons.more_vert,color: Colors.white,),tooltip: "Reset account",onPressed: (){},),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
