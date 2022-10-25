import 'package:flutter/material.dart';
import 'package:learn_languages/views/widgets/appbar_widget.dart';

import 'main_units_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Container(
            height: size.height / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      const NetworkImage("https://picsum.photos/250?image=9"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.dstATop),
                ),
                color: const Color(0xffb4f0fea),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(150),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 150, 0),
            child: SizedBox(
              width: size.width / 2,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 79, 15, 234)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const MainUnitScreen())));
                },
                child: const Text(
                  "START",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
