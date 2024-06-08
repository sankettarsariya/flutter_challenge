
import 'package:flutter/material.dart';

import '../../foundation/constant.dart';
import '../widgets/cached_network_image_widget.dart';
import 'package:intl/intl.dart';


class ArticleView extends StatelessWidget {
   ArticleView({super.key,required this.image,required this.title,required this.date,required this.description});
  String image;
  DateTime date;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(10),
      width: width,
      decoration: Constant.articleDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DateFormat('MMM dd, yyyy').format(date),
            style: Constant.dateStyle,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          title,
                          maxLines: 2,
                          style: Constant.titleStyle),
                      const SizedBox(height: 5,),
                      Text(
                          description,
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          style: Constant.description),
                    ],
                  )),
              CachedNetworkImageWidget(image: image)

            ],
          )
        ],
      ),
    );;
  }
}
