import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_doctor/categoryItem.dart';
import 'package:test_doctor/model/categoryModels.dart';
import 'package:test_doctor/servicesCategories.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "homme";
  var categoryModel = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1E2F), // Dark background color
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFF1D1F33),
        leading: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: CircleAvatar(
            child: Image.asset(
              "assets/images/pic.png",
              fit: BoxFit.contain,
              height: 100,
              width: 100,
            ),
          ),
        ),
        leadingWidth: 100,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good evening,',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Osama Gamil',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Servicescategories("iconSession", "Session")),
                SizedBox(width: 14),
                Expanded(child: Servicescategories("iconSubject", "Subjects")),
                SizedBox(width: 14),
                Expanded(
                    child: Servicescategories(
                        "iconAddSession", "Add specific\nsession")),
                SizedBox(width: 14),
                Expanded(
                    child: Servicescategories(
                        "iconSearch", "Search about\nstudent")),
              ],
            ),
            // SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 30),
              color: Colors.white10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200, // Give it a fixed height
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryItem(categoryModel[index], index);
                      },
                      itemCount: categoryModel.length,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Today Sessions',
                    style: TextStyle(color: Color(0xff60708F), fontSize: 22),
                  ),
                  SizedBox(height: 16),
                  _buildSessionListItem('Computer Security', '15 April - 11:02',
                      Icons.computer, Colors.blue),
                  _buildSessionListItem('Database Management',
                      '12 April - 22:50', Icons.lock, Colors.red),
                  _buildSessionListItem('Mathematics', '11 April - 18:44',
                      Icons.school, Colors.green),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildServiceButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white12,
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSessionListItem(
      String title, String date, IconData icon, Color color) {
    return Card(
      color: Color(0xFF2A2D40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        subtitle: Text(
          date,
          style: TextStyle(color: Colors.white60),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text('Add Session'),
        ),
      ),
    );
  }
}
