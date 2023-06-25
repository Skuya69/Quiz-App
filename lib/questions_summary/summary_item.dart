import 'package:flutter/material.dart';
import 'package:second_app_quiz_app/questions_summary/question.identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 236, 215, 255),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(188, 255, 255, 255),
                  fontSize: 13,
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(237, 145, 200, 226),
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
