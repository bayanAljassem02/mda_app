import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';

import 'search_results.dart';
import 'searchsuggestions.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  FocusNode searchFocusNode = FocusNode();

  bool isFocused = false;
  String? selectedFilter;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    searchFocusNode.addListener(() {
      setState(() {
        isFocused = searchFocusNode.hasFocus;
      });
    });
  }

  List searchhistory = [
    'الأسئلة المتوقعة في اختصاص القلب ',
    'الأسئلة المتوقعة في هذا العام',
    'الأسئلة المتوقعة في قسم الجلدية ',
    'الأسئلة المتوقعة في اختصاص الجراحة العامة'
  ];
  List fitersoptions = [
    'مقاطع تعليمية',
    'أسئلة دورات',
    'أسئلة متوقعة',
    'جلسات تحضيرية',
    'تشريح'
  ];
 bool isSearching=false;
 List filteredResults=[];
 List searchresultes=[
   'مقاطع تعليمية',
   'أسئلة دورات',
   'أسئلة متوقعة في الامتحان الوطني لعام 2025 ',
   'جلسات تحضيرية',
   'تشريح'];
 void onSearch(){
   if(searchController.text.isEmpty)
     return;
   setState(() {
     isSearching=true;
     filteredResults=searchresultes.where((item) =>item.contains(searchController.text.trim())).toList();
   });
   FocusScope.of(context).unfocus();
 }
  void onFilterSelected(String filter) {
    setState(() {
      selectedFilter = filter;
      searchController.text = filter;
    });
  }

  void onHistoryTap(String value) {
    setState(() {
      searchController.text = value;
      searchController.selection=TextSelection.fromPosition(TextPosition(offset: searchController.text.length));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Transform.scale(
                scaleX: 1,
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  }
                  ,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                )),
          ),
        ],
        title: Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            controller: searchController,
            textInputAction: TextInputAction.search,
            focusNode: searchFocusNode,
            onChanged: (value){
              setState(() {

              });
            },
            onSubmitted: (value){
              onSearch();
              print('search');
            },
            decoration: InputDecoration(
                hintText: 'أدخل كلمة مفتاحية للبحث',
                filled: true,

                fillColor: Colors.grey.shade300,
                contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                prefixIcon:searchController.text.isEmpty? IconButton(
                  onPressed: onSearch,
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ):null,

                suffixIcon:searchController.text.isNotEmpty? IconButton(
                  onPressed: (){
                    searchController.clear();
                    setState(() {

                    });
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ):null ,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        BorderSide(color: AppColors.Neutralcolorlightblue))),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
    padding: const EdgeInsets.all(10),
    child: isSearching
    ? SearchResults(results: filteredResults)
        : SearchSuggestions(
    isFocused: isFocused,
    filters: fitersoptions,
    history: searchhistory,
    selectedFilter: selectedFilter,
    onFilterSelected: onFilterSelected,
    onHistoryTap: onHistoryTap,
    ),
    ),
    );
  }
}
