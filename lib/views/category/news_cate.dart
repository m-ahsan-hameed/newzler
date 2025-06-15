import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/category_modal.dart';

class NewsCate extends StatefulWidget {
  const NewsCate({super.key});

  @override
  State<NewsCate> createState() => _NewsCateState();
}

class _NewsCateState extends State<NewsCate> {
  List<int> _newsSelected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "My Category", size: 20),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          _searchBar(),
          Divider(),
          Expanded(child: _newsCat()),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: TextField(
        style: TextStyle(
          fontFamily: "Raleway",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: mainColor,
        ),
        decoration: InputDecoration(
          hint: CustomTextStyle(text: "Search", size: 14, color: textColor2),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/searchBar.png"),
            ),
          ),
          suffixIcon: Icon(
            FontAwesomeIcons.circleXmark,
            size: 19,
            color: textColor2,
          ),

          fillColor: Color(0XFFEBEBEB),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }

  Widget _newsCat() {
    return ListView.builder(
      itemCount: newsCate.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 10,
          ),
          child: GestureDetector(
            onTap: () {
              if (_newsSelected.contains(i)) {
                _newsSelected.remove(i);
                setState(() {});
              } else {
                _newsSelected.add(i);
                setState(() {});
              }
            },
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(171, 158, 158, 158),
                  ),
                  child: Center(
                    child: Image.asset(
                      newsCate[i].leadingImage!,
                      width: i == 0 ? 20 : 50,
                      height: i == 0 ? 20 : 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 21),
                Expanded(
                  child: CustomTextStyle(
                    text: newsCate[i].title,
                    size: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                Icon(
                  FontAwesomeIcons.circleCheck,
                  size: 16,
                  color: _newsSelected.contains(i) ? mainColor : textColor2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
