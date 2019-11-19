import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Own app imports
import 'package:barber_app/barber/barber_home.dart';
import 'package:barber_app/client/client_home.dart';

class LoginPage extends StatefulWidget {
  final bool barber;
  //final String Gender;

  const LoginPage({Key key, this.barber,}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text("Login"),
          trailing: CupertinoButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Icon(CupertinoIcons.info),
          ),
        ),
        SliverFillRemaining(
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logotwo.png",height: 200,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Email address",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    color: CupertinoColors.activeBlue,
                    onPressed: () {
                      if(!widget.barber)
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>ClientHome()));
                      else if(widget.barber)
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>BarberMainPage()));
                    },
                    child: Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                Center(child: Text("Or..."),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    color: CupertinoColors.activeBlue,
                    onPressed: (){},
                    child: Row(children: <Widget>[
                      Icon(FontAwesomeIcons.facebook,color: Colors.white),
                      SizedBox(width: 20,),
                      Text("Sign in with facebook",style: TextStyle(color: Colors.white),)
                    ],)
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Don't have an account? Register below")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => RegisterPage(barber: widget.barber,)));
                    },
                    color: CupertinoColors.activeOrange,
                    child: Text("Register",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => ForgotPasswordPage(barber: widget.barber,)));
                  },
                  child: Text("Forgot password"),)
              ],
            ),
          ),
      ],
    ));
  }
}

class ForgotPasswordPage extends StatefulWidget {
  final bool barber;
  //final String Gender;

  const ForgotPasswordPage({Key key, this.barber}) : super(key: key);
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text("Forgot your password"),
          trailing: CupertinoButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Icon(CupertinoIcons.info),
          ),
        ),
        SliverFillRemaining(
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logotwo.png",height: 200,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Email address",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    placeholder: "Confirm your password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    color: CupertinoColors.activeBlue,
                    onPressed: () {},
                    child: Text("Reset password",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
               
              ],
            ),
          ),
      ],
    ));
  }
}

class RegisterPage extends StatefulWidget {
  final bool barber;
  //final String Gender;

  const RegisterPage({Key key, this.barber,}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool maleSelected = false;
  bool femaleSelected = false;
  var selectedColor = CupertinoColors.activeGreen;
  var unselectedColor= CupertinoColors.inactiveGray;
  // bool male=false;
  // bool female=false;
  // bool Barber=true;
  // bool othergender=false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Register"),
            trailing: CupertinoButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Icon(CupertinoIcons.info),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logotwo.png",height: 200,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    textCapitalization: TextCapitalization.words,
                    placeholder: "Full Name",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    keyboardType: TextInputType.emailAddress,
                    placeholder: "Email address",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(
                    keyboardType: TextInputType.phone,
                    placeholder: "Phone number",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: "Password",
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Icon(CupertinoIcons.eye),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: "Confirm Password",
                        ),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Icon(CupertinoIcons.eye),
                      ),
                    ],
                  ),
                ),
                Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, bottom: 8),
            child: CupertinoPopupSurface(
                isSurfacePainted: false,
                child: Material(
                    color: !maleSelected ? unselectedColor : selectedColor,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          maleSelected = !maleSelected;
                          if (femaleSelected) {
                            femaleSelected = false;
                          }
                        });
                      },
                      leading: Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Male",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, bottom: 8),
            child: CupertinoPopupSurface(
                isSurfacePainted: false,
                child: Material(
                    color: !femaleSelected ? unselectedColor : selectedColor,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          femaleSelected = !femaleSelected;
                          if (maleSelected) {
                            maleSelected = false;
                          }
                        });
                      },
                      leading: Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Female",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    onPressed: () {
                      if(widget.barber)
                        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>BarberMainPage()));
                      else
                        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>ClientHome()));
                    },
                    color: CupertinoColors.activeOrange,
                    child: Text("Register",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                Center(child: Text("Or..."),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton(
                    color: CupertinoColors.activeBlue,
                    onPressed: (){},
                    child: Row(children: <Widget>[
                      Icon(FontAwesomeIcons.facebook,color: Colors.white),
                      SizedBox(width: 20,),
                      Text("Register with facebook",style: TextStyle(color: Colors.white),)
                    ],)
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
