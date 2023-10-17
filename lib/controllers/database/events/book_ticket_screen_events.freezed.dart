// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_ticket_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookTicketScreenEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ticketsToBePurchased) initTicketDetailsEvent,
    required TResult Function(CinemaInfoModel infoModel) bookTicketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult? Function(CinemaInfoModel infoModel)? bookTicketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult Function(CinemaInfoModel infoModel)? bookTicketEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTicketDetailsEvent value)
        initTicketDetailsEvent,
    required TResult Function(BookTicketEvent value) bookTicketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult? Function(BookTicketEvent value)? bookTicketEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult Function(BookTicketEvent value)? bookTicketEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookTicketScreenEventsCopyWith<$Res> {
  factory $BookTicketScreenEventsCopyWith(BookTicketScreenEvents value,
          $Res Function(BookTicketScreenEvents) then) =
      _$BookTicketScreenEventsCopyWithImpl<$Res, BookTicketScreenEvents>;
}

/// @nodoc
class _$BookTicketScreenEventsCopyWithImpl<$Res,
        $Val extends BookTicketScreenEvents>
    implements $BookTicketScreenEventsCopyWith<$Res> {
  _$BookTicketScreenEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitTicketDetailsEventImplCopyWith<$Res> {
  factory _$$InitTicketDetailsEventImplCopyWith(
          _$InitTicketDetailsEventImpl value,
          $Res Function(_$InitTicketDetailsEventImpl) then) =
      __$$InitTicketDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int ticketsToBePurchased});
}

/// @nodoc
class __$$InitTicketDetailsEventImplCopyWithImpl<$Res>
    extends _$BookTicketScreenEventsCopyWithImpl<$Res,
        _$InitTicketDetailsEventImpl>
    implements _$$InitTicketDetailsEventImplCopyWith<$Res> {
  __$$InitTicketDetailsEventImplCopyWithImpl(
      _$InitTicketDetailsEventImpl _value,
      $Res Function(_$InitTicketDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsToBePurchased = null,
  }) {
    return _then(_$InitTicketDetailsEventImpl(
      null == ticketsToBePurchased
          ? _value.ticketsToBePurchased
          : ticketsToBePurchased // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitTicketDetailsEventImpl implements InitTicketDetailsEvent {
  const _$InitTicketDetailsEventImpl(this.ticketsToBePurchased);

  @override
  final int ticketsToBePurchased;

  @override
  String toString() {
    return 'BookTicketScreenEvents.initTicketDetailsEvent(ticketsToBePurchased: $ticketsToBePurchased)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitTicketDetailsEventImpl &&
            (identical(other.ticketsToBePurchased, ticketsToBePurchased) ||
                other.ticketsToBePurchased == ticketsToBePurchased));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketsToBePurchased);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitTicketDetailsEventImplCopyWith<_$InitTicketDetailsEventImpl>
      get copyWith => __$$InitTicketDetailsEventImplCopyWithImpl<
          _$InitTicketDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ticketsToBePurchased) initTicketDetailsEvent,
    required TResult Function(CinemaInfoModel infoModel) bookTicketEvent,
  }) {
    return initTicketDetailsEvent(ticketsToBePurchased);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult? Function(CinemaInfoModel infoModel)? bookTicketEvent,
  }) {
    return initTicketDetailsEvent?.call(ticketsToBePurchased);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult Function(CinemaInfoModel infoModel)? bookTicketEvent,
    required TResult orElse(),
  }) {
    if (initTicketDetailsEvent != null) {
      return initTicketDetailsEvent(ticketsToBePurchased);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTicketDetailsEvent value)
        initTicketDetailsEvent,
    required TResult Function(BookTicketEvent value) bookTicketEvent,
  }) {
    return initTicketDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult? Function(BookTicketEvent value)? bookTicketEvent,
  }) {
    return initTicketDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult Function(BookTicketEvent value)? bookTicketEvent,
    required TResult orElse(),
  }) {
    if (initTicketDetailsEvent != null) {
      return initTicketDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class InitTicketDetailsEvent implements BookTicketScreenEvents {
  const factory InitTicketDetailsEvent(final int ticketsToBePurchased) =
      _$InitTicketDetailsEventImpl;

  int get ticketsToBePurchased;
  @JsonKey(ignore: true)
  _$$InitTicketDetailsEventImplCopyWith<_$InitTicketDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookTicketEventImplCopyWith<$Res> {
  factory _$$BookTicketEventImplCopyWith(_$BookTicketEventImpl value,
          $Res Function(_$BookTicketEventImpl) then) =
      __$$BookTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CinemaInfoModel infoModel});

  $CinemaInfoModelCopyWith<$Res> get infoModel;
}

/// @nodoc
class __$$BookTicketEventImplCopyWithImpl<$Res>
    extends _$BookTicketScreenEventsCopyWithImpl<$Res, _$BookTicketEventImpl>
    implements _$$BookTicketEventImplCopyWith<$Res> {
  __$$BookTicketEventImplCopyWithImpl(
      _$BookTicketEventImpl _value, $Res Function(_$BookTicketEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infoModel = null,
  }) {
    return _then(_$BookTicketEventImpl(
      null == infoModel
          ? _value.infoModel
          : infoModel // ignore: cast_nullable_to_non_nullable
              as CinemaInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CinemaInfoModelCopyWith<$Res> get infoModel {
    return $CinemaInfoModelCopyWith<$Res>(_value.infoModel, (value) {
      return _then(_value.copyWith(infoModel: value));
    });
  }
}

/// @nodoc

class _$BookTicketEventImpl implements BookTicketEvent {
  const _$BookTicketEventImpl(this.infoModel);

  @override
  final CinemaInfoModel infoModel;

  @override
  String toString() {
    return 'BookTicketScreenEvents.bookTicketEvent(infoModel: $infoModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookTicketEventImpl &&
            (identical(other.infoModel, infoModel) ||
                other.infoModel == infoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, infoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookTicketEventImplCopyWith<_$BookTicketEventImpl> get copyWith =>
      __$$BookTicketEventImplCopyWithImpl<_$BookTicketEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ticketsToBePurchased) initTicketDetailsEvent,
    required TResult Function(CinemaInfoModel infoModel) bookTicketEvent,
  }) {
    return bookTicketEvent(infoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult? Function(CinemaInfoModel infoModel)? bookTicketEvent,
  }) {
    return bookTicketEvent?.call(infoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ticketsToBePurchased)? initTicketDetailsEvent,
    TResult Function(CinemaInfoModel infoModel)? bookTicketEvent,
    required TResult orElse(),
  }) {
    if (bookTicketEvent != null) {
      return bookTicketEvent(infoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTicketDetailsEvent value)
        initTicketDetailsEvent,
    required TResult Function(BookTicketEvent value) bookTicketEvent,
  }) {
    return bookTicketEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult? Function(BookTicketEvent value)? bookTicketEvent,
  }) {
    return bookTicketEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTicketDetailsEvent value)? initTicketDetailsEvent,
    TResult Function(BookTicketEvent value)? bookTicketEvent,
    required TResult orElse(),
  }) {
    if (bookTicketEvent != null) {
      return bookTicketEvent(this);
    }
    return orElse();
  }
}

abstract class BookTicketEvent implements BookTicketScreenEvents {
  const factory BookTicketEvent(final CinemaInfoModel infoModel) =
      _$BookTicketEventImpl;

  CinemaInfoModel get infoModel;
  @JsonKey(ignore: true)
  _$$BookTicketEventImplCopyWith<_$BookTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
