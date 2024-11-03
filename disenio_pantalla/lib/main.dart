import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'), // Cambia a la ubicación de tu avatar
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(height: 15),
            Text(
              'Coffeestories',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            Text(
              'mark.brock@icloud.com',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Edit Profile', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Inventories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(height: 10),
            _buildSectionContainer(
              items: [
                _buildSettingItem(
                  icon: Icons.store,
                  title: 'My Stores',
                  trailing: _buildBadge('2'),
                ),
                _buildSettingItem(
                  icon: Icons.help_outline,
                  title: 'Support',
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
                ),
              ],
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Preferences',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(height: 10),
            _buildSectionContainer(
              items: [
                _buildSettingItem(
                  icon: Icons.notifications,
                  title: 'Push Notifications',
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.green[900],
                  ),
                ),
                _buildSettingItem(
                  icon: Icons.face,
                  title: 'Face ID',
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.green[900],
                  ),
                ),
                _buildSettingItem(
                  icon: Icons.lock,
                  title: 'PIN Code',
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
                ),
                _buildSettingItem(
                  icon: Icons.lock,
                  title: 'LogOut',
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey[600], size: 18),
                ),
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionContainer({required List<Widget> items}) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(children: items),
    );
  }

  Widget _buildSettingItem({required IconData icon, required String title, required Widget trailing}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.grey[600]),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
          trailing,
        ],
      ),
    );
  }

  Widget _buildBadge(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
