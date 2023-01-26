// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utili/my_button.dart';
import 'package:wallet_app/utili/my_card.dart';
import 'package:wallet_app/utili/my_listtile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My ',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.25,
                      cardNumber: 94113345,
                      expiryMonth: 10,
                      expiryYear: 25,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 425.25,
                      cardNumber: 94113345,
                      expiryMonth: 1,
                      expiryYear: 24,
                      color: Colors.blue[300],
                    ),
                    MyCard(
                      balance: 10784.37,
                      cardNumber: 94113345,
                      expiryMonth: 8,
                      expiryYear: 23,
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      IconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send',
                    ),
                    MyButton(
                      IconImagePath: 'lib/icons/credit-card.png',
                      buttonText: 'Pay',
                    ),
                    MyButton(
                      IconImagePath: 'lib/icons/bill.png',
                      buttonText: 'Bill',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    MyListTile(
                      IconImagePath: 'lib/icons/statistics.png',
                      tileTitle: 'Statistic',
                      tileSubTitle: 'Payments and Income',
                    ),
                    MyListTile(
                      IconImagePath: 'lib/icons/transaction.png',
                      tileTitle: 'Transaction',
                      tileSubTitle: 'Transaction History',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 15,
          ),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: Colors.deepPurple,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 10,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.card_giftcard,
                text: "Payment",
              ),
              GButton(
                icon: Icons.settings,
                text: "Setting",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
