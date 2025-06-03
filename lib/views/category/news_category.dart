import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/customWidgets/main_button.dart';
import 'package:newzler/models/category_modal.dart';

class NewsCategory extends StatefulWidget {
  const NewsCategory({super.key});

  @override
  State<NewsCategory> createState() => _NewsCategoryState();
}

class _NewsCategoryState extends State<NewsCategory> {
  List<int> _isSelected = [];
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextStyle(
              text: "Customize ''My news'' category",
              size: 16,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w800,
            ),
            SizedBox(height: 33),
            Expanded(child: _newsCategoryGrid()),
            SizedBox(height: 10),
            Center(
              child: MainButton(
                text: "Load More",
                onPressed: () {},
                buttonWidth: 145,
                buttonHeight: 50,
                fontSize: 20.5,
                fontWeight: FontWeight.w800,
                borderWidth: 0,
                borderRadius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _newsCategoryGrid() {
    return GridView.builder(
      itemCount: newsCategoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        childAspectRatio: 3.1,
      ),
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            if (_isSelected.contains(i)) {
              _isSelected.remove(i);
            } else {
              _isSelected.add(i);
            }
            setState(() {});
          },
          child: ListTile(
            minLeadingWidth: 5,
            titleAlignment: ListTileTitleAlignment.center,
            leading: Image.asset(newsCategoryList[i].leadingImage!, width: 17),
            trailing: Icon(
              _isSelected.contains(i) ? Icons.star : Icons.star_outline,
              size: 18,
            ),
            iconColor: _isSelected.contains(i) ? mainColor : textColor2,
            title: CustomTextStyle(
              text: newsCategoryList[i].title,
              size: 12,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
            ),
            tileColor: Color(0XFFEBEBEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        );
      },
    );
  }
}
