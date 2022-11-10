// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gif_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GiftState {
  List<GifModel> get gifList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GiftStateCopyWith<GiftState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftStateCopyWith<$Res> {
  factory $GiftStateCopyWith(GiftState value, $Res Function(GiftState) then) =
      _$GiftStateCopyWithImpl<$Res, GiftState>;
  @useResult
  $Res call({List<GifModel> gifList, bool isLoading, Failure? error});
}

/// @nodoc
class _$GiftStateCopyWithImpl<$Res, $Val extends GiftState>
    implements $GiftStateCopyWith<$Res> {
  _$GiftStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifList = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      gifList: null == gifList
          ? _value.gifList
          : gifList // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GiftStateCopyWith<$Res> implements $GiftStateCopyWith<$Res> {
  factory _$$_GiftStateCopyWith(
          _$_GiftState value, $Res Function(_$_GiftState) then) =
      __$$_GiftStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GifModel> gifList, bool isLoading, Failure? error});
}

/// @nodoc
class __$$_GiftStateCopyWithImpl<$Res>
    extends _$GiftStateCopyWithImpl<$Res, _$_GiftState>
    implements _$$_GiftStateCopyWith<$Res> {
  __$$_GiftStateCopyWithImpl(
      _$_GiftState _value, $Res Function(_$_GiftState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifList = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_GiftState(
      gifList: null == gifList
          ? _value._gifList
          : gifList // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_GiftState implements _GiftState {
  const _$_GiftState(
      {required final List<GifModel> gifList,
      required this.isLoading,
      this.error})
      : _gifList = gifList;

  final List<GifModel> _gifList;
  @override
  List<GifModel> get gifList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifList);
  }

  @override
  final bool isLoading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'GiftState(gifList: $gifList, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GiftState &&
            const DeepCollectionEquality().equals(other._gifList, _gifList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_gifList), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GiftStateCopyWith<_$_GiftState> get copyWith =>
      __$$_GiftStateCopyWithImpl<_$_GiftState>(this, _$identity);
}

abstract class _GiftState implements GiftState {
  const factory _GiftState(
      {required final List<GifModel> gifList,
      required final bool isLoading,
      final Failure? error}) = _$_GiftState;

  @override
  List<GifModel> get gifList;
  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_GiftStateCopyWith<_$_GiftState> get copyWith =>
      throw _privateConstructorUsedError;
}
