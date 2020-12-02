import 'package:flutter/material.dart';

class TravellingSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(60.0),
          ),
        ),
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black87,
        ),
        labelText: 'Where are you going ?',
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(60.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(60.0),
          ),
        ),
        fillColor: Colors.white
      ),
    );
  }
}
