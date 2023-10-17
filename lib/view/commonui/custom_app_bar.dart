import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/constants/movies_category_enum.dart';
import 'package:pictureperfect/view/commonui/empty_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  bool isActionRequired;
  Function(MoviesCategoryEnum moviesCategoryEnum)? onMovieCategorySelected;

  CustomAppBar({this.onMovieCategorySelected, this.isActionRequired = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.white,
      ),
      backgroundColor: ColorConstants.kDarkRed,
      actions:  isActionRequired ? [
        PopupMenuButton(
            itemBuilder: (BuildContext context){
              return[
                PopupMenuItem<MoviesCategoryEnum>(
                    child: Text(
                      "Now Playing"
                    ),
                    value: MoviesCategoryEnum.NOW_PLAYING,
                ),
                PopupMenuItem<MoviesCategoryEnum>(
                    child: Text(
                      "Popular"
                    ),
                    value: MoviesCategoryEnum.POPULAR,
                ),
                PopupMenuItem<MoviesCategoryEnum>(
                    child: Text(
                      "Top Rated"
                    ),
                    value: MoviesCategoryEnum.TOP_RATED,
                ),
                PopupMenuItem<MoviesCategoryEnum>(
                    child: Text(
                      "Up Coming"
                    ),
                    value: MoviesCategoryEnum.UP_COMING,
                ),
              ];
            },
            onSelected: (MoviesCategoryEnum movieCategoryEnum){
              if(isActionRequired){
                onMovieCategorySelected!(movieCategoryEnum);
              }
            },
        )
      ] : [EmptyWidget()],
      title: IntrinsicHeight(
        child: Row(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Picture',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConstants.kBackgroundColor
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.kBackgroundColor
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 3,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Perfect',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBackgroundColor
                      ),
                    ),
                    Text(
                      'Your Movie Companion',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.kBackgroundColor
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}