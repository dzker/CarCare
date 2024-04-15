import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  // final promoWidget = PromoWidget();

  Widget getPromoWidget(
      {required String titleText,
      required String subtitleText,
      required iconImage}) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    titleText,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    subtitleText,
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: Image.asset('assets/images/$iconImage'),
                ),
              ],
            )),
      ),
    );
  }

  Widget getPromoWidgetSticky({
    required String titleText,
    required String subtitleText,
    required iconImage,
    Widget? leading,
    Widget? trailing,
    BorderRadiusGeometry? borderRadius,
  }) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: leading ?? const Icon(Icons.arrow_forward_ios),
                  title: Text(
                    titleText,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    subtitleText,
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: trailing ?? Image.asset('assets/images/$iconImage'),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FadeInUp(
            child: const Text(
              'Hello, John!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ), //change variable for name here
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notification_important_sharp,
                color: Colors.blueGrey,
                size: 30,
              ),
              onPressed: () {
                //logic here
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5,
                                        offset: const Offset(0, 6)),
                                  ]),
                              child: const Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Personal \nInfo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: const Offset(0, 6)),
                                ]),
                            child: const Icon(
                              Icons.question_mark,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Help \nCenter",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: const Offset(0, 6)),
                                ]),
                            child: const Icon(
                              Icons.car_repair,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Booking \n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      offset: const Offset(0, 6)),
                                ]),
                            child: const Icon(
                              Icons.campaign,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Campaign \n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250, top: 10),
                child: Text(
                  "What's Today?",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              getPromoWidget(
                  titleText: 'Call Technician',
                  subtitleText: 'Be in Touch',
                  iconImage: 'handhold.png'),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: getPromoWidgetSticky(
                    titleText: 'Track Your Technician',
                    subtitleText: 'Your technician in right on the way',
                    iconImage: 'hilux.png',
                    leading: Image.asset('assets/images/hilux.png'),
                    trailing: const Icon(Icons.arrow_forward_ios)),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: getPromoWidgetSticky(
                    titleText: 'Claim Your Giveaway',
                    subtitleText: 'Free diagnostics',
                    iconImage: 'giveaway.png',
                    leading: const Icon(Icons.arrow_back_ios),
                    trailing: Image.asset('assets/images/giveaway.png'),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
        ));
  }
}
