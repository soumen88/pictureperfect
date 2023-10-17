// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_ticket_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookTicketScreenStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)
        displayMapsView,
    required TResult Function() loading,
    required TResult Function(bool isSuccess) ticketBookingStatusView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult? Function()? loading,
    TResult? Function(bool isSuccess)? ticketBookingStatusView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult Function()? loading,
    TResult Function(bool isSuccess)? ticketBookingStatusView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMapsView value) displayMapsView,
    required TResult Function(_BookTicketsLoading value) loading,
    required TResult Function(_TicketBookingStatusView value)
        ticketBookingStatusView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMapsView value)? displayMapsView,
    TResult? Function(_BookTicketsLoading value)? loading,
    TResult? Function(_TicketBookingStatusView value)? ticketBookingStatusView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMapsView value)? displayMapsView,
    TResult Function(_BookTicketsLoading value)? loading,
    TResult Function(_TicketBookingStatusView value)? ticketBookingStatusView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookTicketScreenStatesCopyWith<$Res> {
  factory $BookTicketScreenStatesCopyWith(BookTicketScreenStates value,
          $Res Function(BookTicketScreenStates) then) =
      _$BookTicketScreenStatesCopyWithImpl<$Res, BookTicketScreenStates>;
}

/// @nodoc
class _$BookTicketScreenStatesCopyWithImpl<$Res,
        $Val extends BookTicketScreenStates>
    implements $BookTicketScreenStatesCopyWith<$Res> {
  _$BookTicketScreenStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayMapsViewImplCopyWith<$Res> {
  factory _$$DisplayMapsViewImplCopyWith(_$DisplayMapsViewImpl value,
          $Res Function(_$DisplayMapsViewImpl) then) =
      __$$DisplayMapsViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int noOfTickets, List<CinemaInfoModel> cinemaList});
}

/// @nodoc
class __$$DisplayMapsViewImplCopyWithImpl<$Res>
    extends _$BookTicketScreenStatesCopyWithImpl<$Res, _$DisplayMapsViewImpl>
    implements _$$DisplayMapsViewImplCopyWith<$Res> {
  __$$DisplayMapsViewImplCopyWithImpl(
      _$DisplayMapsViewImpl _value, $Res Function(_$DisplayMapsViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noOfTickets = null,
    Object? cinemaList = null,
  }) {
    return _then(_$DisplayMapsViewImpl(
      null == noOfTickets
          ? _value.noOfTickets
          : noOfTickets // ignore: cast_nullable_to_non_nullable
              as int,
      null == cinemaList
          ? _value._cinemaList
          : cinemaList // ignore: cast_nullable_to_non_nullable
              as List<CinemaInfoModel>,
    ));
  }
}

/// @nodoc

class _$DisplayMapsViewImpl implements _DisplayMapsView {
  const _$DisplayMapsViewImpl(
      this.noOfTickets, final List<CinemaInfoModel> cinemaList)
      : _cinemaList = cinemaList;

  @override
  final int noOfTickets;
  final List<CinemaInfoModel> _cinemaList;
  @override
  List<CinemaInfoModel> get cinemaList {
    if (_cinemaList is EqualUnmodifiableListView) return _cinemaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cinemaList);
  }

  @override
  String toString() {
    return 'BookTicketScreenStates.displayMapsView(noOfTickets: $noOfTickets, cinemaList: $cinemaList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayMapsViewImpl &&
            (identical(other.noOfTickets, noOfTickets) ||
                other.noOfTickets == noOfTickets) &&
            const DeepCollectionEquality()
                .equals(other._cinemaList, _cinemaList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noOfTickets,
      const DeepCollectionEquality().hash(_cinemaList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayMapsViewImplCopyWith<_$DisplayMapsViewImpl> get copyWith =>
      __$$DisplayMapsViewImplCopyWithImpl<_$DisplayMapsViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)
        displayMapsView,
    required TResult Function() loading,
    required TResult Function(bool isSuccess) ticketBookingStatusView,
  }) {
    return displayMapsView(noOfTickets, cinemaList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult? Function()? loading,
    TResult? Function(bool isSuccess)? ticketBookingStatusView,
  }) {
    return displayMapsView?.call(noOfTickets, cinemaList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult Function()? loading,
    TResult Function(bool isSuccess)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (displayMapsView != null) {
      return displayMapsView(noOfTickets, cinemaList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMapsView value) displayMapsView,
    required TResult Function(_BookTicketsLoading value) loading,
    required TResult Function(_TicketBookingStatusView value)
        ticketBookingStatusView,
  }) {
    return displayMapsView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMapsView value)? displayMapsView,
    TResult? Function(_BookTicketsLoading value)? loading,
    TResult? Function(_TicketBookingStatusView value)? ticketBookingStatusView,
  }) {
    return displayMapsView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMapsView value)? displayMapsView,
    TResult Function(_BookTicketsLoading value)? loading,
    TResult Function(_TicketBookingStatusView value)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (displayMapsView != null) {
      return displayMapsView(this);
    }
    return orElse();
  }
}

abstract class _DisplayMapsView implements BookTicketScreenStates {
  const factory _DisplayMapsView(
          final int noOfTickets, final List<CinemaInfoModel> cinemaList) =
      _$DisplayMapsViewImpl;

  int get noOfTickets;
  List<CinemaInfoModel> get cinemaList;
  @JsonKey(ignore: true)
  _$$DisplayMapsViewImplCopyWith<_$DisplayMapsViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookTicketsLoadingImplCopyWith<$Res> {
  factory _$$BookTicketsLoadingImplCopyWith(_$BookTicketsLoadingImpl value,
          $Res Function(_$BookTicketsLoadingImpl) then) =
      __$$BookTicketsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookTicketsLoadingImplCopyWithImpl<$Res>
    extends _$BookTicketScreenStatesCopyWithImpl<$Res, _$BookTicketsLoadingImpl>
    implements _$$BookTicketsLoadingImplCopyWith<$Res> {
  __$$BookTicketsLoadingImplCopyWithImpl(_$BookTicketsLoadingImpl _value,
      $Res Function(_$BookTicketsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookTicketsLoadingImpl implements _BookTicketsLoading {
  const _$BookTicketsLoadingImpl();

  @override
  String toString() {
    return 'BookTicketScreenStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookTicketsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)
        displayMapsView,
    required TResult Function() loading,
    required TResult Function(bool isSuccess) ticketBookingStatusView,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult? Function()? loading,
    TResult? Function(bool isSuccess)? ticketBookingStatusView,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult Function()? loading,
    TResult Function(bool isSuccess)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMapsView value) displayMapsView,
    required TResult Function(_BookTicketsLoading value) loading,
    required TResult Function(_TicketBookingStatusView value)
        ticketBookingStatusView,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMapsView value)? displayMapsView,
    TResult? Function(_BookTicketsLoading value)? loading,
    TResult? Function(_TicketBookingStatusView value)? ticketBookingStatusView,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMapsView value)? displayMapsView,
    TResult Function(_BookTicketsLoading value)? loading,
    TResult Function(_TicketBookingStatusView value)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BookTicketsLoading implements BookTicketScreenStates {
  const factory _BookTicketsLoading() = _$BookTicketsLoadingImpl;
}

/// @nodoc
abstract class _$$TicketBookingStatusViewImplCopyWith<$Res> {
  factory _$$TicketBookingStatusViewImplCopyWith(
          _$TicketBookingStatusViewImpl value,
          $Res Function(_$TicketBookingStatusViewImpl) then) =
      __$$TicketBookingStatusViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSuccess});
}

/// @nodoc
class __$$TicketBookingStatusViewImplCopyWithImpl<$Res>
    extends _$BookTicketScreenStatesCopyWithImpl<$Res,
        _$TicketBookingStatusViewImpl>
    implements _$$TicketBookingStatusViewImplCopyWith<$Res> {
  __$$TicketBookingStatusViewImplCopyWithImpl(
      _$TicketBookingStatusViewImpl _value,
      $Res Function(_$TicketBookingStatusViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
  }) {
    return _then(_$TicketBookingStatusViewImpl(
      null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TicketBookingStatusViewImpl implements _TicketBookingStatusView {
  const _$TicketBookingStatusViewImpl(this.isSuccess);

  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'BookTicketScreenStates.ticketBookingStatusView(isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookingStatusViewImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookingStatusViewImplCopyWith<_$TicketBookingStatusViewImpl>
      get copyWith => __$$TicketBookingStatusViewImplCopyWithImpl<
          _$TicketBookingStatusViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)
        displayMapsView,
    required TResult Function() loading,
    required TResult Function(bool isSuccess) ticketBookingStatusView,
  }) {
    return ticketBookingStatusView(isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult? Function()? loading,
    TResult? Function(bool isSuccess)? ticketBookingStatusView,
  }) {
    return ticketBookingStatusView?.call(isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int noOfTickets, List<CinemaInfoModel> cinemaList)?
        displayMapsView,
    TResult Function()? loading,
    TResult Function(bool isSuccess)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (ticketBookingStatusView != null) {
      return ticketBookingStatusView(isSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayMapsView value) displayMapsView,
    required TResult Function(_BookTicketsLoading value) loading,
    required TResult Function(_TicketBookingStatusView value)
        ticketBookingStatusView,
  }) {
    return ticketBookingStatusView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayMapsView value)? displayMapsView,
    TResult? Function(_BookTicketsLoading value)? loading,
    TResult? Function(_TicketBookingStatusView value)? ticketBookingStatusView,
  }) {
    return ticketBookingStatusView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayMapsView value)? displayMapsView,
    TResult Function(_BookTicketsLoading value)? loading,
    TResult Function(_TicketBookingStatusView value)? ticketBookingStatusView,
    required TResult orElse(),
  }) {
    if (ticketBookingStatusView != null) {
      return ticketBookingStatusView(this);
    }
    return orElse();
  }
}

abstract class _TicketBookingStatusView implements BookTicketScreenStates {
  const factory _TicketBookingStatusView(final bool isSuccess) =
      _$TicketBookingStatusViewImpl;

  bool get isSuccess;
  @JsonKey(ignore: true)
  _$$TicketBookingStatusViewImplCopyWith<_$TicketBookingStatusViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
