class WorkeXperien {
  final String companyName;
  final String jobTitle;
  final String startAndEndDate;
  final String jobDescription;

  WorkeXperien({
    required this.companyName,
    required this.jobTitle,
    required this.startAndEndDate,
    required this.jobDescription,
  });
}

List<WorkeXperien> myWorkeXperien = [
  WorkeXperien(
      companyName: 'Mind Information Technology ',
      jobDescription:
          'During the training period, I contributed to two projects: the Afo fundraising platform and Berry Gyms. My primary role in both projects involved the development of mobile applications. ',
      jobTitle: 'Application developer (intern)',
      startAndEndDate: '06/2023 – 08/2023'),
  WorkeXperien(
      companyName: 'Google Club for Student Developers ',
      jobDescription:
          'Delivering instructional lectures and providing guidance to students in the development of applications. ',
      jobTitle: 'Member',
      startAndEndDate: '02/2023 – 01/2024'),
];
