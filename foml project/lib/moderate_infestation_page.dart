import 'package:flutter/material.dart';

class ModerateInfestationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.orange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moderate Infestation',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    '(30% - 50%)',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Weeds are well-established and will soon start to reduce crop yields if not controlled.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            _buildMeasuresList(),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasuresList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Measures',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          _buildMeasureItem(
              '1. Intercropping: Plant companion crops (e.g., legumes) between main crops to reduce open space for weeds.'),
          _buildMeasureItem(
              '2. Biological Control: Introduce insects or microorganisms that feed on specific weeds (if available and practical).'),
          _buildMeasureItem(
              '3. Systemic Herbicides: Use herbicides that get absorbed by weeds and kill them from the inside (e.g., glyphosate for non-selective use).'),
          _buildMeasureItem(
              '4. Deep Tillage: Plow deeper to disturb and cut off weed roots, making it harder for weeds to regrow.'),
          _buildMeasureItem(
              '5. Cover Crops: Plant fast-growing species (e.g., clover or ryegrass) to act as living mulch, covering the soil and competing with weeds.'),
        ],
      ),
    );
  }

  Widget _buildMeasureItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
