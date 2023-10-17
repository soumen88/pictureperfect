import 'package:flutter/material.dart';
import 'package:pictureperfect/controllers/database/models/cinema_info_model.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';

class TheatreInfoWidget extends StatelessWidget{
  CinemaInfoModel cinemaInfoModel;
  int noOfTickets;
  Function(CinemaInfoModel cinemaInfoModel) onTheatreSelected;
  TheatreInfoWidget({required this.cinemaInfoModel, required this.noOfTickets, required this.onTheatreSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorConstants.kLightOrange,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              cinemaInfoModel.nameOfTheTheatre,
              style: TextStyle(
                fontSize: 24,
              ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                  Icons.location_city,
                  color: ColorConstants.kDarkRed,
              ),
              SizedBox(width: 10,),
              Flexible(
                  child: Text(cinemaInfoModel.location),
              ),

            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
              buttonCaption: "Book ${noOfTickets} Tickets",
              iconData: Icons.sticky_note_2,
              onButtonPress: (){
                onTheatreSelected(cinemaInfoModel);
              },
          )
        ],
      ),
    );
  }

}