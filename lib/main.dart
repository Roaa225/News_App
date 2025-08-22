import 'package:f6/SecondScreen.dart';
import 'package:flutter/material.dart';

final List<String>images= [
  "https://images.pexels.com/photos/261949/pexels-photo-261949.jpeg", 
  "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg", 
  "https://images.pexels.com/photos/210607/pexels-photo-210607.jpeg", 
  "https://images.pexels.com/photos/3861969/pexels-photo-3861969.jpeg", 
  "https://images.pexels.com/photos/713149/pexels-photo-713149.jpeg", 
  "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg", 
  "https://images.pexels.com/photos/2280547/pexels-photo-2280547.jpeg", 
];

final List<String>descrition= [
  "General",
  "Sports",
  "Business",
  "Technology",
  "Entertainment",
  "Health",
  "Since",
];

final List<String> titles = const [
    "Issue 1: Ohio vote delivers win for abortion rights supporters",
    "Stock market today: Live updates",
    "Tech layoffs continue",
    "Global oil prices rise amid supply concerns",
    "AI technology reshaping the future of work",
    "Healthcare costs continue to climb in 2023",
    "Champions League: Big teams face tough draws",
  ];

  final List<String> subtitles = const [
    "A vote to raise the bar to amend Ohio’s constitution became a battle over abortion rights in the state.",
    "Investors are coming off a down session for the major averages Tuesday.",
    "Several firms announced new rounds of layoffs this week, affecting thousands of employees.",
    "Energy markets face volatility as supply shortages push oil prices higher worldwide.",
    "Artificial intelligence tools are transforming industries and changing the way people work.",
    "Medical expenses have been steadily increasing, putting pressure on families and governments.",
    "Europe’s top clubs prepare for challenging fixtures in the upcoming Champions League matches.",
  ];

  final List<String> imagesForG = const [
    "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg",
    "https://images.pexels.com/photos/210607/pexels-photo-210607.jpeg",
    "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg",
    "https://sitescdn.wearevennture.co.uk/public/nes-fircroft/mediahub/istock-518198851-dc6551103421415fb10240f202527c46.jpg",
    "https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg",
    "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg",
    "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
  ];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("News App",style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
          centerTitle: true,
          leading: Icon(Icons.newspaper),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              GridView.builder(
                shrinkWrap: true, 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
                  itemCount: 7,
              
                 itemBuilder:(context,index){
                   return GestureDetector(
                    onTap: () {
                    Navigator.push(
                    context,
                   MaterialPageRoute(
                   builder: (context) {
                   return SecondScreen();
                 },
               ),
             );
          },
                     child: Column(children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                         image:DecorationImage(image:NetworkImage(images[index]),fit: BoxFit.cover)),
                        
                      ),
                      Text(descrition[index],style: TextStyle(color: Colors.black, fontSize: 10, fontWeight:FontWeight.bold))
                     ],),
                   );
                 }
              ),
               
               Divider (
                thickness: .5,
                color: Colors.grey,
                height: 10,
                ),
          
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(titles[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      subtitle: Text(subtitles[index]),
                      trailing: Container(
                        width: 80,
                        height: 200,
                        clipBehavior: Clip.hardEdge, 
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       image:DecorationImage(image:NetworkImage(imagesForG[index]),fit: BoxFit.cover))
                      ),
                    );
                  },
                   separatorBuilder: (context, index) {
                   return Divider(
                   thickness: 0.5,   
                   indent: 10,   
                   endIndent: 10,    
                   color: Colors.grey,
                   );
                  },      
                  ),
                   
            ],),
          ),
        ),

      ),
    );
  }
}


    
  

