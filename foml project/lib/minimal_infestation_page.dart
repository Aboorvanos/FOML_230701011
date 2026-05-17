import 'package:flutter/material.dart';

class MinimalInfestationPage extends StatelessWidget {
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.yellow,
              child: Column(
                children: [
                  Text(
                    'Minimal Infestation',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '(0% - 10%)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'This stage indicates that the field is mostly clean with very few weeds visible. '
                'The weeds present are not yet competing significantly with crops.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu_book, size: 20, color: Colors.black87),
                      SizedBox(width: 8),
                      Text(
                        'Measures',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildMeasure(
                      'Manual Removal: Hand-pulling or using a hoe to remove isolated weeds.'),
                  _buildMeasure(
                      'Preventive Measures: Apply a thin layer of mulch (such as straw, leaves, or plastic mulch) to block sunlight and stop new weed seeds from germinating.'),
                  _buildMeasure(
                      'Pre-emergent Herbicides: These herbicides prevent weed seeds from sprouting. They can be applied before weeds start to emerge.'),
                  _buildMeasure(
                      'Regular Monitoring: Keep a weekly schedule to check for new weed growth early.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasure(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\u2022 ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
