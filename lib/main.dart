import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Buttons.dart';
import 'package:toonflix/widgets/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 70,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Hey, DoyoungPark',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome Flutter',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                    y: 0,
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false),
                const CurrencyCard(
                  y: -20,
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                ),
                const CurrencyCard(
                  y: -40,
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money,
                  isInverted: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
