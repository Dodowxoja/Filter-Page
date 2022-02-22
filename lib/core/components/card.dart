import 'package:flutter/material.dart';
import 'package:work/widgets/container_img.dart';
import 'package:work/widgets/icon.dart';

class Cards {
  static cards(
    BuildContext context, {
    double size = 0,
    Key? key,
    int? index,
    String? roomName,
    String? price,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: size),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              ContainerImg.imgCards(price),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(roomName!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyIcon.icons(Icons.location_on_outlined),
                      const Text('New York City')
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('\$ 78/night'),
                        Row(
                          children: [
                            MyIcon.icons(Icons.star_rate),
                            MyIcon.icons(Icons.star_rate),
                            MyIcon.icons(Icons.star_rate),
                            MyIcon.icons(Icons.star_border_outlined),
                            MyIcon.icons(Icons.star_border_outlined),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
