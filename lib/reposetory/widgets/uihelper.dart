import 'package:flutter/material.dart';

class UiHelper {
  static Widget customImage({required String img}) {
    return Image.asset('assets/image/$img');
  }

  static Widget customText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontFamily: fontFamily ?? 'regular',
      ),
    );
  }

  static Widget customTextField({
    required TextEditingController controller,
    required String text,
  }) {
    return Container(
      height: 42,
      width: 346,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/image/search.png',
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/image/mic.png',
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static Widget customButton(VoidCallback callback) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: callback,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 28,
          width: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color.fromRGBO(39, 175, 52, 1),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: const Text(
            'ADD',
            style: TextStyle(
              color: Color.fromRGBO(39, 175, 52, 1),
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
