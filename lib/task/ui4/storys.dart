import 'package:flutter/material.dart';
import 'package:sample_flupro/task/ui4/posts.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);
  List urls = [
    "https://buffer.com/library/content/images/size/w1000/2022/03/sigmund-MQ2xYBHImKM-unsplash--1--1.jpg",
    "https://buffer.com/library/content/images/size/w1000/2022/03/horizontal-portrait-with-the-rule-of-thirds-applied-to-the-eyes-grid.webp",
    "https://buffer.com/library/content/images/2022/03/amina.png",
    "https://buffer.com/library/content/images/2022/03/skitch--7-.png",
    "https://buffer.com/library/content/images/size/w1000/2022/03/sigmund-MQ2xYBHImKM-unsplash--1--1.jpg",
    "https://buffer.com/library/content/images/size/w1000/2022/03/horizontal-portrait-with-the-rule-of-thirds-applied-to-the-eyes-grid.webp",
    "https://buffer.com/library/content/images/2022/03/amina.png",
    "https://buffer.com/library/content/images/2022/03/skitch--7-.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Stories",
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Icon(
              Icons.play_arrow,
              size: 22,
            ),
            Text(
              "Watch All",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                List.generate(urls.length, (index) => Stores(urls[index])),
          ),
        ),
        Divider(thickness: 2,),
        Expanded(child: PostWid(),)
        //
      ],
    );
  }

  Padding Stores(String url) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 67,
        height: 67,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.deepPurpleAccent]),
        ),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(url))),
        ),
      ),
    );
  }
}
