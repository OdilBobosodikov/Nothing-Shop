import 'package:flutter/material.dart';
import 'package:sneakers_shop/utils/colors.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(
                  "lib/images/logo-phone.png",
                  color: Colors.white70,
                ),
              ),

              Text(
                "EMBRACE SIMPLICITY",
                style: TextStyle(color: AppColors.secondary, fontSize: 16),

                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                "— Terry A. Davis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                ),

                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: AppColors.background,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
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
