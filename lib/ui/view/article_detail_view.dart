import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../foundation/constant.dart';
import '../../gen/gen_assets.dart';
import '../widgets/cached_network_image_widget.dart';

class ArticleDetailView extends StatelessWidget {
  ArticleDetailView({super.key,required this.title,required this.image,required this.description,required this.hours});
  String title;
  String image;
  String description;
  String hours;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // background image and bottom contents
        Column(
          children: <Widget>[
            Container(
                height: height * 0.4,
                color: Constant.colorDetail,
                child: Container(
                  margin: EdgeInsets.only(
                      top: height * 0.05, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                context.router.back();
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white.withOpacity(0.4)),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              )),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Article',
                                style: Constant.appBarTitle,
                              ),
                            ),
                          ),
                          Image.asset(ImagePath.icLike, height: 24, width: 24)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: Constant.textTitleDetail,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.lock_clock,
                                  color: Colors.grey.withOpacity(0.7),
                                  size: 16,
                                ),
                                Text(' ${hours}hr ago', style: Constant.dateStyle),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(
                        top: (height * 0.3 / 2), right: 30, left: 30),
                    child:  Text(
                      description,
                      style: Constant.descriptionDetail,
                    )),
              ),
            )
          ],
        ),
        // Profile image
        Positioned(
          top: (height * 0.4) - (height * 0.23 / 2),
          // (background container size) - (circle height / 2)
          child: SizedBox(
            height: height * 0.23,
            width: width * 0.87,
            child: CachedNetworkImageWidget(
              image: image,
            ),
          ),
        )
      ],
    );
  }
}
