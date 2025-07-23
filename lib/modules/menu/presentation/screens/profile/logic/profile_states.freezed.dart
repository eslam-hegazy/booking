// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileStates<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates<$T>()';
}


}

/// @nodoc
class $ProfileStatesCopyWith<T,$Res>  {
$ProfileStatesCopyWith(ProfileStates<T> _, $Res Function(ProfileStates<T>) __);
}


/// Adds pattern-matching-related methods to [ProfileStates].
extension ProfileStatesPatterns<T> on ProfileStates<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LoadingProfileStates<T> value)?  loadingProfileStates,TResult Function( SuccessProfileStates<T> value)?  successProfileStates,TResult Function( ErrorProfileStates<T> value)?  errorProfileStates,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingProfileStates() when loadingProfileStates != null:
return loadingProfileStates(_that);case SuccessProfileStates() when successProfileStates != null:
return successProfileStates(_that);case ErrorProfileStates() when errorProfileStates != null:
return errorProfileStates(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LoadingProfileStates<T> value)  loadingProfileStates,required TResult Function( SuccessProfileStates<T> value)  successProfileStates,required TResult Function( ErrorProfileStates<T> value)  errorProfileStates,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingProfileStates():
return loadingProfileStates(_that);case SuccessProfileStates():
return successProfileStates(_that);case ErrorProfileStates():
return errorProfileStates(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LoadingProfileStates<T> value)?  loadingProfileStates,TResult? Function( SuccessProfileStates<T> value)?  successProfileStates,TResult? Function( ErrorProfileStates<T> value)?  errorProfileStates,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingProfileStates() when loadingProfileStates != null:
return loadingProfileStates(_that);case SuccessProfileStates() when successProfileStates != null:
return successProfileStates(_that);case ErrorProfileStates() when errorProfileStates != null:
return errorProfileStates(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingProfileStates,TResult Function( dynamic data)?  successProfileStates,TResult Function( String error)?  errorProfileStates,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingProfileStates() when loadingProfileStates != null:
return loadingProfileStates();case SuccessProfileStates() when successProfileStates != null:
return successProfileStates(_that.data);case ErrorProfileStates() when errorProfileStates != null:
return errorProfileStates(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingProfileStates,required TResult Function( dynamic data)  successProfileStates,required TResult Function( String error)  errorProfileStates,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingProfileStates():
return loadingProfileStates();case SuccessProfileStates():
return successProfileStates(_that.data);case ErrorProfileStates():
return errorProfileStates(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingProfileStates,TResult? Function( dynamic data)?  successProfileStates,TResult? Function( String error)?  errorProfileStates,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingProfileStates() when loadingProfileStates != null:
return loadingProfileStates();case SuccessProfileStates() when successProfileStates != null:
return successProfileStates(_that.data);case ErrorProfileStates() when errorProfileStates != null:
return errorProfileStates(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ProfileStates<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates<$T>.initial()';
}


}




/// @nodoc


class LoadingProfileStates<T> implements ProfileStates<T> {
  const LoadingProfileStates();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingProfileStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates<$T>.loadingProfileStates()';
}


}




/// @nodoc


class SuccessProfileStates<T> implements ProfileStates<T> {
  const SuccessProfileStates(this.data);
  

 final  dynamic data;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessProfileStatesCopyWith<T, SuccessProfileStates<T>> get copyWith => _$SuccessProfileStatesCopyWithImpl<T, SuccessProfileStates<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessProfileStates<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProfileStates<$T>.successProfileStates(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessProfileStatesCopyWith<T,$Res> implements $ProfileStatesCopyWith<T, $Res> {
  factory $SuccessProfileStatesCopyWith(SuccessProfileStates<T> value, $Res Function(SuccessProfileStates<T>) _then) = _$SuccessProfileStatesCopyWithImpl;
@useResult
$Res call({
 dynamic data
});




}
/// @nodoc
class _$SuccessProfileStatesCopyWithImpl<T,$Res>
    implements $SuccessProfileStatesCopyWith<T, $Res> {
  _$SuccessProfileStatesCopyWithImpl(this._self, this._then);

  final SuccessProfileStates<T> _self;
  final $Res Function(SuccessProfileStates<T>) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SuccessProfileStates<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class ErrorProfileStates<T> implements ProfileStates<T> {
  const ErrorProfileStates({required this.error});
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorProfileStatesCopyWith<T, ErrorProfileStates<T>> get copyWith => _$ErrorProfileStatesCopyWithImpl<T, ErrorProfileStates<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorProfileStates<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates<$T>.errorProfileStates(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorProfileStatesCopyWith<T,$Res> implements $ProfileStatesCopyWith<T, $Res> {
  factory $ErrorProfileStatesCopyWith(ErrorProfileStates<T> value, $Res Function(ErrorProfileStates<T>) _then) = _$ErrorProfileStatesCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorProfileStatesCopyWithImpl<T,$Res>
    implements $ErrorProfileStatesCopyWith<T, $Res> {
  _$ErrorProfileStatesCopyWithImpl(this._self, this._then);

  final ErrorProfileStates<T> _self;
  final $Res Function(ErrorProfileStates<T>) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorProfileStates<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
