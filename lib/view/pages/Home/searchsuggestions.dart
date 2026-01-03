import 'package:flutter/material.dart';
import 'package:mda/constant/colors.dart';

class SearchSuggestions extends StatelessWidget {
  final bool isFocused;
  final List filters;
  final List history;
  final String? selectedFilter;
  final Function(String) onFilterSelected;
  final Function(String) onHistoryTap;

  const SearchSuggestions({
    required this.isFocused,
    required this.filters,
    required this.history,
    required this.selectedFilter,
    required this.onFilterSelected,
    required this.onHistoryTap,
  });

  @override
  Widget build(BuildContext context) {
    if (!isFocused) return SizedBox();

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/7),
              child: Icon(Icons.filter_list,size: 30,color: AppColors.NeutralcolorDarkgrey,),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Wrap(
                spacing: 4,

                children: filters.map((filter) {
                  final isSelected = selectedFilter == filter;
                  return ChoiceChip(
                    selected: isSelected,
                    label: Text(filter,style: TextStyle(
                      color: isSelected?Colors.white:Colors.black,
                        fontSize: 14, fontFamily: 'Tajawal'),),
                    selectedColor: Colors.blue,
                    onSelected: (_) => onFilterSelected(filter),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          itemCount: history.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                InkWell(
                  child: Directionality(
                    
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.history),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          history[index],style:TextStyle(
                            fontSize: 16, fontFamily: 'Tajawal'),
                        ),
                      ]),
                    ),
                  ),
                  onTap: () => onHistoryTap(history[index]),
                ),
                Divider(
                  height: 1,
                  thickness: 0.8,
                  color: Colors.grey.shade300,
                  indent: 16,
                  endIndent: 16,
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
