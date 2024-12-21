import 'package:flutter/material.dart';
import "package:hovering/hovering.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeSectionKey = GlobalKey();
  final GlobalKey _aboutSectionKey = GlobalKey();
  final GlobalKey _serviceSectionKey = GlobalKey();
  final GlobalKey _fourthSectionKey = GlobalKey();

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
    final mediaQueryPadding = MediaQuery.of(context).padding;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(top: -mediaQueryPadding.top), // Remove top padding
        child: Stack(
          fit: StackFit.expand,
          children: [
            //      Container(
            //   color: Colors.red, // Visualize the entire area
            // ),
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with navigation

                  // Main Content
                  Container(
                    key: _homeSectionKey,
                    height: _height,
                    child: Padding(
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                  image: AssetImage(
                                      "assets/images/home-right.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    key: _aboutSectionKey,
                    height: _height,
                    child: Row(
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
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //third section
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 60),
                    child: Row(
                      key: _fourthSectionKey,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Side: GridView with logos
                        Expanded(
                          flex: 4,
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
                          flex: 3,
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
                                    SpinKitCircle(
                                      color: Colors.purple,
                                      size: 50.0,
                                    ),
                                    SpinKitWave(
                                      color: Colors.green,
                                      size: 50.0,
                                    ),
                                    SpinKitFadingCube(
                                      color: Colors.red,
                                      size: 50.0,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 100,
                  // ),

                  Container(
                    key: _serviceSectionKey,
                    height: _height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        // Title Section
                        Text(
                          "SERVICES OFFERS",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Is give may shall likeness made yielding spirit a itself togeth created after sea\n"
                          "is in beast beginning signs open god you're gathering ithe",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // Grid Section
                        Container(
                          // height: MediaQuery.sizeOf(context).height,
                          // width: 100,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: GridView.count(
                            crossAxisCount:
                                4, // Adjust based on the number of columns
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            shrinkWrap:
                                true, // Ensures the GridView doesn't expand infinitely
                            physics:
                                NeverScrollableScrollPhysics(), // Disables scrolling
                            children: [
                              _buildServiceTile(
                                icon: Icons.mouse,
                                title: "WP DEVELOPING",
                                description:
                                    "Creeping for female light years that lesser can't evening heaven isn't bearing tree",
                              ),
                              _buildServiceTile(
                                icon: Icons.design_services,
                                title: "UI/UX DESIGN",
                                description:
                                    "Creeping for female light years that lesser can't evening heaven isn't bearing tree",
                              ),
                              _buildServiceTile(
                                icon: Icons.web,
                                title: "WEB DESIGN",
                                description:
                                    "Creeping for female light years that lesser can't evening heaven isn't bearing tree",
                              ),
                              _buildServiceTile(
                                icon: Icons.rocket_launch,
                                title: "SEO OPTIMIZE",
                                description:
                                    "Creeping for female light years that lesser can't evening heaven isn't bearing tree",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 0,
              right: 0,
              child: SafeArea(
                top: false,
                // Ensures it touches the top, including status bar
                child: Container(
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.white,
                      //     // blurRadius: 4,
                      //     offset: Offset(0, 4),
                      //   ),
                      // ],
                      ),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                          'PORTFOLIO',
                          'SERVICES',
                          'CONTACT'
                        ]
                            .map(
                              (text) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextButton(
                                  onPressed: () {
                                    if (text == 'HOME') {
                                      _scrollToSection(_homeSectionKey);
                                    } else if (text == 'ABOUT') {
                                      _scrollToSection(_aboutSectionKey);
                                    } else if (text == 'PORTFOLIO') {
                                      _scrollToSection(_fourthSectionKey);
                                    } else if (text == 'SERVICES') {
                                      _scrollToSection(_serviceSectionKey);
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
      elevation: 10,
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
              blurRadius: 100,
              offset: Offset(10, 5),
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

  Widget _buildServiceTile({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return HoverContainer(
      width: 200, // Adjust as needed
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade100,
        //     blurRadius: 5,
        //     offset: Offset(4, 2),
        //   ),
        // ],
      ),
      hoverDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      // onTap: () => print("Clicked on $title"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.purple,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
