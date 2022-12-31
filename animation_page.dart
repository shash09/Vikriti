import 'package:flutter/material.dart';
import 'package:vikriti_2/pages/home_page.dart';

double _width = a[1],w=ww;
double _length = a[0],l=ll;
double _height = a[2],h=hh;
double _diameter = a[8],d=dd;
double _cyldiameter = a[0],cdd=cd;
double _cylheight = a[1],chh=ch;

Color _color = Colors.green;

BorderRadiusGeometry _borderRadius1=BorderRadius.circular(4),_borderRadius = BorderRadius.circular(4);

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();

}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState(){
    super.initState();
    this.setState(() {
      print(ch);
      print(cd);
      w=ww;
      l=ll;
      h=hh;
      chh=ch;
      cdd=cd;
      _width = a[1];
      _length = a[0];
      _height = a[2];
      _diameter = a[8];
      d=dd;
      _cylheight = a[1];
      _cyldiameter = a[0];
      _color = Colors.green;

    });
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget cubeAnimation() {

    _borderRadius = BorderRadius.circular(4);
    return  Scaffold(


      resizeToAvoidBottomInset: false,
      body:  SingleChildScrollView(
        child :

        Center (

          child : Column(

            children: [
              const SizedBox(height: 10),
              const Text(
                'Width v/s Length',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _width,
                height: _length,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),

                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),
              const SizedBox(height: 10),
              const Text(
                'Length v/s Height',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _length,
                height: _height,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),

                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),const SizedBox(height: 10),
              const Text(
                'Height v/s Width',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _height,
                height: _width,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),

                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),
              const SizedBox(height: 50),
              Text(
                'Final Length : $l mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Text(
                'Final Width : $w mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Text(
                'Final Height : $h mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),

            ],

          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState((){_width = w;
          _height =h;
          _length =l;

          // Generate a random color.
          _color = const Color.fromRGBO(103,103,103,103);

          // Generate a random border radius.
          _borderRadius = BorderRadius.circular((4).toDouble());});


        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
  @override
  Widget sphereAnimation() {

    _borderRadius=BorderRadius.circular(_diameter/2);

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:  SingleChildScrollView(
        child :

        Center (

          child : Column(

            children: [
              const SizedBox(height: 10),
              const Text(
                '2D view',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _diameter,
                height: _diameter,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),

                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),


              const SizedBox(height: 10),
              Text(
                'Final Diameter : $d mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

            ],

          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // When the user taps the button
        onPressed: () {
          setState((){
            _height=h;
            _length=l;
            _width=w;
            // Generate a random width and height.
            _diameter=d;
            // Generate a random color.
            _color = const Color.fromRGBO(103,103,103,103);

            // Generate a random border radius.
            _borderRadius = BorderRadius.circular((d/2).toDouble());
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );

  }
  @override
  Widget cylinderAnimation() {

    _borderRadius=BorderRadius.circular(_cyldiameter/2);
    _borderRadius1=BorderRadius.circular(4);
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:  SingleChildScrollView(
        child :

        Center (

          child : Column(

            children: [
              const SizedBox(height: 10),
              const Text(
                'Top View',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _cyldiameter,
                height: _cyldiameter,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: _borderRadius,
                ),

                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),

              const SizedBox(height: 10),
              const Text(
                'Front View',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AnimatedContainer(

                width: _cyldiameter,
                height: _cylheight,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius:  _borderRadius1,
                ),
                duration: const Duration(seconds: 2),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.fastOutSlowIn,
              ),
              const SizedBox(height: 10),



              const SizedBox(height: 50),
              Text(
                'Final Diameter : $cdd mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 10),
              Text(
                'Final Height : $chh mm',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
            ],

          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // When the user taps the button
        onPressed: () {
        setState(() {
       _cylheight = chh;
       _cyldiameter = cdd;
      // Generate a random color.
      _color = const Color.fromRGBO(103, 103, 103, 103);

      // Generate a random border radius.
      _borderRadius = BorderRadius.circular((4).toDouble());
         });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    if(shapeCheck == 1)
    {
      return cubeAnimation();
    }
    else if(shapeCheck == 2)
    {
      return sphereAnimation();
    }
    else if(shapeCheck == 3)
    {
      return cylinderAnimation();
    }

    else {
      return cubeAnimation();
    }

  }

}






