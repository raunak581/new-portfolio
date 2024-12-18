import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeSectionKey = GlobalKey();
  final GlobalKey _aboutSectionKey = GlobalKey();
  final GlobalKey _thirdSectionKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500), // Smooth scroll duration
        curve: Curves.easeInOut,
        alignment: 0.8,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with navigation

                  // Main Content
                  Padding(
                    key: _homeSectionKey,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Section: Text Content
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "HELLO",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "I AM RAUNAK DUBEY",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "JUNIOUR APPLICATION DEVELOPER",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  // Hire Me Button
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "HIRE ME",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // Get CV Button
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 30),
                                      side: const BorderSide(
                                          color: Colors.purple),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "GET CV",
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Right Section: Image
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 400,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/home-right.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    key: _aboutSectionKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Left Side: Illustration
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 400,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/about-us.png"), // Replace with your asset
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      // Right Side: Text Content
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Title
                              const Text(
                                "LET'S INTRODUCE ABOUT MYSELF",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                ),
                              ),
                              const SizedBox(height: 20),
                              // Description Text
                              const Text(
                                "I’m a passionate Flutter Developer with a knack for creating visually stunning and high-performing cross-platform mobile applications. My expertise lies in building seamless user experiences with clean code and modern UI/UX principles..\n\n"
                                "With a strong foundation in Dart and the Flutter framework, I excel at transforming ideas into functional, user-friendly apps that run flawlessly on both iOS and Android platforms.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 30),
                              // Button: Download CV
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Action here
                                  },
                                  child: const Text(
                                    "DOWNLOAD CV",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //third section
                  Padding(
                    key: _thirdSectionKey,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Side: GridView with logos
                        Expanded(
                          flex: 3,
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              _buildCard("Travel"),
                              _buildCard("Organic"),
                              _buildCard("Iconic"),
                              _buildCard("Microw"),
                              _buildCard("Hipster"),
                              _buildCard("Hipster"),
                            ],
                          ),
                        ),
                        SizedBox(width: 30),
                        // Right Side: Experience and Phone Box
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 10 Years Experience
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 80,
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 15),
                                        Text(
                                          "Years",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Experience\nWorking",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                // Call Us Now Section
                                const Text(
                                  "CALL US NOW",
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.phone,
                                        size: 28, color: Colors.black),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "(+91)-8779269243",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                // Ensures it touches the top, including status bar
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        // blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Logo
                      RichText(
                        text: const TextSpan(
                          text: 'SAT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'NER',
                              style: TextStyle(color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                      // Navigation Menu
                      Row(
                        children: [
                          'HOME',
                          'ABOUT',
                          'SERVICES',
                          'PORTFOLIO',
                          'BLOG',
                          'CONTACT'
                        ]
                            .map(
                              (text) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextButton(
                                  onPressed: () {
                                    if (text == 'HOME') {
                                      _scrollToSection(_homeSectionKey);
                                    } else if (text == 'ABOUT') {
                                      _scrollToSection(_aboutSectionKey);
                                    } else if (text == 'SERVICES') {
                                      _scrollToSection(_thirdSectionKey);
                                    }
                                  },
                                  child: Text(
                                    text,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
