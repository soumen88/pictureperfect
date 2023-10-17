import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/cinema_info_model.dart';

part 'book_ticket_screen_states.freezed.dart';

@freezed
class BookTicketScreenStates with _$BookTicketScreenStates{
  const factory BookTicketScreenStates.displayMapsView(int noOfTickets, List<CinemaInfoModel> cinemaList) = _DisplayMapsView;
  const factory BookTicketScreenStates.loading() = _BookTicketsLoading;
  const factory BookTicketScreenStates.ticketBookingStatusView(bool isSuccess) = _TicketBookingStatusView;
}