import 'package:flutter/material.dart';

class PlatformIcon extends StatelessWidget {
  final String platform;
  const PlatformIcon({Key? key, required this.platform}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    switch (platform.toLowerCase()) {
      case 'web':
        iconData = Icons.web;
        break;
      case 'mobile':
        iconData = Icons.phone_android;
        break;
      case 'desktop':
        iconData = Icons.desktop_windows;
        break;
      default:
        iconData = Icons.devices;
        break;
    }
    return Icon(iconData, color: Colors.black87, size: 24);
  }
} 