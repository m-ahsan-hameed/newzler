import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/news_model.dart';

class MyBookMark extends StatefulWidget {
  const MyBookMark({super.key});

  @override
  State<MyBookMark> createState() => _MyBookMarkState();
}

class _MyBookMarkState extends State<MyBookMark> {
  List<int> isSelected = [];
  bool showRadio = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextStyle(text: "My Category", size: 20),
        centerTitle: true,
        leading: showRadio
            ? IconButton(
                onPressed: () {
                  showRadio = false;
                  setState(() {});
                },
                icon: Icon(FontAwesomeIcons.solidCircleXmark, color: mainColor),
              )
            : Icon(Icons.arrow_back),
        actions: [
          if (showRadio) ...[
            IconButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _cupertinoBox();
                  },
                );
              },
              icon: Icon(CupertinoIcons.delete_solid, color: Colors.red),
            ),
          ],
        ],
      ),
      body: Column(
        children: [
          Expanded(child: _myBookMarkList()),
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(mainColor),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _myBookMarkList() {
    return ListView.builder(
      itemCount: myBookMarkLists.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              if (showRadio == true) ...[
                isSelected.contains(i)
                    ? Icon(FontAwesomeIcons.solidCircleCheck, color: mainColor)
                    : Icon(Icons.circle_outlined),
                SizedBox(width: 5),
              ],
              Expanded(
                child: InkWell(
                  onLongPress: () {
                    showRadio = true;
                    setState(() {});
                  },
                  onTap: () {
                    if (isSelected.contains(i)) {
                      isSelected.remove(i);
                      setState(() {});
                    } else {
                      isSelected.add(i);
                      setState(() {});
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 81,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          myBookMarkLists[i].newsImagePath!,

                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomTextStyle(
                              text: myBookMarkLists[i].newsText!,
                              size: 15,
                            ),
                            SizedBox(height: 27),
                            Row(
                              children: [
                                CustomTextStyle(
                                  text: myBookMarkLists[i].uploadTime!,
                                  size: 10,
                                  color: textColor2,
                                ),
                                CustomTextStyle(
                                  text: " | ",
                                  size: 10,
                                  color: textColor2,
                                ),
                                CustomTextStyle(
                                  text: "US Canada",
                                  size: 10,
                                  color: textColor2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _cupertinoBox() {
    return CupertinoAlertDialog(
      content: CustomTextStyle(
        text: "Are you sure you want to delete from your bookmark",
        size: 18,
        fontWeight: FontWeight.w600,
      ),
      actions: [
        CupertinoDialogAction(
          child: CustomTextStyle(
            text: "Delete",
            size: 18,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          ),
          onPressed: () {
            for (int i in isSelected) {
              myBookMarkLists.removeAt(i);
            }
            isSelected.clear();
            showRadio = false;
            Navigator.of(context).pop();
            setState(() {});
          },
        ),
        CupertinoDialogAction(
          child: CustomTextStyle(
            text: "Cancel",
            size: 18,
            fontWeight: FontWeight.w600,
            color: textColor2,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
