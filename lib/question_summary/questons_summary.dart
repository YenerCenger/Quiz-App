import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/summary_item.dart';

class QuestonsSummary extends StatelessWidget {
  const QuestonsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
