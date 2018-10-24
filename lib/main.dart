import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline,
                  size: (50.0),
                  color: Colors.pink,
                ),
                Text(
                  'Account Information',
                  style: TextStyle(fontSize: 20.0),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '''Total Trip Details''',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButtonColumn(Icons.control_point_duplicate, '''
          Total Points
          1202'''),
          buildButtonColumn(Icons.attach_money, '''
          Total Cost
          87.87'''),
          buildButtonColumn(Icons.schedule, '''
          Total Minuites
          16h 32m''')
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
Your Details


Name: John Dow

Date of Birth: 23/9/1997

Cover Third Party

Policy Number: 877862523h78
        ''',
        textAlign: TextAlign.center,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Admiral Group',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('                    Single Trip Insurer',
              style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          children: [
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
