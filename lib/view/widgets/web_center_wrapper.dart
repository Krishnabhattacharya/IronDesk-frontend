import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebCenterWrapper extends StatelessWidget {
  final Widget child;

  const WebCenterWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 450), // Mobile width constraint
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 5,
              )
            ],
          ),
          child: ClipRRect(
             // Optional: Clip to give a "phone" feel or just clean edges
            // borderRadius: BorderRadius.circular(20), 
            child: child,
          ),
        ),
      );
    }
    return child;
  }
}
