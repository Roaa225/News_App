import 'package:flutter/material.dart';

final List<String> entertainmentTitles = [
  "Blockbuster Movie Breaks Box Office Records",
  "Famous Singer Releases New Album",
  "Streaming Platforms Compete for Viewers",
  "Award Show Celebrates Best Performances",
  "Theater Revival Attracts Young Audiences",
  "Popular Series Renewed for Another Season",
  "Music Festival Brings Fans Together",
];

final List<String> entertainmentSubtitles = [
  "The latest action-packed film smashes records worldwide.",
  "Fans celebrate as the artist drops a long-awaited album.",
  "Online platforms fight to attract subscribers with new content.",
  "Celebrities gather to honor outstanding achievements in film.",
  "Classic plays make a strong comeback in modern theaters.",
  "A hit show returns after fans demanded more episodes.",
  "Thousands attend a festival featuring global music stars.",
];

final List<String> entertainmentImages = [
  "https://images.pexels.com/photos/799137/pexels-photo-799137.jpeg", 
  "https://images.pexels.com/photos/164879/pexels-photo-164879.jpeg", 
  "https://images.pexels.com/photos/4009401/pexels-photo-4009401.jpeg", 
  "https://images.pexels.com/photos/2820877/pexels-photo-2820877.jpeg", 
  "https://images.pexels.com/photos/713149/pexels-photo-713149.jpeg", 
  "https://images.pexels.com/photos/1040159/pexels-photo-1040159.jpeg", 
  "https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg", 
];

class entertainmentScreen extends StatelessWidget {
  const entertainmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entertainment', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
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
          image: NetworkImage(entertainmentImages[index]),
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
            entertainmentTitles[index],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 5),
          
          Text(
            entertainmentSubtitles[index],
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
