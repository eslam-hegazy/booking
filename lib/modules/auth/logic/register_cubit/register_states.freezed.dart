// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterStates<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterStates<$T>()';
}


}

/// @nodoc
class $RegisterStatesCopyWith<T,$Res>  {
$RegisterStatesCopyWith(RegisterStates<T> _, $Res Function(RegisterStates<T>) __);
}


/// Adds pattern-matching-related methods to [RegisterStates].
extension RegisterStatesPatterns<T> on RegisterStates<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LoadingRegisterStates<T> value)?  loadingRegisterStates,TResult Function( SuccessRegisterStates<T> value)?  successRegisterStates,TResult Function( ErrorRegisterStates<T> value)?  errorRegisterStates,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingRegisterStates() when loadingRegisterStates != null:
return loadingRegisterStates(_that);case SuccessRegisterStates() when successRegisterStates != null:
return successRegisterStates(_that);case ErrorRegisterStates() when errorRegisterStates != null:
return errorRegisterStates(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LoadingRegisterStates<T> value)  loadingRegisterStates,required TResult Function( SuccessRegisterStates<T> value)  successRegisterStates,required TResult Function( ErrorRegisterStates<T> value)  errorRegisterStates,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingRegisterStates():
return loadingRegisterStates(_that);case SuccessRegisterStates():
return successRegisterStates(_that);case ErrorRegisterStates():
return errorRegisterStates(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LoadingRegisterStates<T> value)?  loadingRegisterStates,TResult? Function( SuccessRegisterStates<T> value)?  successRegisterStates,TResult? Function( ErrorRegisterStates<T> value)?  errorRegisterStates,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingRegisterStates() when loadingRegisterStates != null:
return loadingRegisterStates(_that);case SuccessRegisterStates() when successRegisterStates != null:
return successRegisterStates(_that);case ErrorRegisterStates() when errorRegisterStates != null:
return errorRegisterStates(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingRegisterStates,TResult Function( dynamic data)?  successRegisterStates,TResult Function( String error)?  errorRegisterStates,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingRegisterStates() when loadingRegisterStates != null:
return loadingRegisterStates();case SuccessRegisterStates() when successRegisterStates != null:
return successRegisterStates(_that.data);case ErrorRegisterStates() when errorRegisterStates != null:
return errorRegisterStates(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingRegisterStates,required TResult Function( dynamic data)  successRegisterStates,required TResult Function( String error)  errorRegisterStates,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingRegisterStates():
return loadingRegisterStates();case SuccessRegisterStates():
return successRegisterStates(_that.data);case ErrorRegisterStates():
return errorRegisterStates(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingRegisterStates,TResult? Function( dynamic data)?  successRegisterStates,TResult? Function( String error)?  errorRegisterStates,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingRegisterStates() when loadingRegisterStates != null:
return loadingRegisterStates();case SuccessRegisterStates() when successRegisterStates != null:
return successRegisterStates(_that.data);case ErrorRegisterStates() when errorRegisterStates != null:
return errorRegisterStates(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements RegisterStates<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterStates<$T>.initial()';
}


}




/// @nodoc


class LoadingRegisterStates<T> implements RegisterStates<T> {
  const LoadingRegisterStates();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingRegisterStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterStates<$T>.loadingRegisterStates()';
}


}




/// @nodoc


class SuccessRegisterStates<T> implements RegisterStates<T> {
  const SuccessRegisterStates(this.data);
  

 final  dynamic data;

/// Create a copy of RegisterStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessRegisterStatesCopyWith<T, SuccessRegisterStates<T>> get copyWith => _$SuccessRegisterStatesCopyWithImpl<T, SuccessRegisterStates<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessRegisterStates<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RegisterStates<$T>.successRegisterStates(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessRegisterStatesCopyWith<T,$Res> implements $RegisterStatesCopyWith<T, $Res> {
  factory $SuccessRegisterStatesCopyWith(SuccessRegisterStates<T> value, $Res Function(SuccessRegisterStates<T>) _then) = _$SuccessRegisterStatesCopyWithImpl;
@useResult
$Res call({
 dynamic data
});




}
/// @nodoc
class _$SuccessRegisterStatesCopyWithImpl<T,$Res>
    implements $SuccessRegisterStatesCopyWith<T, $Res> {
  _$SuccessRegisterStatesCopyWithImpl(this._self, this._then);

  final SuccessRegisterStates<T> _self;
  final $Res Function(SuccessRegisterStates<T>) _then;

/// Create a copy of RegisterStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SuccessRegisterStates<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class ErrorRegisterStates<T> implements RegisterStates<T> {
  const ErrorRegisterStates({required this.error});
  

 final  String error;

/// Create a copy of RegisterStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorRegisterStatesCopyWith<T, ErrorRegisterStates<T>> get copyWith => _$ErrorRegisterStatesCopyWithImpl<T, ErrorRegisterStates<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorRegisterStates<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegisterStates<$T>.errorRegisterStates(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorRegisterStatesCopyWith<T,$Res> implements $RegisterStatesCopyWith<T, $Res> {
  factory $ErrorRegisterStatesCopyWith(ErrorRegisterStates<T> value, $Res Function(ErrorRegisterStates<T>) _then) = _$ErrorRegisterStatesCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorRegisterStatesCopyWithImpl<T,$Res>
    implements $ErrorRegisterStatesCopyWith<T, $Res> {
  _$ErrorRegisterStatesCopyWithImpl(this._self, this._then);

  final ErrorRegisterStates<T> _self;
  final $Res Function(ErrorRegisterStates<T>) _then;

/// Create a copy of RegisterStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorRegisterStates<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
