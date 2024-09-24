import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        cursorColor: Colors.black,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          hintStyle: const TextStyle(
              color: Colors.black38, fontWeight: FontWeight.w400),
          hintText: "Search a project",
          filled: true,
          fillColor: Colors.white.withOpacity(0.9),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 1, color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
