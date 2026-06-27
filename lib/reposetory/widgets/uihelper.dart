import 'package:flutter/material.dart';
class UiHelper{
  static customImage({required String img}){
    return Image.asset('assets/image/$img');
  }

  static customText({required String text,required Color color,required FontWeight fontWeight,required double fontSize,String? fontFamily}){
    return Text(
      text,style: TextStyle(
        color: color,fontWeight: fontWeight,fontSize: fontSize,fontFamily:fontFamily??'regular',
        ),
      );

  }

  static customTextField({required TextEditingController controller, required String text}){
    return Container(
      height:37,
      width: 346,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child:TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search Icescream',
          prefixIcon: Image.asset('assets/image/search.png'),
          suffixIcon: Image.asset('assets/image/mic.png'),
          border: InputBorder.none,
        ),
      )
    );
  }

  static customButton(VoidCallback callback ){
    return Container(
      height:18,width: 30,
      decoration:BoxDecoration(
        color:Colors.white,
        border:Border.all(color: const Color.fromRGBO(39, 175, 52, 1),),
        borderRadius:BorderRadius.circular(5),
       ),
        child:Center(child: Text('Add',style: TextStyle(color: const Color.fromRGBO(39, 175, 52, 1),fontSize: 10,fontWeight: FontWeight.w400),)),
    );
  }
}