import 'package:flutter/material.dart';
import 'package:test_doctor/subject/SubjectCategory.dart';
import 'package:test_doctor/subject/downloadRow.dart';

class SubjectScreenPage extends StatelessWidget {
  const SubjectScreenPage({super.key});

  static const String routeName = "homeSubject";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF151826FF), // Dark background
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
            size: 33,
          ),
          title: Text(
            'Subjects',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF636572),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.question_answer, color: Colors.white),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How was your day?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel odio en urna ultrice...',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Daily Tasks:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 120,
                  // Define the height for horizontal scrolling cards
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          SubjectCategory('Your Materials\nfor level 3', '1',
                              0xffBEB4AC, 0xff363443),
                          SubjectCategory('Your Materials\nfor level 3', '1',
                              0xff534e5a, 0xffF2C6C3),
                          SubjectCategory('Your Materials\nfor Level 2', '2',
                              0xff4C545EFF, 0xffAAC9C9),
                          SubjectCategory('Your Materials\nfor Level 4', '4',
                              0xff3D385BFF, 0xffB5B4BB),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                DownloadRow('1', 'Level 1'),
                DownloadRow('3', 'Level 3'),
                DownloadRow('2', 'Level 2'),
                DownloadRow('4', 'Level 4'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadRow(String level, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                level,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Click here to see your material',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFB7FDF4), // Custom color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('download'),
          ),
        ],
      ),
    );
  }
}
