import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/screens/nav_bar_screen.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF8A573),
      backgroundColor: kContentColor,
      
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyNavBarScreen(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: const Text(
          "Wallet",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("0.0 \$",style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20),),
                  Text(
                    "Total Amount",
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          
          ),
          Image.asset(
            "images/wallet.png",
            height: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text("No Transactions Available!!",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ),),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
                "They will appear whenever you make purchase or use the wallet",style:  TextStyle(color: Colors.grey),softWrap: true,textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
