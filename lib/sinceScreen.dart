import 'package:flutter/material.dart';

final List<String> scienceTitles = [
  "Mars Rover Discovers Signs of Water",
  "New Vaccine Shows Promising Results",
  "Breakthrough in Renewable Energy Research",
  "Scientists Observe Rare Cosmic Event",
  "Genetic Research Opens Door to New Therapies",
  "Climate Studies Reveal Alarming Trends",
  "AI Helps Predict Natural Disasters",
];

final List<String> scienceSubtitles = [
  "NASA's rover finds evidence of ancient water on Mars.",
  "Recent trials indicate high efficacy and safety of the vaccine.",
  "Researchers develop innovative methods for clean energy generation.",
  "Astronomers witness a rare and spectacular cosmic phenomenon.",
  "Advances in genetics pave the way for personalized medicine.",
  "New climate data highlights urgent environmental concerns.",
  "Artificial intelligence models improve disaster prediction and response.",
];

final List<String> scienceImages = [
  "https://images.pexels.com/photos/2150/sky-space-dark-galaxy.jpg", 
  "https://images.pexels.com/photos/5929/health-medicine-doctor-hospital.jpg", 
  "https://images.pexels.com/photos/256262/pexels-photo-256262.jpeg", 
  "https://images.pexels.com/photos/23727/pexels-photo.jpg", 
  "https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg", 
  "https://images.pexels.com/photos/1100730/pexels-photo-1100730.jpeg", 
  "https://images.pexels.com/photos/3825513/pexels-photo-3825513.jpeg", 
];

class sinceScreen extends StatelessWidget {
  const sinceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Since', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(scienceImages[index]),
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
            scienceTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            scienceSubtitles[index],
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
