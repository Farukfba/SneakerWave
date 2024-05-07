import 'package:flutter/material.dart';
import 'package:sneakerwave/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/new-balance-logo.png', height: 240,),
              ),
              const SizedBox(height: 48,),

              //title
              const Text(
                "We Got Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 48,),

              //subtitle
               Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey[900]
                ),
                 textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),

              //start button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                ),
                child: Container(
                  decoration:  BoxDecoration(
                     color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                
                
                    ),
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
