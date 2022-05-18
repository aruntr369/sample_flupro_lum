import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: StaggerdAnimationDemo(),
      ),
    ),
  ));
}
class StaggerdAnimationDemo extends StatelessWidget {
  const StaggerdAnimationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return AnimationConfiguration.staggeredList(
                    position: index,
                  duration: const Duration(seconds: 5),
                  child: SlideAnimation(
                      verticalOffset: 44,
                      child: FadeInAnimation(child: Card(
                        child: ListTile(
                          title: Text('$index item'),
                        ),
                      ))),
                );
              }
          ),
        ),
      ),
    );
  }
}
