import 'package:flutter/material.dart';

final List<String> healthTitles = [
  "New Advances in Cancer Treatment",
  "Tips for Maintaining Mental Health",
  "Healthy Diet Trends in 2025",
  "Hospitals Adopt AI for Faster Diagnosis",
  "Fitness Boom Among Young Adults",
  "Breakthrough in Heart Disease Research",
  "World Health Organization Issues New Guidelines",
];

final List<String> healthSubtitles = [
  "Doctors report promising results with innovative cancer therapies.",
  "Experts share ways to reduce stress and improve well-being.",
  "Nutritionists highlight the latest food trends promoting longevity.",
  "Medical centers start using artificial intelligence to save time.",
  "More young people are adopting fitness routines and healthy habits.",
  "Researchers announce progress in treating heart-related conditions.",
  "The WHO updates its recommendations for global health standards.",
];

final List<String> healthImages = [
  "https://images.pexels.com/photos/305568/pexels-photo-305568.jpeg", 
  "https://images.pexels.com/photos/4101143/pexels-photo-4101143.jpeg", 
  "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg", 
  "https://images.pexels.com/photos/6234586/pexels-photo-6234586.jpeg",
  "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg", 
  "https://images.pexels.com/photos/4021776/pexels-photo-4021776.jpeg", 
  "https://images.pexels.com/photos/612904/pexels-photo-612904.jpeg", 
];

class healthscreen extends StatelessWidget {
  const healthscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(healthImages[index]),
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
            healthTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            healthSubtitles[index],
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
