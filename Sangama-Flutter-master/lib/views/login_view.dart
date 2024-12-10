import 'package:flutter/material.dart';
import '../component/registerbutton.dart';
import '../component/registerfield.dart';
import '../component/richtext.dart';

class Login_View extends StatelessWidget {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController IdController = TextEditingController();

  Login_View({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight=screenSize.height;

    // Responsive font size based on screen width
    double getResponsiveFontSize(double baseFontSize) {
      if (screenWidth > 1000) return baseFontSize; // Normal size for large screens
      if (screenWidth > 600) return baseFontSize * 0.8; // Slightly smaller for tablets
      return baseFontSize * 0.6; // Smaller for very small screens
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: constraints.maxWidth < 600
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '''Welcome to 
sangama, where 
connections are 
made easy!''',
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(24.0),
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFD5EDFF), // Updated font color
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Rich_Text(),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              RegisterField(
                                lable: 'Student name',
                                Hintext: 'Enter student name here',
                                controller: NameController,
                              ),
                              RegisterField(
                                lable: 'College ID',
                                Hintext: 'Enter college id here',
                                controller: IdController,
                              ),
                              SizedBox(height: 20),
                              RegisterButton(
                                nameController: NameController,
                                idController: IdController,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    '''Welcome to 
sangama, where 
connections are 
made easy!''',
                                    style: TextStyle(
                                      fontSize: getResponsiveFontSize(28.0),
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFFB8AA6D), // Updated font color
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Rich_Text(),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50.0),
                            child: Container(
                              height:screenHeight*0.85,
                              width: screenWidth*0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  const BoxShadow(
                                    color: Color(0xFFD5EDFF), // Updated shadow color
                                  ),
                                  const BoxShadow(
                                    color: Color(0xFF294C74), // Updated inner shadow color
                                    spreadRadius: -2.0,
                                    blurRadius: 2.0,
                                    offset: Offset(4, 4),
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 30),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Hey, Register Now!',
                                        style: TextStyle(
                                          color: const Color(0xFFD5EDFF), // Updated font color
                                          fontSize: getResponsiveFontSize(30),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    RegisterField(
                                      lable: 'Student name',
                                      Hintext: 'Enter student name here',
                                      controller: NameController,
                                    ),
                                    RegisterField(
                                      lable: 'College ID',
                                      Hintext: 'Enter college id here',
                                      controller: IdController,
                                    ),
                                    const SizedBox(height: 30),
                                    RegisterButton(
                                      nameController: NameController,
                                      idController: IdController,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
