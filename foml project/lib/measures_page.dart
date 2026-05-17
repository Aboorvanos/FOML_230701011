import 'package:flutter/material.dart';
import 'home_page.dart';
import 'minimal_infestation_page.dart';
import 'mild_infestation_page.dart';
import 'moderate_infestation_page.dart';
import 'severe_infestation_page.dart';
import 'critical_infestation_page.dart';

class MeasuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Image.asset('assets/logo.png', height: 60),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.green.shade100,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'Measures for Weed Management',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('(Based on Percentage)',
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildInfestationCard(
                  context,
                  'Minimal Infestation',
                  '0% - 10%',
                  Colors.yellow,
                  'minimal.png',
                  MinimalInfestationPage(),
                ),
                _buildInfestationCard(
                  context,
                  'Mild Infestation',
                  '10% - 30%',
                  Colors.orange.shade300,
                  'mild.png',
                  MildInfestationPage(),
                ),
                _buildInfestationCard(
                  context,
                  'Moderate Infestation',
                  '30% - 50%',
                  Colors.orange,
                  'moderate.png',
                  ModerateInfestationPage(),
                ),
                _buildInfestationCard(
                  context,
                  'Severe Infestation',
                  '50% - 70%',
                  Colors.red.shade400,
                  'severe.png',
                  SevereInfestationPage(),
                ),
                _buildInfestationCard(
                  context,
                  'Critical Infestation',
                  '70% - 100%',
                  Colors.red,
                  'critical.png',
                  CriticalInfestationPage(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false,
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.grass), label: 'Garden'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildInfestationCard(
      BuildContext context, String title, String percentage, Color color, String image, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16), // Rounded corners
        ),
        child: Row(
          children: [
            Image.asset('assets/$image', height: 50),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(percentage, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}