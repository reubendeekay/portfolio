import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xFF3500D3);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://web.facebook.com/profile.php?id=100005542429293",
  "https://instagram.com/deekay_edits",
  "https://twitter.com/kid_indigoo",
  "https://www.linkedin.com/in/reuben-balozi-18991420b",
  "https://github.com/reubendeekay",
  "https://mhamzadev.medium.com"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = ['assets/dsc.png', 'assets/git.png'];

final kCommunityLinks = [
  "https://gdsc.community.dev/university-of-nairobi/",
  "https://github.com/reubendeekay"
];

// Tools & Tech
final kTools = ["Flutter", "Dart", "Javascript", "Python", "Java", "C++"];

final kTools1 = ["HTML", "CSS", "React Js", "Node Js", "Selenium"];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/rapid.png",
  "assets/services/ui.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "App Development",
  "Web Development",
  "UI/UX Design",
  "Graphics Design",
  "Rapid Prototyping",
];

final kServicesDescriptions = [
  "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
  "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
  "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
  "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images, interesting topics and SEO friendly.\nCheck out my Medium profile @mhamzadev",
  "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nCheck out my GitHub Profile @m-hamzashakeel",
];

final kServicesLinks = [
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://mhamzadev.medium.com",
  "https://github.com/m-hamzashakeel"
];

// projects
final kProjectsBanner = [
  "assets/projects/medkitB.png",
  "assets/projects/quranB.png",
  "assets/projects/hereiamB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
  "assets/projects/covidB.png",
];

final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/quran.png",
  "assets/projects/messenger.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/projects/android.png",
  "assets/projects/android.png",
  "assets/projects/android.png",
  "assets/projects/android.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "Kilifi County App",
  "iTravel",
  "Chat App",
  "eCommerce App",
  "Wallify",
  "Snap Chef",
  "Deekay News",
  "Shop it",
  "Funiture App UI",
  "20+ Error Screens",
  "Kilifi County Admin",
  "Elongo Publishers",
  "Hope Foundation",
  "Snap Admin",
  "Gyla",
  "My UI Pack",
];

final kProjectsDescriptions = [
  //Kilifi County App
  "A County App to enable the residents of Kilifi County access services online. It also makes it easier to book for appointments and access posted job opportunities. It provides information and transparency through news and the current workings of the County government. There is also an open Forum for users to interact by through posts and direct messaging.",
  //iTravel
  "A hotel and residence booking app with a revamped UI that gives tourists a wide range of hotels and residence to pick from according to their location. It has a powerful filtering and recommendation system to get you the right hotel and or residence on your budget. It also provides hotels and residences an open market for more exposure to potential clients.",
  //Chat App
  "A complete social media and messaging platform like Whatsapp developed with Flutter. There is both Light and Dark Mode. NOTE: The public github repository only contains the UI for the app with over 20 screens, the full app is on a private repository. Contact me if you need to add messaging features to your app or in need of a complete messaging app.",
  //Ecommerce App
  "A fully fledged Ecommerce app developed with Flutter. There is  wide range of product categories to choose from. The UI is clean, modern and stylish. It offers different types of payments including Mpesa and Paypal. NOTE: The public github repository only contains the UI. You can use any backend service you want. Contact me if you need a full ecommerce app",
  //Wallify
  "A wallpaper and royalty free pictures app. You can search through more than 5 million wallpapers and lets you download any for free. It combines both the Pexels API and Unpslash API for a wider range of royalty free picture availability",
  //Snap Chef
  "A single restaurant food discovery, order and delivery app. It hs a beutiful, elegant and fresh UI that lets users enjoy the whole experience.Users can track their order in realtime on the map. There is also a dedicated customer care platform for the admins to handle customer queries",
  //Deekay News
  "A news app that lets you access global news without any subscription. There is a wide range of news category to pick from and from selected countries. This makes use of the NewsOrg API. Take note that not all countries are made available by the API.",
  //Shop it
  "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  //Furniture App UI
  " An App UI concept for a furniture ecommerce business.  ",
  //20 + Error Screens
  "More than 20 error screens in flutter including 404 Error.They are stylish, modern and responsive. Use these to speed up your development. The source code is free to use. Fork the project, give it a star and some credit.",
  //Kilifi County Admin
  "This is a full web admin panel for the Kilifi County App hosted on Firebase. Admin Users can post news, job opportunities and pictures to the County gallery. In addition, they can manage users including adding new admins, making some users verified if they pass the set criteria and they can handle appointment requests to the different offices. They can also respond to customer queries in the Customer care section.",
  //Elongo Publishers
  "An app for a publishing company-Elongo publishers that lets users purchase digital books and read them online. It offers a wide range of catalogue. In case of a physical book request, the payment and delivery is all handled within the app. It also offers a client-owner interaction and support through a messaging platform. This is an ongoing project, the app will be in the app stores once completed.",
  //Hope Foundation
  "An app for a charity organisation- Hope Foundation. Hope Foundation helps young girls who have undergone early pregnancy or are forced to early marriages to find solace and a better life. This app is meant to share some of the stories of the young girls, spread awareness and most importantly help Hope Foundation to get more well wishers and sponsors to help run the organisation and support more girls. Soon to be in the app stores",
  //Snap Admin
  "An admin app that complements the Snap Chef app. This lets the owner of the restaurant manage posts, employees, view different stats and process orders and deliveries. Through the app, the admin can handle customer care requests. The admin can also posts ads, promotions and even add more categories to the app. However im in the process of changing the UI",
  //Gylas
  "A community interaction app for Global Young Leaders association(Gyla) an offshoot of Aiducation Kenya, a charity organisation that sponsors needy bright high school students from Kenya, Tanzania, Uganda, Ghana and the Phillipines. The app is a social platform that complements their website https://gyla.net by adding more features such as notifications. This is still an ongoing project",
//My UI Pack
  "A Flutter UI pack with different types of advanced animations and concepts. It contains over 50 different animations, UI designs, and important concepts in Flutter all bundled into a single app.Some of the concepts and code is added from other developers. This is a ongoing and a continuous project meaning i will be adding new UI concepts regularly ",
];

final kProjectsLinks = [
  "https://github.com/m-hamzashakeel/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/m-hamzashakeel/The_Holy_Quran_App",
  "https://github.com/m-hamzashakeel/Here-I-Am-Alert-App",
  "https://github.com/m-hamzashakeel/Here-I-Am-Alert-App",
  "https://github.com/m-hamzashakeel/Covid19-Tracker-App",
  "https://github.com/m-hamzashakeel/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/m-hamzashakeel/flutter.dev-Flutter-Web-Clone",
  "https://github.com/m-hamzashakeel/Earbender_Music_App",
  "https://github.com/m-hamzashakeel/FTP_GUI_Java",
  "https://github.com/m-hamzashakeel/My-Order-Resturant-Ordering-System",
  "https://github.com/m-hamzashakeel/Hidev_Web",
  "https://github.com/m-hamzashakeel/Hidev_Web",
  "https://github.com/m-hamzashakeel/Hidev_Web",
  "https://github.com/m-hamzashakeel/Hidev_Web",
  "https://github.com/m-hamzashakeel/Hidev_Web",
  "https://github.com/m-hamzashakeel/Hidev_Web",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Malindi, Kenya",
  "+254 796660187",
  "reubenjefwa1@gmail.com"
];
