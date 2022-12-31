import 'package:flutter/material.dart';

class TheoryPage extends StatelessWidget {
  const TheoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Scaffold(


          body:SingleChildScrollView(
            child :
            Column(
              children: [
                buildRoundedCard('SOLID MECHANICS','Solid mechanics is the branch of continuum mechanics that studies the behavior of solid materials, especially their motion and deformation under the action of external or internal forces for the purpose of designing structure better.' ),

                const SizedBox(height:10),
                const Text("Important Terminologies",
                    style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),

                const Steps(),
                const SizedBox(height: 15),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("   8. Stress-Strain Curve",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ),
                const SizedBox(height: 10),
                buildImageInteractionCard()
              ],
            ),
          )
      ),
    );
  }


}

Widget buildRoundedCard(String abc, String def) => Card(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
      side: const BorderSide(width: 5, color: Colors.blue)),

  child: Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child:
            Text(
              abc,
              style: const TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.bold,),
            )),
        const SizedBox(height: 25),
        Text(
          def,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ),
  ),
);



class Step {
  Step(
      this.title,
      this.body,
      [this.isExpanded = false]
      );
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('1. Stress', 'Stress is defined as “The restoring force per unit area of the material”. It is a tensor quantity. '),
    Step('2. Strain', 'Strain is the deformation of a material from stress. It is simply a ratio of the change in length to the original length. Deformations that are applied perpendicular to the cross section are normal strains, while deformations applied parallel to the cross section are shear strains.'),
    Step("3. Hooke's Law", 'Hookes law states that when a material is loaded within elastic limit, the stress is proportional to the strain produced by the stress.'),
    Step('4. Modulus of Elasticity', 'The ratio of tensile or compressive stress to the corresponding strain is a constant.'),
    Step('5. Bulk Modulus', 'The proportion of volumetric stress related to the volumetric strain of specified material while the material deformation is within the elastic limits'),
    Step('6. Modulus of Rigidity', 'The ratio of shear stress to the corresponding shear strain within the elastic limit.'),
    Step("7. Poisson's Ratio", 'The ratio of lateral strain to the longitudinal strain is a constant for a given material, when the material is stressed within the elastic limit.'),

  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderSteps(),
      ),
    );
  }
  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
                title: Text(step.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,),
                ));
          },
          body: ListTile(
              title: Text(step.body,
                  style: const TextStyle(

                    color: Colors.black,
                    fontSize: 18,))
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}


Widget buildImageInteractionCard() => Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: const NetworkImage(
              'https://cdn1.byjus.com/wp-content/uploads/2019/02/Stress-Strain-Graph.png',
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(16).copyWith(bottom: 0),
        child: const Text(
          'Stress Strain Curve',
          style: TextStyle(fontSize: 16),
        ),
      ),

    ],
  ),
);

