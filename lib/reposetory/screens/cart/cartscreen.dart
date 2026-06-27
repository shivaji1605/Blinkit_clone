import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';
import'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});
  controller(){
    TextEditingController searchController = TextEditingController();
  }

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
        SizedBox(height: 40,),

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
          SizedBox(height: 20,),
          UiHelper.customImage(img: 'shoppingcart.png'),
          SizedBox(height: 20,),
          UiHelper.customText(text: 'Reordering will be easy', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'bold'),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 234,
            child:Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UiHelper.customText(text:'Items you order will show up here so you can buy them again easily.. ', color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11,fontFamily: 'poppins'),
                UiHelper.customText(text:'', color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11,fontFamily: 'poppins'),
              ],
            )
          ),
          SizedBox(height: 30,),
         
          Row(     
            children: [
              SizedBox(width:30,),
              UiHelper.customText(
                text:'Bestseller',
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily:'poppins'
              ),
            ],
          ),  
          SizedBox(height:20),
          Row(
            children:[
              SizedBox(width:30,),
              Stack(
                children:[
                  UiHelper.customImage(img:'milk.png'),
                  Padding(padding: EdgeInsets.only(top:95,left:68),
                  child:UiHelper.customButton((){}),
                  ),
                ]
              ),
              SizedBox(width:15,),
              Stack(
                children:[
                  UiHelper.customImage(img:'potato.png'),
                  Padding(padding: EdgeInsets.only(top:95,left:68),
                  child:UiHelper.customButton((){}),
                  ),
                ]
              ),
              SizedBox(width:15,),
              Stack(
                children:[
                  UiHelper.customImage(img:'tomato.png'),
                  Padding(padding: EdgeInsets.only(top:95,left:68),
                  child:UiHelper.customButton((){}),
                  ),
                ]
              ),
            ]
          )
        ],
      )
    );
  }
}