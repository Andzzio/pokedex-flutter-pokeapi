import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/presentation/widgets/poke_button.dart';
import 'package:pokedex_clean_app/presentation/widgets/poke_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFFF1A55)),
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: PokeButton(
                    tag: "Up Little Circle Blue",
                    color: Colors.blue,
                    width: 70,
                    height: 70,
                    shape: Shapes.circ,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.elliptical(160, 80),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 70,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: PokeView(),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              children: [
                                PokeButton(
                                  tag: "Little Blue Circle",
                                  color: Colors.blue,
                                  width: 50,
                                  height: 50,
                                  shape: Shapes.circ,
                                ),
                                SizedBox(width: 20),
                                PokeButton(
                                  tag: "Little Green",
                                  color: Colors.greenAccent,
                                  width: 50,
                                  height: 10,
                                  radius: 5,
                                ),
                                SizedBox(width: 20),
                                PokeButton(
                                  tag: "Little Orange",
                                  color: Colors.orangeAccent,
                                  width: 50,
                                  height: 10,
                                  radius: 5,
                                ),
                              ],
                            ),
                          ),
                          PokeButton(
                            tag: "Yellow Rect",
                            color: Colors.amberAccent,
                            width: double.infinity,
                            height: 50,
                            radius: 10,
                            margin: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          PokeButton(
                            tag: "Y Dpad",
                            color: Color(0xFF222224),
                            width: 30,
                            height: 90,
                            radius: 5,
                          ),
                          PokeButton(
                            tag: "X Dpad",
                            color: Color(0xFF222224),
                            width: 90,
                            height: 30,
                            radius: 5,
                          ),
                          PokeButton(
                            tag: "Center Dpad",
                            color: Color(0xFF18181A),
                            width: 30,
                            height: 30,
                            shape: Shapes.circ,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
