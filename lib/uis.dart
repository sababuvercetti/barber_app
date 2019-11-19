import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Own app imports
import 'package:barber_app/authui.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: Image.asset("images/logotwo.png",fit: BoxFit.fitWidth,height: 200,)),
            SizedBox(
              height: 20,
            ),
            Text("Welcome to the Barber booking app"),
            SizedBox(
              height: 20,
            ),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            CupertinoButton(
                child: Text(
                  "Proceed",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => BarberStylist()));
                })
          ],
        ),
      ),
    );
  }
}

class BarberStylist extends StatefulWidget {
  @override
  _BarberStylistState createState() => _BarberStylistState();
}

class _BarberStylistState extends State<BarberStylist> {
  bool barberSelected = false;
  bool clientSelected = false;
  bool male=false;
  bool female=false;
  bool Barber=true;
  bool othergender=false;
  var selectedColor = CupertinoColors.activeGreen;
  var unselectedColor= CupertinoColors.inactiveGray;
  // void selectGender(Barber) async {
  //   showCupertinoModalPopup(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return CupertinoActionSheet(
  //           title: Text(!Barber?"Client" : "Barber",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 20)),
  //           message: Text("Please select your gender",style: TextStyle(color: CupertinoTheme.of(context).primaryColor),),
  //           cancelButton: CupertinoButton(
  //             child: Text(
  //               "Cancel",
  //               style: TextStyle(color: CupertinoColors.activeBlue),
  //             ),
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //           ),
  //           actions: <Widget>[
  //             CupertinoActionSheetAction(
  //                 onPressed: (){
  //                   Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>LoginPage(barber:Barber ,Gender: "Male",)));
  //                 },
  //                 child:Text("Male")
  //               ),
  //             CupertinoActionSheetAction(
  //               onPressed: (){
  //                   Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>LoginPage(barber:Barber ,Gender: "Female",)));

  //               },
  //               child:Text("Female")
  //             ), 
  //             CupertinoActionSheetAction(
  //               onPressed: (){
  //                   Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>
  //                   //HomeMain(barber:Barber ,Gender: "Other",)
  //                   LoginPage(barber: Barber,Gender: "Other",)
  //                   ));
  //               },
  //               child:Text("Other")
  //             ),  
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/logotwo.png",fit: BoxFit.cover,height: 200,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Are you looking for a barber? Are you a barber? "),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, bottom: 20),
            child: CupertinoPopupSurface(
                isSurfacePainted: false,
                child: Material(
                    color: !barberSelected ? unselectedColor : selectedColor,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          barberSelected = !barberSelected;
                          if (clientSelected) {
                            clientSelected = false;
                          }
                        });
                      },
                      leading: Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Barber",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, bottom: 20),
            child: CupertinoPopupSurface(
                isSurfacePainted: false,
                child: Material(
                    color: !clientSelected ? unselectedColor : selectedColor,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          clientSelected = !clientSelected;
                          if (barberSelected) {
                            barberSelected = false;
                          }
                        });
                      },
                      leading: Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Client",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ),
          CupertinoButton(
            onPressed: () {
              if (barberSelected) {
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>
                    LoginPage(barber: Barber)
                    ));
              } else if (clientSelected) {
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=>
                    LoginPage(barber: !Barber)
                    ));
              }
            },
            child: Text(
              "Proceed",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
          )
        ],
      ),
    );
  }
}

class HomeMain extends StatefulWidget {
  final bool barber;
  final String Gender;

  const HomeMain({Key key, this.barber, this.Gender}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    //UI for male
    if(widget.Gender=="Male")
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Home"),
      trailing: CupertinoButton(
        padding: EdgeInsets.all(0),
        onPressed: (){
          print("Male");
        },
        child: Icon(CupertinoIcons.bell)),),
      child: ListView(
        children: <Widget>[

        ],
      ),
    );
    else if(widget.Gender=="Female")
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Home"),
      trailing: CupertinoButton(
        padding: EdgeInsets.all(0),
        onPressed: (){
          print("Female");
        },
        child: Icon(CupertinoIcons.bell)),),
      child: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}