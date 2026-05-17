import 'package:flutter/material.dart';

class MildInfestationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
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
            Image.asset('assets/logo.png', height: 30),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.orange.shade300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mild Infestation',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('(10% - 30%)', style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text(
                    'Weeds are starting to appear in more areas, but they can still be controlled without major intervention.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('📋 Measures', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 8),
                    _buildMeasure(1, 'Spot Treatment', 'Apply selective herbicides only in areas where weeds are growing, without affecting crops.'),
                    _buildMeasure(2, 'Shallow Cultivation', 'Light tilling between crop rows to uproot weeds without damaging crops.'),
                    _buildMeasure(3, 'Increased Mulching', 'Add organic or plastic mulch around plants and bare soil areas.'),
                    _buildMeasure(4, 'Strengthen Crop Cover', 'Use methods like reducing spacing between crops to shade out weeds.'),
                    _buildMeasure(5, 'Crop Canopy Management', 'Increase crop density or use fast-growing crops to block sunlight for weeds.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasure(int number, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black),
          children: [
            TextSpan(text: '$number. ', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: '$title: ', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: description),
          ],
        ),
      ),
    );
  }
}
