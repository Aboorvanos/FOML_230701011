import 'package:flutter/material.dart';

class SevereInfestationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
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
              color: Colors.orange.shade700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Severe Infestation',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    '(50% - 70%)',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Crops are now under serious threat, with weeds taking over more than half of the field area.',
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
              '1. Full-field Herbicide Application: Apply herbicides across the entire field according to label instructions.'),
          _buildMeasureItem(
              '2. Deep Plowing & Secondary Tillage: Perform primary deep plowing followed by light tilling to expose roots to the sun.'),
          _buildMeasureItem(
              '3. Non-Selective Herbicides: Apply broad-spectrum herbicides to clear a wide variety of weeds (caution required near crops).'),
          _buildMeasureItem(
              '4. Switch to Aggressive Crops: Plan for high-competition crops (e.g., maize, sorghum) next season to reduce weed regrowth.'),
          _buildMeasureItem(
              '5. Soil Solarization: During off-seasons, cover the field with clear plastic to trap heat and kill weeds and their seeds.'),
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
