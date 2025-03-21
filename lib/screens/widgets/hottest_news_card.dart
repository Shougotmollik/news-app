import 'package:flutter/material.dart';

class HottestNewsCard extends StatelessWidget {
  const HottestNewsCard({
    super.key,
    required this.size,
    required this.newsImage,
    required this.newsTitle,
    required this.newsDescription,
  });

  final Size size;
  final String newsImage;
  final String newsTitle;
  final String newsDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: size.width * 0.6,
          height: size.height * 0.38,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  newsImage,
                  height: size.height * 0.18,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        width: size.width / 1.8,
                        child: Text(
                          newsTitle,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width / 1.8,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          newsDescription,
                          maxLines: 4,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: size.height * 0.042,
                  width: size.width * 0.18,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
