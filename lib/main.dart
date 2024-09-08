import 'package:flutter/material.dart';
import 'package:tic_tac_toe/BoleanFlags.dart';
import 'package:tic_tac_toe/Container1.dart';
import 'package:tic_tac_toe/Container2.dart';
import 'package:tic_tac_toe/Container3.dart';
import 'package:tic_tac_toe/Container4.dart';
import 'package:tic_tac_toe/Container5.dart';
import 'package:tic_tac_toe/Container6.dart';
import 'package:tic_tac_toe/Container7.dart';
import 'package:tic_tac_toe/Container8.dart';
import 'package:tic_tac_toe/Container9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const Center(child: MainLayout()));
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => MainLayoutState();
}

String whoWin = "Wins";

class MainLayoutState extends State<MainLayout> {
  int container1CheckPoint = 0;
  int container2CheckPoint = 0;
  int container3CheckPoint = 0;
  int container4CheckPoint = 0;
  int container5CheckPoint = 0;
  int container6CheckPoint = 0;
  int container7CheckPoint = 0;
  int container8CheckPoint = 0;
  int container9CheckPoint = 0;

  int mainContainerGameFlex = 45;
  int gameOverContainerFlex = 0;
  void onContainer1Tap() {
    if (container1CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container1CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container1CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer2Tap() {
    if (container2CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container2CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container2CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer3Tap() {
    if (container3CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container3CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container3CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer4Tap() {
    if (container4CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container4CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container4CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer5Tap() {
    if (container5CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container5CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container5CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer6Tap() {
    if (container6CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container6CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container6CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer7Tap() {
    if (container7CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container7CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container7CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer8Tap() {
    if (container8CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container8CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container8CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void onContainer9Tap() {
    if (container9CheckPoint == 0) {
      if (!Flag.circleFlag) {
        Flag.circleFlag = true;
        Flag.crossFlag = false;
        container9CheckPoint = 1;
      } else if (!Flag.crossFlag) {
        Flag.crossFlag = true;
        Flag.circleFlag = false;
        container9CheckPoint = 2;
      }
      checkForWin();
    }
  }

  void checkForWin() {
    setState(() {
      if ((container1CheckPoint == 0 &&
              container2CheckPoint == 0 &&
              container3CheckPoint == 0) ||
          (container4CheckPoint == 0 &&
              container5CheckPoint == 0 &&
              container6CheckPoint == 0) ||
          (container7CheckPoint == 0 &&
              container8CheckPoint == 0 &&
              container9CheckPoint == 0) ||
          (container1CheckPoint == 0 &&
              container4CheckPoint == 0 &&
              container7CheckPoint == 0) ||
          (container2CheckPoint == 0 &&
              container5CheckPoint == 0 &&
              container8CheckPoint == 0) ||
          (container3CheckPoint == 0 &&
              container6CheckPoint == 0 &&
              container9CheckPoint == 0) ||
          (container1CheckPoint == 0 &&
              container5CheckPoint == 0 &&
              container9CheckPoint == 0)) {
        whoWin = "randomPlayerWon $container1CheckPoint";
      } else if ((container1CheckPoint == 1 &&
              container2CheckPoint == 1 &&
              container3CheckPoint == 1) ||
          (container4CheckPoint == 1 &&
              container5CheckPoint == 1 &&
              container6CheckPoint == 1) ||
          (container7CheckPoint == 1 &&
              container8CheckPoint == 1 &&
              container9CheckPoint == 1) ||
          (container1CheckPoint == 1 &&
              container4CheckPoint == 1 &&
              container7CheckPoint == 1) ||
          (container3CheckPoint == 1 &&
              container5CheckPoint == 1 &&
              container7CheckPoint == 1) ||
          (container2CheckPoint == 1 &&
              container5CheckPoint == 1 &&
              container8CheckPoint == 1) ||
          (container3CheckPoint == 1 &&
              container6CheckPoint == 1 &&
              container9CheckPoint == 1) ||
          (container1CheckPoint == 1 &&
              container5CheckPoint == 1 &&
              container9CheckPoint == 1)) {
        gameOverContainerFlex = 45;
        mainContainerGameFlex = 0;
        whoWin = "Player 1 wins ";
      } else if ((container1CheckPoint == 2 &&
              container2CheckPoint == 2 &&
              container3CheckPoint == 2) ||
          (container4CheckPoint == 2 &&
              container5CheckPoint == 2 &&
              container6CheckPoint == 2) ||
          (container7CheckPoint == 2 &&
              container8CheckPoint == 2 &&
              container9CheckPoint == 2) ||
          (container3CheckPoint == 2 &&
              container5CheckPoint == 2 &&
              container7CheckPoint == 2) ||
          (container1CheckPoint == 2 &&
              container4CheckPoint == 2 &&
              container7CheckPoint == 2) ||
          (container2CheckPoint == 2 &&
              container5CheckPoint == 2 &&
              container8CheckPoint == 2) ||
          (container3CheckPoint == 2 &&
              container6CheckPoint == 2 &&
              container9CheckPoint == 2) ||
          (container1CheckPoint == 2 &&
              container5CheckPoint == 2 &&
              container9CheckPoint == 2)) {
        gameOverContainerFlex = 45;
        mainContainerGameFlex = 0;
        whoWin = "Player 2 wins ";
      } else if (container1CheckPoint != 0 &&
          container2CheckPoint != 0 &&
          container3CheckPoint != 0 &&
          container4CheckPoint != 0 &&
          container5CheckPoint != 0 &&
          container6CheckPoint != 0 &&
          container7CheckPoint != 0 &&
          container8CheckPoint != 0 &&
          container9CheckPoint != 0) {
        whoWin = "Tied";
        gameOverContainerFlex = 45;
        mainContainerGameFlex = 0;
      }
    });
  }

  void clickOnRestart() {
    setState(() {
      container1CheckPoint = 0;
      container2CheckPoint = 0;
      container3CheckPoint = 0;
      container4CheckPoint = 0;
      container5CheckPoint = 0;
      container6CheckPoint = 0;
      container7CheckPoint = 0;
      container8CheckPoint = 0;
      container9CheckPoint = 0;
      mainContainerGameFlex = 45;
      gameOverContainerFlex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // checkForWin();
    return Column(
      children: [
        Expanded(
            flex: 30,
            child: Image.asset(
              "assets/images/tictactoe.png",
              fit: BoxFit.fill,
            )),
        const Spacer(
          flex: 5,
        ),
        if (gameOverContainerFlex > 0)
          Expanded(
              flex: gameOverContainerFlex,
              child: Container(
                color: Colors.red.shade300,
                alignment: Alignment.center,
                child: Text(
                  whoWin,
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        if (mainContainerGameFlex > 0 && gameOverContainerFlex == 0)
          Expanded(
            flex: mainContainerGameFlex,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Expanded(
                    flex: 33,
                    child: Row(
                      children: [
                        Container1(
                          onContainer1OneTap: onContainer1Tap,
                          container1CheckPoint: container1CheckPoint,
                        ),
                        Container2(
                          onContainer2OneTap: onContainer2Tap,
                          container1CheckPoint: container2CheckPoint,
                        ),
                        Container3(
                          onContainer3OneTap: onContainer3Tap,
                          container1CheckPoint: container3CheckPoint,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 33,
                    child: Row(
                      children: [
                        Container4(
                          onContainer4OneTap: onContainer4Tap,
                          container1CheckPoint: container4CheckPoint,
                        ),
                        Container5(
                          onContainer5OneTap: onContainer5Tap,
                          container1CheckPoint: container5CheckPoint,
                        ),
                        Container6(
                          onContainer6OneTap: onContainer6Tap,
                          container1CheckPoint: container6CheckPoint,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 33,
                    child: Row(
                      children: [
                        Container7(
                          onContainer7OneTap: onContainer7Tap,
                          container1CheckPoint: container7CheckPoint,
                        ),
                        Container8(
                          onContainer8OneTap: onContainer8Tap,
                          container1CheckPoint: container8CheckPoint,
                        ),
                        Container9(
                          onContainer9OneTap: onContainer9Tap,
                          container1CheckPoint: container9CheckPoint,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        Expanded(
            flex: 20,
            child: Row(
              children: [
                const Spacer(
                  flex: 20,
                ),
                Expanded(
                    flex: 60,
                    child: FloatingActionButton(
                      backgroundColor: Colors.orange,
                      onPressed: clickOnRestart,
                      child: const Text("Restart Game"),
                    )),
                const Spacer(
                  flex: 20,
                )
              ],
            ))
      ],
    );
  }
}

class ContainerToCheckForWin extends StatelessWidget {
  const ContainerToCheckForWin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Text(
        whoWin,
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
