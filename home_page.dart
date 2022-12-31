import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String title=' ',ex = '',ey = '',ez = '',ed='',ecd='',ech='';
double dd=0,ww=0,ll=0,hh=0,cd=0,ch=0,shapeCheck=0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: const FirstPage()
    );
}
}

List<double> a=[0,0,0,0,0,0,0,0,0,0,0];


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Select Your Object's Shape",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 50),
            SizedBox(
                height: 100,
                width : 300,
                child: ElevatedButton(
                  child: const Text('Cuboid',
                    style: TextStyle(fontSize: 25),),
                  onPressed: () {

                    shapeCheck=1;

                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) =>
                            const Cube(data: 'neesaa'),
                      ),
                    );
                  },
                )
            ),
            const SizedBox(height: 50),
            SizedBox(
                height: 100,
                width : 300,
                child: ElevatedButton(
                  child: const Text('Sphere',
                    style: TextStyle(fontSize: 25),

                  ),
                  onPressed: () {

                    shapeCheck=2;

                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) =>
                            const Sphere(data: 'mapadha'),
                      ),
                    );
                  },
                )
            ),
            const SizedBox(height: 50),
            SizedBox(
                height: 100,
                width : 300,
                child: ElevatedButton(
                  child: const Text('Cylinder',
                    style: TextStyle(fontSize: 25),),
                  onPressed: () {

                    shapeCheck=3;

                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) =>
                            const Cylinder(data: 'sarega'),
                      ),
                    );
                  },
                )
            ),

          ],
        ),
      ),
    );
  }
}

class Cube extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const Cube({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body:
      Center(
        child: SingleChildScrollView(

          reverse : true,
          padding: const EdgeInsets.all(32),
          child : Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Dimensions',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child:
                inputValues('Length','Enter value in mm',0)

            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Width','Enter value in mm',1)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 50),
                child: inputValues('Height','Enter value in mm',2)
            ),
            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {



                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CubeSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class Sphere extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const Sphere({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Dimension',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Diameter','Enter value in mm',8)
            ),
            const SizedBox(height:50),
            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const SphereSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class Cylinder extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const Cylinder({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Dimensions',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Diameter','Enter value in mm',0)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Height','Enter value in mm',1)
            ),
            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CylinderSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}


class CubeSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CubeSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Stress ',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Stress along Length','Enter value in Newton/mm2',3)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Stress along Width','Enter value in Newton/mm2',4)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 50),
                child: inputValues('Stress along Height','Enter value in Newton/mm2',5)
            ),
            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CubeForcesSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class CubeForcesSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CubeForcesSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Material Properties',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues("Young's Modulus",'Enter value in N/mm2',6)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 50),
                child: inputValues("Poisson's Ratio",'Enter the value',7)
            ),

            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                ex=((a[3]/a[6])-(a[7]*(a[4]/a[6]))-(a[7]*(a[5]/a[6]))).toStringAsPrecision(3);
                ey=((a[4]/a[6])-(a[7]*(a[3]/a[6]))-(a[7]*(a[5]/a[6]))).toStringAsPrecision(3);
                ez=((a[5]/a[6])-(a[7]*(a[3]/a[6]))-(a[7]*(a[4]/a[6]))).toStringAsPrecision(3);

                ll=(a[0]*(1+(((a[3]/a[6])-(a[7]*(a[4]/a[6]))-(a[7]*(a[5]/a[6]))))));
                ww=(a[1]*(1+(((a[4]/a[6])-(a[7]*(a[3]/a[6]))-(a[7]*(a[5]/a[6]))))));
                hh=(a[2]*(1+(((a[5]/a[6])-(a[7]*(a[3]/a[6]))-(a[7]*(a[4]/a[6]))))));

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CubeForcesMaterialsSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class CubeForcesMaterialsSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CubeForcesMaterialsSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Strains are as Follows',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50),
            buildRoundedCard('Strain in x direction : ', ex),
            buildRoundedCard('Strain in y direction : ', ey),
            buildRoundedCard('Strain in z direction : ', ez),

            const SizedBox(height: 50),

            ElevatedButton(
              child: const Text('Go Back',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const FirstPage(),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}


class SphereSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const SphereSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Stress ',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Hydrostatic Stress','Enter value in Newton/mm2',3)
            ),

            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const SphereForcesSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class SphereForcesSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const SphereForcesSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

         child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Material Properties',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues("Bulk's Modulus",'Enter value in N/mm2',10)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 50),
                child: inputValues("Poisson's Ratio",'Enter the value',7)
            ),

            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                ed=(a[3]/(pi*a[8]*a[8]*a[10])).toStringAsPrecision(3);

                dd=a[8]*(1+(a[3]/(pi*a[8]*a[8]*a[10])));

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const SphereForcesMaterialsSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class SphereForcesMaterialsSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const SphereForcesMaterialsSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

         child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Strain is as Follows',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50),
            buildRoundedCard('Strain in diameter : ', ed),
            const SizedBox(height: 50),

            ElevatedButton(
              child: const Text('Go Back',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const FirstPage(),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}


class CylinderSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CylinderSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Enter Stress ',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues('Stress along Longitudinal axis','Enter value in Newton/mm2',3)//h
            ),
            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CylinderForcesSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class CylinderForcesSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CylinderForcesSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Material Properties',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 50),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                child: inputValues("Young's Modulus",'Enter value in N/mm2',6)
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 40, 50),
                child: inputValues("Poisson's Ratio",'Enter the value',7)
            ),

            ElevatedButton(
              child: const Text('Submit',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                ech=((a[3]/a[6])).toStringAsPrecision(3);
                ch=(a[1]*(1+(a[3]/a[6])));
                ecd=((-a[7]*a[3]/a[6]).toStringAsPrecision(3));
                cd=(((-a[7]*a[3]/a[6]))+1)*a[0];
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const CylinderForcesMaterialsSubmit(data: 'sarega'),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}
class CylinderForcesMaterialsSubmit extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const CylinderForcesMaterialsSubmit({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:

      Center(
        child:  SingleChildScrollView(

      child :Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Strains are as Follows',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 50),
            buildRoundedCard('Strain in diameter : ', ecd),
            buildRoundedCard('Strain in height : ', ech),

            const SizedBox(height: 50),

            ElevatedButton(
              child: const Text('Go Back',
                style: TextStyle(fontSize: 20),),
              onPressed: () {

                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        const FirstPage(),
                  ),
                );
              },
            )

          ],
        ),
        )
      ),

    );
  }
}


Widget inputValues(String abc, String def, int x) {
  return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              TextField(
                decoration: InputDecoration(hintText: def,
                labelText: abc),
                onChanged: (value) => a[x] = double.parse(value)
              )
            ]
        );
}
Widget buildRoundedCard(String abc, String def) {
  return Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: Container(
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          abc,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          def,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ),
  ),
);
}

