import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    super.key,
    required this.image,
    required this.categoryName,
  });
  final String image, categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
