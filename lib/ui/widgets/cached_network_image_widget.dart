// ignore_for_file: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_task/ui/modals/image_error_handler.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
   CachedNetworkImageWidget({super.key,required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        height: height * 0.13,
        width: width * 0.4,
        fit: BoxFit.cover,
        imageUrl:
        image,
        placeholder: (context, url) => const SizedBox(
            height: 10,
            width: 10,
            child:
            Center(child: CircularProgressIndicator(color: Colors.black,))),
        errorWidget: (context, url, error) =>
        const ImageErrorHandler(),
      ),
    );
  }
}
