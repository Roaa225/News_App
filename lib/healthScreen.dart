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
  "https://m7et.com/wp-content/uploads/2021/06/%D8%A8%D8%AD%D8%AB_%D8%B9%D9%86_%D8%A7%D9%84%D8%B5%D8%AD%D8%A9_%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%A9.jpg",
  "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg", 
  "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1087,c_scale,q_auto/cnnarabic/2020/08/06/images/161714.jpg", 
  "https://www.ra2ed.com/UserFiles/HEALTH-A22.jpg", 
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
