import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:table_calendar/table_calendar.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Appointments"),
            trailing: CupertinoButton(
              onPressed: () {},
              child: Icon(CupertinoIcons.news),
            ),
          ),
          SliverFillRemaining(
              child: ListView(
            children: <Widget>[
              Material(
                color: CupertinoColors.inactiveGray,
                child: TableCalendar(
                  calendarController: CalendarController(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Material(
                  color: Colors.white12,
                  child: Row(
                    children: <Widget>[
                      Center(
                          child: Text(
                        "10:00AM",
                        style: TextStyle(color: Colors.white),
                      )),
                      Expanded(
                          child: Material(
                        shadowColor: Colors.white,
                        color: Colors.white24,
                        elevation: 20,
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        SingleAppointment()));
                          },
                          contentPadding: EdgeInsets.all(0),
                          leading: Container(
                            color: Colors.blue,
                            width: 3,
                          ),
                          title: Text(
                            "Brian",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "Haircut + Beard",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Column(
                            children: <Widget>[
                              Text(
                                "10:00AM",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Confirmed",
                                style: TextStyle(
                                    color: CupertinoColors.activeBlue),
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Material(
                  color: Colors.white12,
                  child: Row(
                    children: <Widget>[
                      Center(
                          child: Text(
                        "10:00AM",
                        style: TextStyle(color: Colors.white),
                      )),
                      Expanded(
                          child: Material(
                        shadowColor: Colors.white,
                        color: Colors.white24,
                        elevation: 20,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Container(
                            color: Colors.blue,
                            width: 3,
                          ),
                          title: Text(
                            "Chris",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "Haircut + Beard",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Column(
                            children: <Widget>[
                              Text(
                                "10:00AM",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("Requested",
                                  style: TextStyle(
                                    color: CupertinoColors.activeOrange,
                                  ))
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Material(
                  color: Colors.white12,
                  child: Row(
                    children: <Widget>[
                      Center(
                          child: Text(
                        "10:00AM",
                        style: TextStyle(color: Colors.white),
                      )),
                      Expanded(
                          child: Material(
                        shadowColor: Colors.white,
                        color: Colors.white24,
                        elevation: 20,
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: Container(
                            color: Colors.blue,
                            width: 3,
                          ),
                          title: Text(
                            "Devron",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "Haircut + Beard",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Column(
                            children: <Widget>[
                              Text(
                                "10:00AM",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Confirmed",
                                style: TextStyle(
                                    color: CupertinoColors.activeBlue),
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class SingleAppointment extends StatefulWidget {
  @override
  _SingleAppointmentState createState() => _SingleAppointmentState();
}

class _SingleAppointmentState extends State<SingleAppointment> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Appointment"),
          ),
          SliverFillRemaining(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                  child: Material(
                    color: Colors.white12,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      isThreeLine: true,
                      leading: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 30,
                      ),
                      title: Text(
                        "Chris",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Haircut + Beard",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(7)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 2.0, left: 2.0),
                              child: Text(
                                "Confirmed",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: <Widget>[
                          Text(
                            "MAR",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Text(
                            "21",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                          Text(
                            "10:30 AM",
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                  child: Material(
                    color: Colors.white12,
                    shadowColor: Colors.white54,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CupertinoButton(
                                onPressed: () {},
                                child: Icon(
                                  CupertinoIcons.news,
                                  color: CupertinoColors.activeGreen,
                                ),
                              ),
                              Text(
                                "Checkout",
                                style: TextStyle(color: CupertinoColors.activeGreen),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CupertinoButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.error_outline,
                                  color: CupertinoColors.inactiveGray,
                                ),
                              ),
                              Text(
                                "No show",
                                style: TextStyle(color: CupertinoColors.inactiveGray),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CupertinoButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.cancel,
                                  color: CupertinoColors.activeOrange,
                                ),
                              ),
                              Text(
                                "Cancel",
                                style: TextStyle(color:  CupertinoColors.activeOrange),
                              ),
                            ],
                          ),
                        ),
                      ],
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
