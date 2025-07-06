import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget? leadingTop;
  final String title;
  final String? trailingImage;
  final Widget? trailingTop;
  final Widget child;

  final Widget? bottomLeft;
  final Widget? bottomRight;

  const BaseLayout({
    required this.title,
    required this.child,
    this.leadingTop,
    this.trailingImage,
    this.trailingTop,
    this.bottomLeft,
    this.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Top Header (1/6)
          SizedBox(
            height: screenHeight / 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leadingTop ?? SizedBox(width: 48), // z. B. IconButton
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color:Colors.white,

                      ),
                    ),
                  ),
                ),
                trailingImage != null
                      ? Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Image.asset(
                            trailingImage!,
                            height: 90, 
                          ),
                        )
                      : const SizedBox(width: 48),
                trailingTop ?? SizedBox(width: 48), // z. B. Bild
              ],
            ),
          ),

          // Main content (4/6)
          SizedBox(
            height: screenHeight * 4 / 6,
            child: child,
          ),

          // Bottom Header (1/6)
          SizedBox(
            height: screenHeight / 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottomLeft ?? SizedBox(width: 48),
                bottomRight ?? SizedBox(width: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
