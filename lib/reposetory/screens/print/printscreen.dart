import 'package:flutter/material.dart';
import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';

class Printscreen extends StatefulWidget {
  const Printscreen({super.key});

  @override
  State<Printscreen> createState() => _PrintscreenState();
}

class _PrintscreenState extends State<Printscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 240, 206, 1),
      body:Column(
        children: [
          Stack(
              children: [
                Container(
              height: 180,
              width: double.infinity,
              color: const Color(0xFFF7CB45),
              child:Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      UiHelper.customText(text: 'Blinkit in', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14,fontFamily: 'bold'),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      UiHelper.customText(text: '16 Minutes', color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20,fontFamily: 'bold'),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      UiHelper.customText(text: 'Home', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14,fontFamily: 'bold'),
                      UiHelper.customText(text: ' - Sujal Dave, Ratanada, Jodhpur (Raj) ', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14,),
                    ],
                  ),
               
                ],
              ),
              
            ),
            Positioned(
              right:25,
              bottom:80,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child:Icon(Icons.person_2_sharp,color:Colors.black,size:20),
              ),
            ),
        
            Positioned(
              bottom:20,
              left: 20,
              child:  UiHelper.customTextField(controller: TextEditingController(), text: 'Search Icescream'),
            )
            
            ]   
            ),

            SizedBox(height:40,),

            UiHelper.customText(
              text:"Print Store",
              fontSize: 32,fontWeight: FontWeight.bold,
              fontFamily: 'poppins',color: Colors.black,
            ),
            UiHelper.customText(
              text:"Blinkit ensures secure prints at every stage",
              fontSize: 14,fontWeight: FontWeight.bold,
              fontFamily: 'poppins',color: const Color.fromRGBO(156, 156, 156, 1),
            ),

            SizedBox(height:30),

            Container(
            height:163,
            width:361,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [

                  Column(
                    children:[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:Row(
                          children: [
                            UiHelper.customText(text: "Documents", color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14,fontFamily: "bold"),
                          ],
                        )
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Row(
                            children: [
                              UiHelper.customText(text: "✦  Price starting at rs 3/page", color: const Color.fromRGBO(156, 156, 156, 1), fontWeight: FontWeight.w700, fontSize: 14,fontFamily: "regular"),
                            ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Row(
                            children: [
                              UiHelper.customText(text: "✦  Paper quality: 70 GSM", color: const Color.fromRGBO(156, 156, 156, 1), fontWeight: FontWeight.w700, fontSize: 14,fontFamily: "regular"),
                            ],
                          ),
                      ),
                        Padding(
                         padding: const EdgeInsets.only(left:10),
                          child: Row(
                            children: [
                              UiHelper.customText(text: "✦  Single side prints", color: const Color.fromRGBO(156, 156, 156, 1), fontWeight: FontWeight.w700, fontSize: 14,fontFamily: "regular"),
                            ],
                          ),
                        ),
                  
                        ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(39, 175, 52, 1),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            
                          ),
                          onPressed: (){},
                          child: UiHelper.customText(text: "Upload Files", color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13,fontFamily: 'bold')
                        ),
                  
                        
                    ],
                  ),

                  SizedBox(width: 20,),
                  Stack(
                      children: [
                        UiHelper.customImage(img:'pages1.png')
                      ],
                    ),
                ],
              ),

            ),
        ],
      )
    );
  }
}

/*
              Stack(
                      children: [
                        UiHelper.customImage(img:'pages1.png')
                      ],
              )
                    */  