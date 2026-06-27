import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget{
  // const CategoryScreen({super.key});
  controller() {
    TextEditingController SearchController =  TextEditingController();
  }
  var groceryKitchen = [
    {
      "text":"'Vegetables & \nFruits'",
      "img":'image 41.png',
    },

    {
      "text":"'Atta, Dal & \nRice'",
      "img":'image 42.png',
    },

    {
      "text":"'Oil, Ghee & \nMasala'",
      "img":'image 43.png',
    },

    {
      "text":"'Dairy, Bread & \nMilk'",
      "img":'image 44.png',
    },

    {
      "text":"'Snacks & \nBranded Foods'",
      "img":'image 45.png',
    } 
  ];

  var secondGrocery = [
    {
      "text":"Dry Fruits & \nCereals",
      "img":'image 21.png',
    },

    {
      "text":"Kitchen & \nAppliances",
      "img":'image 22.png',
    },

    {
      "text":"Tea & \nCoffees",
      "img":'image 23.png',
    },

    {
      "text":"Ice Creams & \nmuch more",
      "img":'image 24.png',
    },

    {
      "text":"Noodles & \nPacket Food",
      "img":'image 25.png',
    }   
  ];

  var thirdGrocery = [
    {
      "text":"Chips & \nNamkeens",
      "img":'image 31.png',
    },

    {
      "text":"Sweets & \nChocalates",
      "img":'image 32.png',
    },

    {
      "text":"Drinks & \nJuices",
      "img":'image 33.png',
    },

    {
      "text":"Sauces & \nSpreads",
      "img":'image 34.png',
    },

    {
      "text":"Beauty & \nCosmetics",
      "img":'image 35.png',
    } 
  ];

  var forthGrocery = [
    {
      "text":"Chips & \nNamkeens",
      "img":'image 36.png',
    },

    {
      "text":"Sweets & \nChocalates",
      "img":'image 37.png',
    },

    {
      "text":"Drinks & \nJuices",
      "img":'image 38.png',
    },

    {
      "text":"Sauces & \nSpreads",
      "img":'image 39.png',
    },

    {
      "text":"Beauty & \nCosmetics",
      "img":'image 40.png',
    } 
  ];
  @override
  Widget build (BuildContext){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            
            child: Column(
              
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
                SizedBox(height:30,),
                Row(
                  
                  children: [
                    SizedBox(width:20,),
                    UiHelper.customText(
                      text:'Grocery & Kitchen',
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ],
                ),
                SizedBox(height: 20,),
            
                Expanded(
                  flex:3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      itemBuilder:(context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height:78,
                                width: 71,
                                decoration:BoxDecoration(
                                  color:Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:UiHelper.customImage(img: groceryKitchen[index]['img'].toString()),
                              ),
                            ),
            
                            UiHelper.customText(text:groceryKitchen[index]['text'].toString(),color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600)
                          ],
                        );
                      },itemCount: groceryKitchen.length,scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
            
                Expanded(
                  flex:3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      itemBuilder:(context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height:78,
                                width: 71,
                                decoration:BoxDecoration(
                                  color:Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:UiHelper.customImage(img: secondGrocery[index]['img'].toString()),
                              ),
                            ),
            
                            UiHelper.customText(text:secondGrocery[index]['text'].toString(),color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600)
                          ],
                        );
                      },itemCount: secondGrocery.length,scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
            
                Row(
                  children: [
                    SizedBox(width:20),
                    UiHelper.customText(text: 'Snacks & Drinks',color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,)
                  ],
                ),
            
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      itemBuilder:(context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height:78,
                                width: 71,
                                decoration:BoxDecoration(
                                  color:Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:UiHelper.customImage(img: thirdGrocery[index]['img'].toString()),
                              ),
                            ),
            
                            UiHelper.customText(text:thirdGrocery[index]['text'].toString(),color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600)
                          ],
                        );
                      },itemCount: thirdGrocery.length,scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
            
                Row(
                  children: [
                    SizedBox(width:20),
                    UiHelper.customText(text: 'Household Essentials',color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,)
                  ],
                ),
            
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      itemBuilder:(context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height:78,
                                width: 71,
                                decoration:BoxDecoration(
                                  color:Color(0xFFD9EBEB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:UiHelper.customImage(img: forthGrocery[index]['img'].toString()),
                              ),
                            ),
            
                            //UiHelper.customText(text:forthGrocery[index]['text'].toString(),color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600)
                          ],
                        );
                      },itemCount: forthGrocery.length,scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}