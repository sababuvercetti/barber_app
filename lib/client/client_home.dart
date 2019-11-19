import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomeMainClient extends StatefulWidget {
  @override
  _HomeMainClientState createState() => _HomeMainClientState();
}

class _HomeMainClientState extends State<HomeMainClient> {

  var tabItems=<BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text("Home")
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text("Home")
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text("Account")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text("Settings")
    ),
  ];

var tabs=<Widget>[

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,

    );
  }
}



class ClientHome extends StatefulWidget {
 // final Gender;

  const ClientHome({Key key, 
  //this.Gender
  }) : super(key: key);
  @override
  _ClientHomeState createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
  @override
  Widget build(BuildContext context) {
    // if (widget.Gender == "Male") {
    //   return ClientMen();
    // } else if (widget.Gender == "Female") {
    //   return ClientWomen();
    // } else
      return ClientWomen();
  }
}

//Men Home UI
class ClientMen extends StatefulWidget {
  @override
  _ClientMenState createState() => _ClientMenState();
}

class _ClientMenState extends State<ClientMen> {
  final PageController ctrl = PageController(viewportFraction: 0.8);
  bool barberSelected=false;
  bool salonSelected=false;
  bool otherSelected=false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Home"),
            trailing: CupertinoButton(
              onPressed: (){},
              padding: EdgeInsets.all(0),
              child: Icon(CupertinoIcons.bell),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
             // controller: PageController(viewportFraction: 0.8),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>ClientBarbers()));
                      },
                      leading: Image.asset("images/logo.png"),
                      title: Text("All services",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Check out all the services provided...",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Barber",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if your'e looking for a barber service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Hair salon",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if your'e looking for a hair salon service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Mobile haircut",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if your'e looking for a Mobile haircut service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
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

//Women home UI
class ClientWomen extends StatefulWidget {
  @override
  _ClientWomenState createState() => _ClientWomenState();
}

class _ClientWomenState extends State<ClientWomen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Women home"),

          ),
          SliverFillRemaining(child: ListView(
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Hair salon",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if your'e looking for a hair salon service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Beauty parlor",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if youre looking for a general beauty parlor service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Massage",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if youre looking for a masseuse service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Hair stylist",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if youre looking for a hair stylist service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Beautician",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if youre looking for a Beautician service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                    child: ListTile(
                      leading: Image.asset("images/logo.png"),
                      title: Text("Ayurvedic",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Tap here if youre looking for an Ayurvedic service",style: TextStyle(color: Colors.white54,),),
                      trailing: Icon(CupertinoIcons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
            ],
          ),)
        ],
      ),
    );
  }
}

class ClientBarbers extends StatefulWidget {
  @override
  _ClientBarbersState createState() => _ClientBarbersState();
}

class _ClientBarbersState extends State<ClientBarbers> {


  @override
  Widget build(BuildContext context) {
      var Barbers=<Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridTile(
        child: Container(child: Image.asset("images/barbertwo.jpeg",fit: BoxFit.cover)),
        footer: Column(children: <Widget>[
          Text("Brandon Butler"),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  color: CupertinoColors.activeOrange,
                  child: Text("Book appointment"),
                  onPressed: (){
                      showCupertinoDialog(context: context,builder: (BuildContext context)=>CupertinoActionSheet(
                        title: Text("Brandon Butler"),
                        cancelButton: CupertinoButton(
                          onPressed: (){Navigator.pop(context);},
                          child: Text("Dismiss"),
                        ),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            onPressed: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>BarberProfile()));
                            },
                            child: Text("View Barber profile")
                          ),
                          CupertinoActionSheetAction(
                            onPressed: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>BarberServices()));
                            },
                            child: Text("View services offered")
                          )
                        ],
                      ));
                  },
                  ),
              ),
            ],
          )
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridTile(
        child: Container(child: Image.asset("images/barbertwo.jpeg",fit: BoxFit.cover)),
        footer: Column(children: <Widget>[
          Text("Brandon Butler"),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  color: CupertinoColors.activeOrange,
                  child: Text("Book appointment"),
                  onPressed: (){},
                  ),
              ),
            ],
          )
        ],),
      ),
    )
  ];
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Home"),
        trailing:CupertinoButton(
              onPressed: (){},
              padding: EdgeInsets.all(0),
              child: Icon(CupertinoIcons.bell),
            ),
      ),
      child: GridView(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: Barbers,
      ),
    );
  }
}



class BarberProfile extends StatefulWidget {
  @override
  _BarberProfileState createState() => _BarberProfileState();
}

class _BarberProfileState extends State<BarberProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Barber profile"),),
    );
  }
}

class BarberServices extends StatefulWidget {
  @override
  _BarberServicesState createState() => _BarberServicesState();
}

class _BarberServicesState extends State<BarberServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Barber services"),),
    );
  }
}