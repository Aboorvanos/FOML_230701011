import 'package:flutter/material.dart';

class CriticalInfestationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.red,
              child: Column(
                children: [
                  Text(
                    'Critical Infestation',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '(70% - 100%)',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Text(
                'Field conditions are very poor, with weeds dominating and likely reducing crop yields drastically.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu_book, size: 24, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Measures',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMeasure(1, 'Broad-spectrum Herbicides + Controlled Burning (if legal): Burn weeds or use strong herbicides for full control.'),
                        _buildMeasure(2, 'Complete Mechanical Clearance: Use heavy machinery to uproot and remove all weeds.'),
                        _buildMeasure(3, 'Field Rest & Soil Recovery: Leave the land fallow and apply organic amendments to restore soil health.'),
                        _buildMeasure(4, 'Introduce Long-term Rotation Plan: Avoid monoculture and rotate crops to break weed life cycles.'),
                        _buildMeasure(5, 'Plan Full Rehabilitation: Consider planting soil-enriching cover crops (e.g., legumes) in the next season.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
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

  Widget _buildMeasure(int number, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        '$number. $text',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
