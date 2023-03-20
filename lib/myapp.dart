import 'package:flutter/material.dart';
import 'package:growwithriz/courses.dart';
import 'package:growwithriz/schedulefolder/meeting_provider.dart';
import 'package:provider/provider.dart';
import 'books.dart';
import 'schedulefolder/calendar_widget.dart';
import 'finances.dart';
import 'workout.dart';
import 'networks.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //below its for bottomnavigation bar
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Account',
      style: optionStyle,
    ),
    Text(
      'Index 1: Help Outline',
      style: optionStyle,
    ),
    Text(
      'Index 2: Grade',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //above code is for bottomnavigation bar

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(create: (context)=> MeetingProvider(),
        //     )
        // ],

        // child:
        Scaffold(
      appBar: AppBar(
        title: Text("GrowWithBiz"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.rocket_launch,
            color: Colors.white,
          ),
        ),
      ),

      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const calendarwidget()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Schedule",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const financess()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.wallet,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Finances",
                        style: new TextStyle(fontSize: 17.0),
                        selectionColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const workout()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.sports_martial_arts,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Workout",
                        style: new TextStyle(fontSize: 17.0),
                        selectionColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const books()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.menu_book,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Book",
                        style: new TextStyle(fontSize: 17.0),
                        selectionColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const courses()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.workspace_premium,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Courses",
                        style: new TextStyle(fontSize: 17.0),
                        selectionColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const networks()),
                  );
                },
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.handshake,
                        size: 70.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Networks",
                        style: new TextStyle(fontSize: 17.0),
                        selectionColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      //@@@@@@@@@@@@@@@ bottom Navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Help Outline',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Grade',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
    // ,);
  }
}
