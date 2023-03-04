import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      padding: EdgeInsets.all(10),
      child: TextField(
        onTap: () {},
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          fillColor: Color(0xffEFEFEF),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          hintText: 'Search',
          contentPadding: EdgeInsets.all(8),
          hintStyle: TextStyle(color: Colors.grey[500], fontSize: 18),
          prefixIcon: Container(
            // padding: EdgeInsets.all(15),
            child: Icon(Icons.search, color: Colors.grey[500]),
            width: 18,
          ),
          suffixIcon: Container(
            // padding: EdgeInsets.all(15),
            child: Icon(
              Icons.menu_sharp,
              color: Colors.grey[500],
            ),
            width: 18,
          ),
        ),
      ),
    );
  }
}
