import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Own app imports
import 'package:barber_app/settings.dart';
import 'package:barber_app/barber/appointments.dart';


class BarberMainPage extends StatefulWidget {
  @override
  _BarberMainPageState createState() => _BarberMainPageState();
}

class _BarberMainPageState extends State<BarberMainPage> {
  var currentIndex=0;
  var tabs=<BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(
      CupertinoIcons.person
    )),
    BottomNavigationBarItem(icon: Icon(
      CupertinoIcons.bell
    )),
    BottomNavigationBarItem(icon: Icon(
      Icons.calendar_today
    )),
    BottomNavigationBarItem(icon: Icon(
      Icons.contacts
    )),
    BottomNavigationBarItem(icon: Icon(
      Icons.settings
    )),
  ];
  var tabPages=<Widget>[
    BarberMen(),
    Center(child: Text("Notifications",style: TextStyle(color: Colors.white)),),
    Appointments(),
    Center(child: Text("Clients",style: TextStyle(color: Colors.white)),),
    SettingsPage()
  ];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
      body: tabPages[currentIndex],
      bottomNavigationBar: CupertinoTabBar(
        iconSize: 20,
        activeColor: CupertinoTheme.of(context).primaryColor,
        currentIndex: currentIndex,
        items: tabs,
        onTap: (newIndex){
          setState(() {
            currentIndex=newIndex;
          });
        },
      ),
    );
  }
}

class BarberHome extends StatefulWidget {
  //final Gender;

  const BarberHome({Key key,}) : super(key: key);

  @override
  _BarberHomeState createState() => _BarberHomeState();
}

class _BarberHomeState extends State<BarberHome> {
  @override
  Widget build(BuildContext context) {
    // if (widget.Gender == "Male") {
    //   return BarberMen();
    // } else if (widget.Gender == "Female") {
    //   return BarberWomen();
    // } else
      return BarberMen();
  }
}

///Male barbers UI
class BarberMen extends StatefulWidget {
  @override
  _BarberMenState createState() => _BarberMenState();
}

class _BarberMenState extends State<BarberMen> {
  bool allowNotifications = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Service providers home"),
            trailing: CupertinoButton(padding: EdgeInsets.all(0.0),onPressed: (){
              showCupertinoDialog(context: context,builder: (BuildContext context)=>CupertinoPopupSurface(
                isSurfacePainted: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>Appointments()));
                        },
                        color: CupertinoTheme.of(context).primaryColor,
                        child: Text("View schedule"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoButton(
                        onPressed:  (){},
                        color: CupertinoTheme.of(context).primaryColor,
                        child: Text("Add products/Services"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoButton(
                        onPressed:  (){},
                        color: CupertinoTheme.of(context).primaryColor,
                        child: Text("Promote Products/Services"),
                      ),
                    ),
                    CupertinoButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>SettingsPage()));
                      },
                      child: Icon(CupertinoIcons.settings,size: 50,),
                    ),
                    CupertinoButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.launch,size: 50,),
                    )
                  ],
                ),
              ));
            },child: Icon(Icons.more_vert),),
          ),
          SliverFillRemaining(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Profile picture",style: TextStyle(color: Colors.white),)),
                ),
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Image.asset(
                          "images/baberone.jpeg",
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CupertinoButton(
                            onPressed: () {}, child: Icon(CupertinoIcons.pen)),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Name : ",style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Text(
                            "Brandon Butler",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white)
                          ),
                        ),
                        Expanded(
                            child: CupertinoButton(
                                onPressed: () {},
                                child: Icon(CupertinoIcons.pen)))
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Contact : ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)
                        )),
                        Expanded(
                          child: Text(
                            "12345678",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white)
                          ),
                        ),
                        Expanded(
                            child: CupertinoButton(
                                onPressed: () {},
                                child: Icon(CupertinoIcons.pen)))
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Available via push notifications?",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)
                        )),
                        Expanded(
                          child: CupertinoSwitch(
                            value: allowNotifications,
                            onChanged: (on) {
                              setState(() {
                                allowNotifications = on;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Location : ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)
                        )),
                        Expanded(
                          child: Text(
                            "This is my location",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white)
                          ),
                        ),
                        Expanded(
                            child: CupertinoButton(
                                onPressed: () {},
                                child: Icon(CupertinoIcons.pen)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

///Female barbers UI
class BarberWomen extends StatefulWidget {
  @override
  _BarberWomenState createState() => _BarberWomenState();
}

class _BarberWomenState extends State<BarberWomen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Female"),
    );
  }
}
