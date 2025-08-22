import 'package:flutter/material.dart';

final List<String> businessTitles = [
  "Global Trade Reaches New Heights",
  "Small Businesses Embrace Digital Tools",
  "Real Estate Market Shows Steady Growth",
  "Banks Introduce Innovative Services",
  "Startups Attract Record Investments",
  "Retail Industry Faces New Challenges",
  "Oil Prices Fluctuate Amid Market Uncertainty",
];

final List<String> businessSubtitles = [
  "International trade sees a boost with stronger global ties.",
  "Local businesses shift online to expand their reach.",
  "Housing demand increases, driving steady property growth.",
  "Banks launch digital platforms to enhance customer service.",
  "Investors pour billions into emerging startups worldwide.",
  "Retailers adapt to changing consumer buying habits.",
  "Global oil prices show volatility due to market pressures.",
];

final List<String> businessImages = [
  "https://images.pexels.com/photos/210607/pexels-photo-210607.jpeg", 
  "https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg", 
  "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg", 
  "https://images.pexels.com/photos/4386371/pexels-photo-4386371.jpeg", 
  "https://images.pexels.com/photos/3182833/pexels-photo-3182833.jpeg",
  "https://images.pexels.com/photos/4481534/pexels-photo-4481534.jpeg",
  "https://images.pexels.com/photos/730547/pexels-photo-730547.jpeg", 
];

class businessScreen extends StatelessWidget {
  const businessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(businessImages[index]),
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
            businessTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            businessSubtitles[index],
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
