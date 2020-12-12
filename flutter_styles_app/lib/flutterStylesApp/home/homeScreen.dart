import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/waveHeader.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            WaveHeader(
              height: 160,
              mainColor: Theme.of(context).primaryColorDark,
              secondaryColor: Theme.of(context).accentColor,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                title: Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  'User infos',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
