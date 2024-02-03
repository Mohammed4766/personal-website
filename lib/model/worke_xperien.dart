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
      companyName: 'Mind Information Technology(Internship)',
      jobDescription:
          '- Developing a mobile application for the EAfW platform and creating a user-friendly interface. \n - Gaining practical experience in mobile application development and utilizing modern technologies. \n - Contributing to the development of a mobile application for the Berry Games platform.\n -Collaborating with the team to design interactive gameplay features and implementing engaging features.',
      jobTitle: 'Mobile application developer',
      startAndEndDate: '06/2023 – 08/2023'),
  WorkeXperien(
      companyName: 'Google Club for Student Developers(Volunteer)',
      jobDescription:
          '- Presenter of Software Engineering Specialization Exploration Journey Initiative | Google Developer Student Clubs | Northern Border University | Dec 2023 \n -Presenter of Build your first Flutter App course | Google Developer Student Clubs | Aljouf University | Jan 2024.',
      jobTitle: 'Member',
      startAndEndDate: '02/2023 – 01/2024'),
];
