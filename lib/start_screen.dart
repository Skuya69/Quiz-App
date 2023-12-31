import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 400,
            child: Image.asset(
              'assets/images/tree.png',

              // color: const Color.fromARGB(176, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wielki Quiz o Drzewach!',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 25,
            ),
            // style: TextStyle(
            //   fontSize: 23,
            //   color: Colors.white,
            // ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.montserrat(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              size: 23,
            ),
            label: const Text('Rozpocznij Quiz'),
          ),
        ],
      ),
    );
  }
}
