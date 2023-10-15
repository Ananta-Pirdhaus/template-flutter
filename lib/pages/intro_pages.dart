import "package:flutter/material.dart";
import "package:flutter_rizal/pages/home_pages.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                    'lib/images/nike.png',
                    height: 100,
                  ),
                ),

                const SizedBox(height: 48),
                // Title
                Text(
                  "Just Do It",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontStyle: FontStyle.italic),
                ),

                const SizedBox(
                  height: 24,
                ),

                // Sub Title
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: const Text(
                    "Brand new sneakers and custom kicks made with premium quality",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Start Now Button
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(25),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
