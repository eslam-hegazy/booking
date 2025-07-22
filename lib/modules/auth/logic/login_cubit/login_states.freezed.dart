// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>()';
}


}

/// @nodoc
class $LoginStateCopyWith<T,$Res>  {
$LoginStateCopyWith(LoginState<T> _, $Res Function(LoginState<T>) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns<T> on LoginState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LoadingLoginState<T> value)?  loadingLoginState,TResult Function( SuccessLoginState<T> value)?  successLoginState,TResult Function( ErrorLoginState<T> value)?  errorLoginState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingLoginState() when loadingLoginState != null:
return loadingLoginState(_that);case SuccessLoginState() when successLoginState != null:
return successLoginState(_that);case ErrorLoginState() when errorLoginState != null:
return errorLoginState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LoadingLoginState<T> value)  loadingLoginState,required TResult Function( SuccessLoginState<T> value)  successLoginState,required TResult Function( ErrorLoginState<T> value)  errorLoginState,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingLoginState():
return loadingLoginState(_that);case SuccessLoginState():
return successLoginState(_that);case ErrorLoginState():
return errorLoginState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LoadingLoginState<T> value)?  loadingLoginState,TResult? Function( SuccessLoginState<T> value)?  successLoginState,TResult? Function( ErrorLoginState<T> value)?  errorLoginState,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingLoginState() when loadingLoginState != null:
return loadingLoginState(_that);case SuccessLoginState() when successLoginState != null:
return successLoginState(_that);case ErrorLoginState() when errorLoginState != null:
return errorLoginState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingLoginState,TResult Function( dynamic data)?  successLoginState,TResult Function( String error)?  errorLoginState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingLoginState() when loadingLoginState != null:
return loadingLoginState();case SuccessLoginState() when successLoginState != null:
return successLoginState(_that.data);case ErrorLoginState() when errorLoginState != null:
return errorLoginState(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingLoginState,required TResult Function( dynamic data)  successLoginState,required TResult Function( String error)  errorLoginState,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingLoginState():
return loadingLoginState();case SuccessLoginState():
return successLoginState(_that.data);case ErrorLoginState():
return errorLoginState(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingLoginState,TResult? Function( dynamic data)?  successLoginState,TResult? Function( String error)?  errorLoginState,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingLoginState() when loadingLoginState != null:
return loadingLoginState();case SuccessLoginState() when successLoginState != null:
return successLoginState(_that.data);case ErrorLoginState() when errorLoginState != null:
return errorLoginState(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements LoginState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.initial()';
}


}




/// @nodoc


class LoadingLoginState<T> implements LoginState<T> {
  const LoadingLoginState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLoginState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.loadingLoginState()';
}


}




/// @nodoc


class SuccessLoginState<T> implements LoginState<T> {
  const SuccessLoginState(this.data);
  

 final  dynamic data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessLoginStateCopyWith<T, SuccessLoginState<T>> get copyWith => _$SuccessLoginStateCopyWithImpl<T, SuccessLoginState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessLoginState<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginState<$T>.successLoginState(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessLoginStateCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $SuccessLoginStateCopyWith(SuccessLoginState<T> value, $Res Function(SuccessLoginState<T>) _then) = _$SuccessLoginStateCopyWithImpl;
@useResult
$Res call({
 dynamic data
});




}
/// @nodoc
class _$SuccessLoginStateCopyWithImpl<T,$Res>
    implements $SuccessLoginStateCopyWith<T, $Res> {
  _$SuccessLoginStateCopyWithImpl(this._self, this._then);

  final SuccessLoginState<T> _self;
  final $Res Function(SuccessLoginState<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SuccessLoginState<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class ErrorLoginState<T> implements LoginState<T> {
  const ErrorLoginState({required this.error});
  

 final  String error;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorLoginStateCopyWith<T, ErrorLoginState<T>> get copyWith => _$ErrorLoginStateCopyWithImpl<T, ErrorLoginState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorLoginState<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LoginState<$T>.errorLoginState(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorLoginStateCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $ErrorLoginStateCopyWith(ErrorLoginState<T> value, $Res Function(ErrorLoginState<T>) _then) = _$ErrorLoginStateCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorLoginStateCopyWithImpl<T,$Res>
    implements $ErrorLoginStateCopyWith<T, $Res> {
  _$ErrorLoginStateCopyWithImpl(this._self, this._then);

  final ErrorLoginState<T> _self;
  final $Res Function(ErrorLoginState<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorLoginState<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
