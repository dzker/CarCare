import 'package:carbookingservice/model/campaigndata/event_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampaignWidget extends StatelessWidget {
  final EventItems eventItems;

  CampaignWidget({super.key, required this.eventItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 183.7,
          width: 362.2,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            image: DecorationImage(
              image: AssetImage(eventItems.image),
              fit: BoxFit.fill,
            ),
          ),

          // child: Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Container(
          //     width: double.infinity,
          //     padding: const EdgeInsets.all(8.0),
          //     decoration: BoxDecoration(
          //         color: Colors.white.withOpacity(1),
          //         borderRadius: const BorderRadius.only(
          //           bottomLeft: Radius.circular(10),
          //           bottomRight: Radius.circular(10),
          //         ),
          //         boxShadow: [
          //           BoxShadow(
          //               color: Colors.grey.withOpacity(0.5),
          //               spreadRadius: 2,
          //               blurRadius: 5,
          //               offset: const Offset(0, 3))
          //         ]),

          //   ),
          // ),
        ),
        SizedBox(
          height: 83.7,
          width: 362.2,
          child: Card(
            elevation: 3,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    eventItems.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    eventItems.caption,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.lock_clock),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
