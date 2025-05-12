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

  PageController pageCtrl = PageController();

  int currentPageIndex =0;

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
                        width: double.infinity,
                        height: 300,
                        color: Colors.blue,
                        child: Image.asset(
                          images[index],
                          height: 60,
                          width: 40,
                          fit: BoxFit.cover,
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
                // pageCtrl.nextPage(
                //   duration: Duration(milliseconds: 750),
                //   curve: null,
                // );
                if(currentPageIndex == title.length-1){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                }
              },
              child:
                  currentPageIndex == title.length-1
                      ? Text('Start', style: TextStyle(color: Colors.white))
                      : Text('Next', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
