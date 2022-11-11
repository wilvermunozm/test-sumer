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
mixin _$GifState {
  List<GifModel> get gifList => throw _privateConstructorUsedError;
  List<String> get favoriteList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GifStateCopyWith<GifState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifStateCopyWith<$Res> {
  factory $GifStateCopyWith(GifState value, $Res Function(GifState) then) =
      _$GifStateCopyWithImpl<$Res, GifState>;
  @useResult
  $Res call(
      {List<GifModel> gifList,
      List<String> favoriteList,
      bool isLoading,
      Failure? error});
}

/// @nodoc
class _$GifStateCopyWithImpl<$Res, $Val extends GifState>
    implements $GifStateCopyWith<$Res> {
  _$GifStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifList = null,
    Object? favoriteList = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      gifList: null == gifList
          ? _value.gifList
          : gifList // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_GifStateCopyWith<$Res> implements $GifStateCopyWith<$Res> {
  factory _$$_GifStateCopyWith(
          _$_GifState value, $Res Function(_$_GifState) then) =
      __$$_GifStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GifModel> gifList,
      List<String> favoriteList,
      bool isLoading,
      Failure? error});
}

/// @nodoc
class __$$_GifStateCopyWithImpl<$Res>
    extends _$GifStateCopyWithImpl<$Res, _$_GifState>
    implements _$$_GifStateCopyWith<$Res> {
  __$$_GifStateCopyWithImpl(
      _$_GifState _value, $Res Function(_$_GifState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifList = null,
    Object? favoriteList = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_GifState(
      gifList: null == gifList
          ? _value._gifList
          : gifList // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      favoriteList: null == favoriteList
          ? _value._favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$_GifState implements _GifState {
  const _$_GifState(
      {required final List<GifModel> gifList,
      required final List<String> favoriteList,
      required this.isLoading,
      this.error})
      : _gifList = gifList,
        _favoriteList = favoriteList;

  final List<GifModel> _gifList;
  @override
  List<GifModel> get gifList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifList);
  }

  final List<String> _favoriteList;
  @override
  List<String> get favoriteList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteList);
  }

  @override
  final bool isLoading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'GifState(gifList: $gifList, favoriteList: $favoriteList, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GifState &&
            const DeepCollectionEquality().equals(other._gifList, _gifList) &&
            const DeepCollectionEquality()
                .equals(other._favoriteList, _favoriteList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_gifList),
      const DeepCollectionEquality().hash(_favoriteList),
      isLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GifStateCopyWith<_$_GifState> get copyWith =>
      __$$_GifStateCopyWithImpl<_$_GifState>(this, _$identity);
}

abstract class _GifState implements GifState {
  const factory _GifState(
      {required final List<GifModel> gifList,
      required final List<String> favoriteList,
      required final bool isLoading,
      final Failure? error}) = _$_GifState;

  @override
  List<GifModel> get gifList;
  @override
  List<String> get favoriteList;
  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_GifStateCopyWith<_$_GifState> get copyWith =>
      throw _privateConstructorUsedError;
}
