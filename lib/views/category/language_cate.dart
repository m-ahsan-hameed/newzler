import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/models/category_modal.dart';

class LanguageCate extends StatefulWidget {
  const LanguageCate({super.key});

  @override
  State<LanguageCate> createState() => _LanguageCateState();
}

class _LanguageCateState extends State<LanguageCate> {
  List<int> _selectedLanguageList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "My Category", size: 20),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          if (_selectedLanguageList.isNotEmpty) ...[
            MainButton(
              text: "Done",
              onPressed: () {},
              borderRadius: 10,
              fontSize: 20,
              borderWidth: 0,
              borderColor: Colors.transparent,
              elevation: 4,
              elevationColor: const Color.fromARGB(202, 32, 156, 238),
            ),
            SizedBox(width: 10),
          ],
        ],
      ),
      body: Column(
        children: [
          _searchBar(),
          Divider(),
          Expanded(child: langList()),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: TextField(
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

  Widget langList() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: ListView.builder(
        itemCount: languageList.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if (_selectedLanguageList.contains(i)) {
                    _selectedLanguageList.remove(i);
                    setState(() {});
                  } else {
                    _selectedLanguageList.add(i);
                    setState(() {});
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextStyle(
                      text: languageList[i].title,
                      size: 18,
                      fontWeight: FontWeight.w600,
                      color: _selectedLanguageList.contains(i)
                          ? mainColor
                          : textColor2,
                    ),
                    Icon(
                      FontAwesomeIcons.circleCheck,
                      size: 16,
                      color: _selectedLanguageList.contains(i)
                          ? mainColor
                          : textColor2,
                    ),
                  ],
                ),
              ),
              Divider(height: 10, thickness: 0.5),
              SizedBox(height: 25),
            ],
          );
        },
      ),
    );
  }
}
