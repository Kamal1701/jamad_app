import 'package:flutter/material.dart';

class JamadHomeScreen extends StatefulWidget {
  const JamadHomeScreen({super.key});

  @override
  State<JamadHomeScreen> createState() => _JamadHomeScreenState();
}

class _JamadHomeScreenState extends State<JamadHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tamilnadu Thawood Jamad"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 60.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'TNTJ TIRUVALLUR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                // leading: Icon(Icons.home),
                title: const Text('பெண் பயான்'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the tap here.
                },
              ),
              ListTile(
                // leading: Icon(Icons.settings),
                title: const Text('மதராசா'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the tap here.
                },
              ),
              ListTile(
                // leading: Icon(Icons.location_on),
                title: const Text('Location'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the tap here.
                },
              ),
              ListTile(
                // leading: Icon(Icons.location_on),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the tap here.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
