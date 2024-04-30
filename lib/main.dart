import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/avatardefault_92824.png"),
          ),
          title: const Text(
            "Hi, John Smith 👋",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/3119338.png",
                color: Colors.blue,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 370,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 204, 204),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        'Discover How',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 224, 72, 1)),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Text(
                        'To Be Creative',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 224, 72, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.rocket_launch,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Instructor',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildInstructorCard(
                    imageAsset: 'assets/images/Michael.jpg',
                    name: 'Michale',
                  ),
                  const SizedBox(width: 16.0),
                  _buildInstructorCard(
                    imageAsset: 'assets/images/Florida.jpg',
                    name: 'Florida',
                  ),
                  const SizedBox(width: 16.0),
                  _buildInstructorCard(
                    imageAsset: 'assets/images/Daniel.jpg',
                    name: 'Daniel',
                  ),
                  const SizedBox(width: 16.0),
                  _buildInstructorCard(
                    imageAsset: 'assets/images/Steven.jpg',
                    name: 'Steven',
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Courses',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCourseCard(
                      imageAsset: 'assets/images/kode.jpeg',
                      title: 'Learn Web Development',
                      duration: '24 Lessons\n2Hr 30Min',
                    ),
                    const SizedBox(width: 16.0),
                    _buildCourseCard(
                      imageAsset: 'assets/images/learn.jpeg',
                      title: 'Learn Pro UI/UX Design',
                      duration: '24 Lessons\n2Hr 30Min',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructorCard({
    required String imageAsset,
    required String name,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageAsset),
        ),
        const SizedBox(height: 8.0),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildCourseCard({
    required String imageAsset,
    required String title,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
          height: 50,
        ),
        const SizedBox(height: 8.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          duration,
          style: const TextStyle(
            fontSize: 10.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
