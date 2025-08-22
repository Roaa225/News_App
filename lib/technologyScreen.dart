import 'package:flutter/material.dart';

final List<String> technologyTitles = [
  "AI Startup Raises 50 Million in Funding",
  "New Smartphone Model Breaks Sales Records",
  "Breakthrough in Quantum Computing Announced",
  "Cybersecurity Threats Increasing Globally",
  "Virtual Reality Set to Revolutionize Education",
  "Tech Giants Release Latest Gadgets",
  "Electric Vehicles Gain Popularity Among Consumers",
];

final List<String> technologySubtitles = [
  "Emerging AI companies attract huge investments from global investors.",
  "Latest smartphones reach record-breaking sales within days.",
  "Researchers announce major advances in quantum computing.",
  "Cyber attacks grow more sophisticated and widespread worldwide.",
  "VR technology offers immersive learning experiences in schools.",
  "Leading tech companies unveil cutting-edge gadgets and devices.",
  "Electric cars become increasingly common among everyday drivers.",
];

final List<String> technologyImages = [
  "https://images.pexels.com/photos/1181675/pexels-photo-1181675.jpeg", 
  "https://images.pexels.com/photos/1092671/pexels-photo-1092671.jpeg", 
  "https://images.pexels.com/photos/256381/pexels-photo-256381.jpeg", 
  "https://t4.ftcdn.net/jpg/02/45/63/69/360_F_245636933_kY23ohGptK5t6n8wGSXIgLgVXWeHJRct.jpg", 
  "https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg", 
  "https://images.pexels.com/photos/1181297/pexels-photo-1181297.jpeg", 
  "https://images.pexels.com/photos/110844/pexels-photo-110844.jpeg", 
];

class technologyScreen extends StatelessWidget {
  const technologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technology', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(technologyImages[index]),
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
            technologyTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            technologySubtitles[index],
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
