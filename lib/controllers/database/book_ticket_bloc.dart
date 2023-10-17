import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/database/database_helper.dart';
import 'package:pictureperfect/controllers/database/events/book_ticket_screen_events.dart';
import 'package:pictureperfect/controllers/database/models/email_model.dart';
import 'package:pictureperfect/controllers/database/states/book_ticket_screen_states.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/core/repository/movie_repository.dart';
import 'package:pictureperfect/core/utils/location_utils.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';

import 'models/cinema_info_model.dart';

class BookTicketBloc extends Bloc<BookTicketScreenEvents, BookTicketScreenStates>{

  final _dbHelper = DatabaseHelper.instance;
  final _logger = LoggerUtils();
  final _TAG = "BookTicketBloc";
  final _apiRespository = MovieRepository();

  BookTicketBloc() : super(const BookTicketScreenStates.loading()){
    on<BookTicketScreenEvents>((event, emit) async {
      await event.map(
        initTicketDetailsEvent: (event) async => await _initMapDetails(event, emit),
        bookTicketEvent: (event) async => await _bookTicket(event, emit),
      );
    });
  }

  Future<void> _initMapDetails(InitTicketDetailsEvent event, Emitter<BookTicketScreenStates> emit) async{
    emit(const BookTicketScreenStates.loading());

    await _dbHelper.isDBPresent().then((bool isDbPresent) async{
      _logger.log(TAG: _TAG, message: "is db present $isDbPresent");
      if(isDbPresent){
        await LocationUtils().getCurrentLocation().then((value) async{
          await _dbHelper.getAllCinemasList().then((List<CinemaInfoModel> cinemasList){
            _logger.log(TAG: _TAG, message: "Cinemalist size ${cinemasList.length}");
            emit(BookTicketScreenStates.displayMapsView(event.ticketsToBePurchased, cinemasList));
          });
        });
      }
    });

  }

  Future<void> _bookTicket(BookTicketEvent event, Emitter<BookTicketScreenStates> emit) async{
    emit(const BookTicketScreenStates.loading());
    EmailModel emailModel = EmailModel(
        to: "tanoy88@yahoo.com",
        subject: "Enjoy your ticket for your upcoming show",
        html: "Enjoy your ticket for your upcoming show",
        company: AppConstants.kAppName,
        sendername: AppConstants.kAppName
    );

    await _apiRespository.sendEmail(emailModel).then((bool isSuccess){
        _logger.log(TAG: _TAG, message: "Email sent $isSuccess");
        emit(BookTicketScreenStates.ticketBookingStatusView(isSuccess));
    });
  }
}