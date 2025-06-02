import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newzler/const/colors.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';
import 'package:newzler/models/search_data.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchBar(),
            Divider(color: textColor2.withOpacity(0.2)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextStyle(
                    text: "Recent Searches",
                    size: 15,
                    fontWeight: FontWeight.w800,
                  ),
                  IconButton(
                    onPressed: () {
                      recentSearch.clear();
                      setState(() {});
                    },
                    icon: Icon(CupertinoIcons.delete),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(child: _recentSearches()),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/bottomNavIcons/trend.png",
                    width: 18,
                  ),
                  SizedBox(width: 10),
                  CustomTextStyle(
                    text: "Trending",
                    size: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: _gridView()),
          ],
        ),
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
              height: 22,
              width: 22,
              child: Image.asset("assets/images/searchBar.png"),
            ),
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

  Widget _recentSearches() {
    return Wrap(
      spacing: 8,
      children: recentSearch
          .map(
            (item) => Chip(
              label: CustomTextStyle(
                text: item.text,
                size: 12,
                color: mainColor,
              ),
              backgroundColor: Color(0XFFEBEBEB),
              side: BorderSide(width: 0, style: BorderStyle.none),
            ),
          )
          .toList(),
    );
  }

  Widget _gridView() {
    return GridView.builder(
      itemCount: trendingSearch.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 3,
        childAspectRatio: 8,
      ),
      itemBuilder: (context, i) {
        return ListTile(
          title: CustomTextStyle(text: trendingSearch[i].text, size: 15),
        );
      },
    );
  }
}
