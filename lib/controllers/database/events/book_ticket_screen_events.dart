import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pictureperfect/controllers/database/models/cinema_info_model.dart';

part 'book_ticket_screen_events.freezed.dart';

@freezed
class BookTicketScreenEvents with _$BookTicketScreenEvents{
  const factory BookTicketScreenEvents.initTicketDetailsEvent(int ticketsToBePurchased) = InitTicketDetailsEvent;
  const factory BookTicketScreenEvents.bookTicketEvent(CinemaInfoModel infoModel) = BookTicketEvent;

}