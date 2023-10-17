import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pictureperfect/controllers/database/book_ticket_bloc.dart';
import 'package:pictureperfect/controllers/database/database_helper.dart';
import 'package:pictureperfect/controllers/database/events/book_ticket_screen_events.dart';
import 'package:pictureperfect/controllers/database/states/book_ticket_screen_states.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';
import 'package:pictureperfect/view/commonui/authenticationui/success_lottie_widget.dart';
import 'package:pictureperfect/view/commonui/custom_button.dart';
import 'package:pictureperfect/view/commonui/custom_loader.dart';
import 'package:pictureperfect/view/commonui/theatre_info_widget.dart';

import '../controllers/database/models/cinema_info_model.dart';

@RoutePage()
class BookTicketsScreen extends StatefulWidget{
  int noOfTickets;
  BookTicketsScreen({required this.noOfTickets});
  @override
  State<StatefulWidget> createState() {
    return BookTicketsScreenState(noOfTickets: noOfTickets);
  }

}

class BookTicketsScreenState extends State<BookTicketsScreen>{

  int noOfTickets;

  BookTicketsScreenState({required this.noOfTickets});

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  final _logger = LoggerUtils();
  final _TAG = "BookTicketsScreen";

  @override
  void didChangeDependencies() {
    BlocProvider.of<BookTicketBloc>(context).add(BookTicketScreenEvents.initTicketDetailsEvent(noOfTickets));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    void displayBottomSheet( BuildContext context, CinemaInfoModel infoModel){
      showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            ),
          ),
          context: context,
          builder: (BuildContext context){
            return TheatreInfoWidget(
              cinemaInfoModel: infoModel,
              noOfTickets: noOfTickets,
              onTheatreSelected: (CinemaInfoModel theatreSelectedModel){
                _logger.log(TAG: _TAG, message: "Selected theatre $theatreSelectedModel");
                BlocProvider.of<BookTicketBloc>(context).add(BookTicketScreenEvents.bookTicketEvent(theatreSelectedModel));
                context.router.pop(context);
              },
            );
          }
      );
    }

    return BlocConsumer<BookTicketBloc, BookTicketScreenStates>(
      listener: (BuildContext context, BookTicketScreenStates state){
        _logger.log(TAG: _TAG, message: "State changes $state");
      },
      builder: (BuildContext context, BookTicketScreenStates state){
        return state.when(
            displayMapsView: (int noOfTickets, List<CinemaInfoModel> cinemasList){

              Iterable<Marker> markersList = Iterable.generate(cinemasList.length, (int index){
                CinemaInfoModel infoModel = cinemasList[index];
                return Marker(
                    markerId: MarkerId(infoModel.id.toString()),
                    position: LatLng(
                        infoModel.latitude, infoModel.longitude
                    ),
                    infoWindow: InfoWindow(title: infoModel.nameOfTheTheatre),
                    onTap: (){
                      displayBottomSheet(context, infoModel);
                    }
                );
              });
              CinemaInfoModel firstModel = cinemasList.first;
              CameraPosition kFirstTheatre = CameraPosition(
                  target: LatLng(firstModel.latitude, firstModel.longitude),
                  zoom: 15
              );
              return Scaffold(
                body: Center(
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: kFirstTheatre,
                      onMapCreated: (GoogleMapController controller){

                      },
                      markers: Set.from(markersList),
                    )
                ),
              );
            },
            loading: (){
              return CustomLoader();
            },
            ticketBookingStatusView: (bool isSuccess){
              if(isSuccess){
                return SuccessLottieWidget(isLogin: false,);
              }
              else{
                return Text("Ticket booking failed");
              }
            }
        );
      },
    );
  }

}