import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to Flutter Landing Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(),
            _buildFeaturesSection(),
            _buildCallToActionSection(context),
            _buildFooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', height: 100, width: 100),
          SizedBox(height: 20),
          Text(
            'Welcome to Our App!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is a sample landing page built with Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Key Features:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Feature 1'),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Feature 2'),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Feature 3'),
          ),
        ],
      ),
    );
  }

  Widget _buildCallToActionSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Ready to Get Started?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implement navigation to the main screen or next page here.
              print('Get Started button tapped!');
            },
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterSection() {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('© ${DateTime.now().year} Your Company. All rights reserved.'),
        ],
      ),
    );
  }
}