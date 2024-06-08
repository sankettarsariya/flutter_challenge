import 'package:flutter/material.dart';

import '../../foundation/constant.dart';

class ImageErrorHandler extends StatelessWidget {
  const ImageErrorHandler({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: Constant.imageDecoration,
      height: height * 0.114,
      width: width * 0.4,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline),
          Text("No Image",style: Constant.errorText,)
        ],
      ),
    );
  }
}
