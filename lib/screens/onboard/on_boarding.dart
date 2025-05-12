import 'package:dhaman_e_services/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> images = [
    'assets/images/changepw.jpg',
    'assets/images/sickLeave.jpg',
    'assets/images/permission.jpg',
  ];

  List<String> title = [
    'First time?Click forget password',
    'Want to take Sick leave?',
    'Are you late? take permission',
  ];
  List<Color> colors = [Colors.green, Colors.orange, Colors.redAccent];

  PageController pageCtrl = PageController();

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                controller: pageCtrl,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5,color: colors[index]),

                          image: DecorationImage(
                            image: AssetImage(images[index]),fit: BoxFit.cover
                          ),
                        ),

                      ),
                      Text(
                        title[index],
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(80, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                pageCtrl.nextPage(duration: Duration(milliseconds: 750), curve: Curves.decelerate);
                if (currentPageIndex == title.length - 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }
              },
              child:
                  currentPageIndex == title.length - 1
                      ? Text('Start', style: TextStyle(color: Colors.white))
                      : Text('Next', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
