import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SliderDemo(),
  ));
}

class SliderDemo extends StatelessWidget {
   SliderDemo({Key? key}) : super(key: key);

  List<String> images =["https://images.pexels.com/photos/3246665/pexels-photo-3246665.png?cs=srgb&dl=pexels-ekrulila-3246665.jpg&fm=jpg",
    "https://images.pexels.com/photos/161154/stained-glass-spiral-circle-pattern-161154.jpeg?cs=srgb&dl=pexels-pixabay-161154.jpg&fm=jpg",
    "https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg?cs=srgb&dl=pexels-daian-gan-102127.jpg&fm=jpg",
    "https://images.pexels.com/photos/962312/pexels-photo-962312.jpeg?cs=srgb&dl=pexels-min-an-962312.jpg&fm=jpg",
    "https://images.pexels.com/photos/1209843/pexels-photo-1209843.jpeg?cs=srgb&dl=pexels-sharon-mccutcheon-1209843.jpg&fm=jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Casrousal Slider"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: CarouselSlider.builder(itemCount: images.length,
          itemBuilder: (context,i,id){
          return GestureDetector(
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.red,
                ),
              ),
              child: ClipRRect(
                  child: Image.network(images[i],fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            onTap: (){
              print('hai');
            },
          );
        },
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 300,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            aspectRatio: 5,
          ),),
      ),

    );
  }
}
