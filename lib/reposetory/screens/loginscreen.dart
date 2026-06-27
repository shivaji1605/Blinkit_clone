import 'package:blinkit_clone/reposetory/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            UiHelper.customImage(img: 'Blinkit Onboarding Screen.png'),
            SizedBox(height: 30,),
            UiHelper.customImage(img: 'image 10.png'),
            SizedBox(height: 20,),
            UiHelper.customText(text: 'India’s last minute app', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            SizedBox(height: 20,),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                
                height: 200,
                width: 350,
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), 
                ),
                child:Column(children: [
                  SizedBox(height: 20,),
                    UiHelper.customText(text: 'Shivaji', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'regular'),
                    SizedBox(height: 5,),
                    UiHelper.customText(text: '93XXXXXXXX9', color: Color(0xFF9C9C9C), fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'poppins'),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Bottomnavscreen(),));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.customText(text: 'Continue with', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'poppins'),
                            SizedBox(width: 5,),
                            UiHelper.customImage(img: 'image 9.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    UiHelper.customText(text: 'Access your saved addresses from Zomato automatically!', color: Color(0xFF9C9C9C), fontWeight: FontWeight.w400, fontSize: 10, fontFamily: 'regular'),
                    SizedBox(height: 13,),
                    UiHelper.customText(text: 'or login with phone number', color: Color(0xFF269237), fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'regular'),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
