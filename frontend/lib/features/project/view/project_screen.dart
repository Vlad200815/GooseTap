import "package:flutter/material.dart";

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int counter = 0;

  void addClick() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Project Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 70,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/dollar_coin.png", scale: 15),
                  const SizedBox(width: 50),
                  Text(
                    counter.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () => addClick(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),

                  gradient: LinearGradient(
                    colors: [Color(0x0035389e), Color(0x001c2848)],

                    // begin: Alignment.topCenter,
                  ),
                ),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    gradient: RadialGradient(
                      colors: [
                        // Color(0x5155DA).withOpacity(0.8),
                        Color(0x5155DA),
                        Colors.transparent,
                      ],
                      // begin: Alignment.topLeft,
                      // end: Alignment.bottomRight,
                      center: Alignment.center,
                    ),
                  ),
                  padding: const EdgeInsets.all(3),

                  child: Center(
                    child: Image.asset("assets/goose.PNG", scale: 4),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
