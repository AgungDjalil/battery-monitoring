import 'package:flutter/material.dart';

class BuildElevatedButton extends StatefulWidget {
  final String label;
  final String pathIcon;

  // Constructor untuk menerima parameter
  const BuildElevatedButton({
    super.key,
    required this.label,
    required this.pathIcon,
  });

  @override
  State<BuildElevatedButton> createState() => BuildElevatedButtonState();
}

class BuildElevatedButtonState extends State<BuildElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 66, 85),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: SizedBox(
          height: 50,
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.pathIcon,
                width: 30,
                height: 30,
              ),
              Text(
                widget.label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
