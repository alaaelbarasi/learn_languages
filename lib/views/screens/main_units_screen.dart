import 'package:flutter/material.dart';
import 'package:learn_languages/views/screens/unit_screen.dart';

import 'package:learn_languages/views/widgets/appbar_widget.dart';

class MainUnitScreen extends StatefulWidget {
  const MainUnitScreen({Key? key}) : super(key: key);

  @override
  State<MainUnitScreen> createState() => _MainUnitScreenState();
}

class _MainUnitScreenState extends State<MainUnitScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3.5,
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ENGLISH",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "MAIN UNITS",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const UnitScreen()),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: const Color(0xffbb862eb),
                      child: ListTile(
                        trailing: const Icon(
                          Icons.circle_outlined,
                          size: 30,
                        ),
                        title: Text(
                          "Unit $index",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: const Text(
                          "Unit title",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
