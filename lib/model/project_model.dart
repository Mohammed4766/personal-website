class Project {
  final String projectName;
  final String projectDescription;
  final String projectImg;

  Project(
      {required this.projectName,
      required this.projectDescription,
      required this.projectImg});
}

List<Project> projects = [
  Project(
      projectName: "MUNIR",
      projectDescription:
          "This system employs AI and surveillance cameras to monitor fires. Upon detecting a fire, it promptly sends alerts to both the user and civil defense. Additionally, it provides crucial information to facilitate informed decision-making.",
      projectImg: "assets/project/MUNIR.png"),
  Project(
      projectName: "Notepad",
      projectDescription:
          "A sophisticated note-taking application that empowers users to seamlessly create, edit, store their notes. Leveraging advanced libraries, the app ensures efficient data storage on the device, guaranteeing a streamlined and organized note-taking experience.",
      projectImg: "assets/project/Notepad.png"),
  Project(
      projectName: "quiz app",
      projectDescription:
          "An application that displays some questions, answers them, and displays the result",
      projectImg: "assets/project/quiz app.png"),
  Project(
      projectName: "bolot",
      projectDescription:
          "bolot is an application for calculating the points of playing the game of bolot",
      projectImg: "assets/project/bolot.png"),
  Project(
      projectName: "ecommerce",
      projectDescription:
          "E-commerce platform for easy shopping: Log in, explore diverse products, add to cart, and seamlessly checkout for a secure and convenient experience.",
      projectImg: "assets/project/ecommerce.png"),
  Project(
      projectName: "Personal website",
      projectDescription:
          "A personal website showcasing my projects, experiences, skills, and contact information.",
      projectImg: "assets/project/Personal website.png"),
  Project(
      projectName: "Exchange shelves",
      projectDescription:
          "With effortless book discovery organized by city or book name, users can seamlessly explore a curated selection of used books available for sale or as gifts. .",
      projectImg: "assets/project/Exchange shelves.png"),
  Project(
      projectName: "Berry Gyms",
      projectDescription:
          "This application was crafted during a cooperative internship. It enables users to subscribe to sports clubs, efficiently manage their subscriptions, and easily book lessons.",
      projectImg: "assets/project/Berry Gyms.png"),
  Project(
      projectName: "EAFW",
      projectDescription:
          "I contributed to the development of a fundraising platform as part of my cooperative training. My role involved building a mobile application using Flutter.",
      projectImg: "assets/project/EAFW.png"),
  Project(
      projectName: "cryptocurrency",
      projectDescription:
          "The application uses API to display cryptocurrency prices, GETX is used as state management .",
      projectImg: "assets/project/cryptocurrency.png"),
];
