import 'package:flutter/material.dart';

class WorkeXperienBox extends StatelessWidget {
  const WorkeXperienBox({
    super.key,
    required this.width,
    required this.companyName,
    required this.startAndEndDate,
    required this.jobTitle,
    required this.jobDescription,
  });

  final double width;
  final String companyName;
  final String startAndEndDate;
  final String jobTitle;
  final String jobDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: width,
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(98, 195, 209, 202),
              offset: Offset(
                -5.0,
                3.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 31, 26, 26),
                Color.fromARGB(255, 46, 43, 43)
              ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(companyName, style: TextStyle(fontSize: width * 0.014)),
              Text(startAndEndDate, style: TextStyle(fontSize: width * 0.014)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(jobTitle, style: TextStyle(fontSize: width * 0.019)),
          const SizedBox(
            height: 10,
          ),
          Text(jobDescription, style: TextStyle(fontSize: width * 0.017)),
        ],
      ),
    );
  }
}
