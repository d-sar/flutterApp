import 'package:flutter/material.dart';
import 'package:maintenace_app/pages/Status__Screen.dart';
import 'package:maintenace_app/widgets/alert_card.dart';
import 'package:maintenace_app/widgets/gear_status_card.dart';
import 'package:maintenace_app/widgets/graph_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        foregroundColor: Colors.white,
        elevation: 50.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Menu Icon',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      // Drawer ici :
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
             
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Status Screen'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:  (context)=>StatusScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Machine Detail Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/machineDetail');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Manitenance Management Screen'),
              onTap: () {
               Navigator.pushNamed(context, '/manitenaceManagement');
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //l’appel widgets
          children: [
            StatutGlobalSection(),
            SizedBox(height: 16),
            AlertsSection(),
            SizedBox(height: 16),
            GraphSection(),
          ],
        ),
      ),
    );
  }
}
