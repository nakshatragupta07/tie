import 'package:flutter/material.dart';
import 'job_detail_screen.dart';

class JobPostingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tie'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Requirements you might like',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  jobPostingTile(
                    context,
                    'Cinematographer Needed - Urgent',
                    'Archi',
                    'Noida, Sector-18',
                    '25/11/24',
                    isApplied: false,
                    isFulfilled: false,
                  ),
                  jobPostingTile(
                    context,
                    'Cinematographer Needed - Urgent',
                    'Archi',
                    'Noida, Sector-18',
                    '25/11/24',
                    isApplied: true,
                    isFulfilled: false,
                  ),
                  jobPostingTile(
                    context,
                    'Cinematographer Needed - Urgent',
                    'Archi',
                    'Noida, Sector-18',
                    '25/11/24',
                    isApplied: false,
                    isFulfilled: true,
                  ),
                  // Add more job postings here
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.teal, // Color for selected item
        unselectedItemColor: Colors.grey
        // Handle navigation on tap
      ),
    );
  }

  Widget jobPostingTile(
      BuildContext context,
      String title,
      String poster,
      String location,
      String date, {
        bool isApplied = false,
        bool isFulfilled = false,
      }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Posted by $poster'),
            Text(location),
            Text(date),
          ],
        ),
        trailing: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetailScreen()),
                );
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade300,
              ),
            ),
            if (isApplied) ...[
              SizedBox(height: 0),
              Text('Applied', style: TextStyle(color: Colors.orange)),
            ],
            if (isFulfilled) ...[
              SizedBox(height: 0),
              Text('Fulfilled', style: TextStyle(color: Colors.green)),
            ],
          ],
        ),
      ),
    );
  }
}
