import 'package:flutter/material.dart';


class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  bool _avoidUnfinishedAreas = false;
  bool _avoidMotorway = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Navigation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/car.png', width: 50, height: 50), // Dummy images
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset('images/pickup.png', width: 80, height: 80),
                    ),
                    Image.asset('images/bike.png', width: 50, height: 50), // Dummy images
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get routes great for car'),
              ),
              ListTile(
                leading: Icon(Icons.local_gas_station),
                title: Text('Preferred fuel type'),
                subtitle: Text('Petrol'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.straighten),
                title: Text('Specify vehicle sizes'),
                subtitle: Text('10-14 feet by 5.8-6 feet by 4.5-5 feet.'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_tree),
                title: Text('Route bridges'),
                subtitle: Text('Passing through 2 bridges, height ....'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.not_interested),
                title: Text('Areas to avoid on route'),
                subtitle: Text('None'),
                onTap: () {},
              ),
              SwitchListTile(
                title: Text('Avoid unfinished areas'),
                value: _avoidUnfinishedAreas,
                onChanged: (bool value) {
                  setState(() {
                    _avoidUnfinishedAreas = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Avoid motorway'),
                value: _avoidMotorway,
                onChanged: (bool value) {
                  setState(() {
                    _avoidMotorway = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text('Done'),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {},
      ),
    );
  }
}
