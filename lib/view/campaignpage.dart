import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampaignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInUp(
          child: const Text(
            'What\'s New Today? ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ), //change variable for name here
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.green,
                Colors.green,
                Colors.green,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'e.g: Hari Raya Promo',
                      suffixIcon: const Icon(Icons.search)),
                ),
              ),
              const SizedBox(height: 10),
              DefaultTabController(
                length: 3,
                child: Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: const TabBar(
                    tabs: <Widget>[
                      Tab(
                        text: 'Featured',
                      ),
                      Tab(
                        text: 'Promotion',
                      ),
                      Tab(
                        text: 'Event',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
