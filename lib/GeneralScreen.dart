import 'package:flutter/material.dart';
final List<String> titles =  [
  "Global Leaders Meet for Climate Summit",
  "Stock Markets See Strong Recovery",
  "Tech Giants Face New Regulations",
  "Severe Weather Hits Coastal Cities",
  "Breakthrough in Renewable Energy",
  "Healthcare Systems Under Pressure",
  "Major Sports Event Unites Fans",
];

final List<String> subtitles =  [
  "World leaders gathered to discuss urgent steps to tackle climate change.",
  "Markets bounced back today after weeks of uncertainty and declines.",
  "Governments are introducing strict rules to control big tech companies.",
  "Heavy storms and floods disrupt life in major coastal areas worldwide.",
  "Scientists announce a major discovery in clean and renewable energy sources.",
  "Hospitals report a significant rise in patient numbers this season.",
  "Thousands of fans celebrate unity during a highly anticipated tournament.",
];

final List<String> imagesForG =  [
  "https://images.pexels.com/photos/2990650/pexels-photo-2990650.jpeg", 
  "https://images.pexels.com/photos/210607/pexels-photo-210607.jpeg",   
  "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg", 
  "https://images.pexels.com/photos/1118873/pexels-photo-1118873.jpeg", 
  "https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg", 
  "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg", 
  "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg", 
];

class Generalscreen extends StatelessWidget {
  const Generalscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(imagesForG[index]),
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
            titles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            subtitles[index],
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
