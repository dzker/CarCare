import 'package:carbookingservice/view/campaignpage.dart';
import 'package:carbookingservice/view/helpcenterpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carbookingservice/view/homepage.dart';
import 'package:carbookingservice/view/bookingpage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        onTabChange: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.car_repair,
            text: 'Booking',
          ),
          GButton(
            icon: Icons.campaign,
            text: 'Campaign',
          ),
          GButton(
            icon: Icons.person,
            text: 'Contact Us',
          ),
        ],
      ),
      body: <Widget>[
        HomePage(),
        BookingPage(),
        CampaignPage(),
        HelpCenterPage(),
      ][currentPageIndex],
    );
  }
}
