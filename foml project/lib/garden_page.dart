import 'home_page.dart';

import 'package:flutter/material.dart';

class GardenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add plant functionality
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      body: Column(
        children: [
          // 🌿 Header Section
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("5 Plants",
                    style: TextStyle(fontSize: 16, color: Colors.black54)),
                SizedBox(height: 5),
                Text("My Garden",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 🌱 All Plants Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text("All Plants",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 10),
                    // 🔔 Reminders Button
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text("Reminders",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // 🌿 Plants Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Plants",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton.icon(
                  onPressed: () {
                    // Add plant functionality
                  },
                  icon: Icon(Icons.add, color: Colors.green),
                  label: Text("Add Plant",
                      style: TextStyle(color: Colors.green, fontSize: 16)),
                ),
              ],
            ),
          ),

          // 🌿 List of Plants
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                PlantCard("🍅 Tomato"),
                PlantCard("🌽 Corn"),
                PlantCard("🌾 Rice"),
                PlantCard("🍬 Sugarcane"),
                PlantCard("🥥 Coconut"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 🌱 Plant Card Widget
Widget PlantCard(String plantName) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(bottom: 10),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: Icon(Icons.eco, color: Colors.black54),
      ),
      title: Text(plantName,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text("No Reminder Set!", style: TextStyle(color: Colors.grey)),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {
        // Open plant details
      },
    ),
  );
}

// 🌿 Bottom Navigation Bar
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black54,
      currentIndex: 3, // Garden tab index
      onTap: (index) {
        if (index == 0) { // Home button clicked
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false, // Remove previous pages from stack
          );
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 40), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.grass), label: "Garden"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}

