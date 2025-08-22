import 'package:flutter/material.dart';

final List<String> sportsTitles = [
  "Local Team Wins Championship",
  "Star Player Injured in Match",
  "Historic Record Broken in Athletics",
  "New Coach Brings Fresh Tactics",
  "Fans Celebrate Victory Worldwide",
  "Upcoming Tournament Creates Buzz",
  "Young Talent Shines on Debut",
];

final List<String> sportsSubtitles = [
  "A thrilling final match ends with a local team's victory.",
  "Key player suffers an injury, raising concerns for the season.",
  "Athlete sets a new world record in a major competition.",
  "The new coach changes strategies and boosts performance.",
  "Supporters around the globe celebrate a historic win.",
  "Excitement builds as the tournament is set to begin soon.",
  "A young athlete impresses fans and critics with great performance.",
];

final List<String> sportsImages = [
  "https://images.pexels.com/photos/114296/pexels-photo-114296.jpeg",
  "https://images.pexels.com/photos/47730/the-ball-stadion-football-the-pitch-47730.jpeg",
  "https://images.pexels.com/photos/163403/soccer-football-goalkeeper-catch-163403.jpeg",
  "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
  "https://images.pexels.com/photos/159515/soccer-football-sport-ball-159515.jpeg",
  "https://images.pexels.com/photos/114296/pexels-photo-114296.jpeg",
  "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
];

class sportsScreen extends StatelessWidget {
  const sportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
         leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      
      body:ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context,index){
         return Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(sportsImages[index]),
          fit: BoxFit.cover,
        ),
      ),
    ),
    SizedBox(width: 8),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            sportsTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            sportsSubtitles[index],
            style: TextStyle(fontSize: 12, color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  ],
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
    )
    );
  }
}
