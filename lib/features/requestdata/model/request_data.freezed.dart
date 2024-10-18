// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestData _$RequestDataFromJson(Map<String, dynamic> json) {
  return _RequestData.fromJson(json);
}

/// @nodoc
mixin _$RequestData {
  @JsonKey(name: "explore_cred")
  ExploreCred? get exploreCred => throw _privateConstructorUsedError;
  @JsonKey(name: "sections")
  List<Section>? get sections => throw _privateConstructorUsedError;

  /// Serializes this RequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDataCopyWith<RequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataCopyWith<$Res> {
  factory $RequestDataCopyWith(
          RequestData value, $Res Function(RequestData) then) =
      _$RequestDataCopyWithImpl<$Res, RequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: "explore_cred") ExploreCred? exploreCred,
      @JsonKey(name: "sections") List<Section>? sections});

  $ExploreCredCopyWith<$Res>? get exploreCred;
}

/// @nodoc
class _$RequestDataCopyWithImpl<$Res, $Val extends RequestData>
    implements $RequestDataCopyWith<$Res> {
  _$RequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreCred = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      exploreCred: freezed == exploreCred
          ? _value.exploreCred
          : exploreCred // ignore: cast_nullable_to_non_nullable
              as ExploreCred?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ) as $Val);
  }

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExploreCredCopyWith<$Res>? get exploreCred {
    if (_value.exploreCred == null) {
      return null;
    }

    return $ExploreCredCopyWith<$Res>(_value.exploreCred!, (value) {
      return _then(_value.copyWith(exploreCred: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestDataImplCopyWith<$Res>
    implements $RequestDataCopyWith<$Res> {
  factory _$$RequestDataImplCopyWith(
          _$RequestDataImpl value, $Res Function(_$RequestDataImpl) then) =
      __$$RequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "explore_cred") ExploreCred? exploreCred,
      @JsonKey(name: "sections") List<Section>? sections});

  @override
  $ExploreCredCopyWith<$Res>? get exploreCred;
}

/// @nodoc
class __$$RequestDataImplCopyWithImpl<$Res>
    extends _$RequestDataCopyWithImpl<$Res, _$RequestDataImpl>
    implements _$$RequestDataImplCopyWith<$Res> {
  __$$RequestDataImplCopyWithImpl(
      _$RequestDataImpl _value, $Res Function(_$RequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreCred = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$RequestDataImpl(
      exploreCred: freezed == exploreCred
          ? _value.exploreCred
          : exploreCred // ignore: cast_nullable_to_non_nullable
              as ExploreCred?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDataImpl implements _RequestData {
  const _$RequestDataImpl(
      {@JsonKey(name: "explore_cred") this.exploreCred,
      @JsonKey(name: "sections") final List<Section>? sections})
      : _sections = sections;

  factory _$RequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDataImplFromJson(json);

  @override
  @JsonKey(name: "explore_cred")
  final ExploreCred? exploreCred;
  final List<Section>? _sections;
  @override
  @JsonKey(name: "sections")
  List<Section>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestData(exploreCred: $exploreCred, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDataImpl &&
            (identical(other.exploreCred, exploreCred) ||
                other.exploreCred == exploreCred) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, exploreCred, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      __$$RequestDataImplCopyWithImpl<_$RequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDataImplToJson(
      this,
    );
  }
}

abstract class _RequestData implements RequestData {
  const factory _RequestData(
          {@JsonKey(name: "explore_cred") final ExploreCred? exploreCred,
          @JsonKey(name: "sections") final List<Section>? sections}) =
      _$RequestDataImpl;

  factory _RequestData.fromJson(Map<String, dynamic> json) =
      _$RequestDataImpl.fromJson;

  @override
  @JsonKey(name: "explore_cred")
  ExploreCred? get exploreCred;
  @override
  @JsonKey(name: "sections")
  List<Section>? get sections;

  /// Create a copy of RequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDataImplCopyWith<_$RequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExploreCred _$ExploreCredFromJson(Map<String, dynamic> json) {
  return _ExploreCred.fromJson(json);
}

/// @nodoc
mixin _$ExploreCred {
  @JsonKey(name: "template_properties")
  ExploreCredTemplateProperties? get templateProperties =>
      throw _privateConstructorUsedError;

  /// Serializes this ExploreCred to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExploreCredCopyWith<ExploreCred> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreCredCopyWith<$Res> {
  factory $ExploreCredCopyWith(
          ExploreCred value, $Res Function(ExploreCred) then) =
      _$ExploreCredCopyWithImpl<$Res, ExploreCred>;
  @useResult
  $Res call(
      {@JsonKey(name: "template_properties")
      ExploreCredTemplateProperties? templateProperties});

  $ExploreCredTemplatePropertiesCopyWith<$Res>? get templateProperties;
}

/// @nodoc
class _$ExploreCredCopyWithImpl<$Res, $Val extends ExploreCred>
    implements $ExploreCredCopyWith<$Res> {
  _$ExploreCredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateProperties = freezed,
  }) {
    return _then(_value.copyWith(
      templateProperties: freezed == templateProperties
          ? _value.templateProperties
          : templateProperties // ignore: cast_nullable_to_non_nullable
              as ExploreCredTemplateProperties?,
    ) as $Val);
  }

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExploreCredTemplatePropertiesCopyWith<$Res>? get templateProperties {
    if (_value.templateProperties == null) {
      return null;
    }

    return $ExploreCredTemplatePropertiesCopyWith<$Res>(
        _value.templateProperties!, (value) {
      return _then(_value.copyWith(templateProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExploreCredImplCopyWith<$Res>
    implements $ExploreCredCopyWith<$Res> {
  factory _$$ExploreCredImplCopyWith(
          _$ExploreCredImpl value, $Res Function(_$ExploreCredImpl) then) =
      __$$ExploreCredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "template_properties")
      ExploreCredTemplateProperties? templateProperties});

  @override
  $ExploreCredTemplatePropertiesCopyWith<$Res>? get templateProperties;
}

/// @nodoc
class __$$ExploreCredImplCopyWithImpl<$Res>
    extends _$ExploreCredCopyWithImpl<$Res, _$ExploreCredImpl>
    implements _$$ExploreCredImplCopyWith<$Res> {
  __$$ExploreCredImplCopyWithImpl(
      _$ExploreCredImpl _value, $Res Function(_$ExploreCredImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateProperties = freezed,
  }) {
    return _then(_$ExploreCredImpl(
      templateProperties: freezed == templateProperties
          ? _value.templateProperties
          : templateProperties // ignore: cast_nullable_to_non_nullable
              as ExploreCredTemplateProperties?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreCredImpl implements _ExploreCred {
  const _$ExploreCredImpl(
      {@JsonKey(name: "template_properties") this.templateProperties});

  factory _$ExploreCredImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreCredImplFromJson(json);

  @override
  @JsonKey(name: "template_properties")
  final ExploreCredTemplateProperties? templateProperties;

  @override
  String toString() {
    return 'ExploreCred(templateProperties: $templateProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreCredImpl &&
            (identical(other.templateProperties, templateProperties) ||
                other.templateProperties == templateProperties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, templateProperties);

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreCredImplCopyWith<_$ExploreCredImpl> get copyWith =>
      __$$ExploreCredImplCopyWithImpl<_$ExploreCredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreCredImplToJson(
      this,
    );
  }
}

abstract class _ExploreCred implements ExploreCred {
  const factory _ExploreCred(
          {@JsonKey(name: "template_properties")
          final ExploreCredTemplateProperties? templateProperties}) =
      _$ExploreCredImpl;

  factory _ExploreCred.fromJson(Map<String, dynamic> json) =
      _$ExploreCredImpl.fromJson;

  @override
  @JsonKey(name: "template_properties")
  ExploreCredTemplateProperties? get templateProperties;

  /// Create a copy of ExploreCred
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExploreCredImplCopyWith<_$ExploreCredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExploreCredTemplateProperties _$ExploreCredTemplatePropertiesFromJson(
    Map<String, dynamic> json) {
  return _ExploreCredTemplateProperties.fromJson(json);
}

/// @nodoc
mixin _$ExploreCredTemplateProperties {
  @JsonKey(name: "header")
  PurpleHeader? get header => throw _privateConstructorUsedError;

  /// Serializes this ExploreCredTemplateProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExploreCredTemplatePropertiesCopyWith<ExploreCredTemplateProperties>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreCredTemplatePropertiesCopyWith<$Res> {
  factory $ExploreCredTemplatePropertiesCopyWith(
          ExploreCredTemplateProperties value,
          $Res Function(ExploreCredTemplateProperties) then) =
      _$ExploreCredTemplatePropertiesCopyWithImpl<$Res,
          ExploreCredTemplateProperties>;
  @useResult
  $Res call({@JsonKey(name: "header") PurpleHeader? header});

  $PurpleHeaderCopyWith<$Res>? get header;
}

/// @nodoc
class _$ExploreCredTemplatePropertiesCopyWithImpl<$Res,
        $Val extends ExploreCredTemplateProperties>
    implements $ExploreCredTemplatePropertiesCopyWith<$Res> {
  _$ExploreCredTemplatePropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as PurpleHeader?,
    ) as $Val);
  }

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurpleHeaderCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $PurpleHeaderCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExploreCredTemplatePropertiesImplCopyWith<$Res>
    implements $ExploreCredTemplatePropertiesCopyWith<$Res> {
  factory _$$ExploreCredTemplatePropertiesImplCopyWith(
          _$ExploreCredTemplatePropertiesImpl value,
          $Res Function(_$ExploreCredTemplatePropertiesImpl) then) =
      __$$ExploreCredTemplatePropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "header") PurpleHeader? header});

  @override
  $PurpleHeaderCopyWith<$Res>? get header;
}

/// @nodoc
class __$$ExploreCredTemplatePropertiesImplCopyWithImpl<$Res>
    extends _$ExploreCredTemplatePropertiesCopyWithImpl<$Res,
        _$ExploreCredTemplatePropertiesImpl>
    implements _$$ExploreCredTemplatePropertiesImplCopyWith<$Res> {
  __$$ExploreCredTemplatePropertiesImplCopyWithImpl(
      _$ExploreCredTemplatePropertiesImpl _value,
      $Res Function(_$ExploreCredTemplatePropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_$ExploreCredTemplatePropertiesImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as PurpleHeader?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreCredTemplatePropertiesImpl
    implements _ExploreCredTemplateProperties {
  const _$ExploreCredTemplatePropertiesImpl(
      {@JsonKey(name: "header") this.header});

  factory _$ExploreCredTemplatePropertiesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExploreCredTemplatePropertiesImplFromJson(json);

  @override
  @JsonKey(name: "header")
  final PurpleHeader? header;

  @override
  String toString() {
    return 'ExploreCredTemplateProperties(header: $header)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreCredTemplatePropertiesImpl &&
            (identical(other.header, header) || other.header == header));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, header);

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreCredTemplatePropertiesImplCopyWith<
          _$ExploreCredTemplatePropertiesImpl>
      get copyWith => __$$ExploreCredTemplatePropertiesImplCopyWithImpl<
          _$ExploreCredTemplatePropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreCredTemplatePropertiesImplToJson(
      this,
    );
  }
}

abstract class _ExploreCredTemplateProperties
    implements ExploreCredTemplateProperties {
  const factory _ExploreCredTemplateProperties(
          {@JsonKey(name: "header") final PurpleHeader? header}) =
      _$ExploreCredTemplatePropertiesImpl;

  factory _ExploreCredTemplateProperties.fromJson(Map<String, dynamic> json) =
      _$ExploreCredTemplatePropertiesImpl.fromJson;

  @override
  @JsonKey(name: "header")
  PurpleHeader? get header;

  /// Create a copy of ExploreCredTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExploreCredTemplatePropertiesImplCopyWith<
          _$ExploreCredTemplatePropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurpleHeader _$PurpleHeaderFromJson(Map<String, dynamic> json) {
  return _PurpleHeader.fromJson(json);
}

/// @nodoc
mixin _$PurpleHeader {
  @JsonKey(name: "identifier")
  String? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "subtitle_title")
  String? get subtitleTitle => throw _privateConstructorUsedError;

  /// Serializes this PurpleHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurpleHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurpleHeaderCopyWith<PurpleHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleHeaderCopyWith<$Res> {
  factory $PurpleHeaderCopyWith(
          PurpleHeader value, $Res Function(PurpleHeader) then) =
      _$PurpleHeaderCopyWithImpl<$Res, PurpleHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle_title") String? subtitleTitle});
}

/// @nodoc
class _$PurpleHeaderCopyWithImpl<$Res, $Val extends PurpleHeader>
    implements $PurpleHeaderCopyWith<$Res> {
  _$PurpleHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurpleHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? title = freezed,
    Object? subtitleTitle = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleTitle: freezed == subtitleTitle
          ? _value.subtitleTitle
          : subtitleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurpleHeaderImplCopyWith<$Res>
    implements $PurpleHeaderCopyWith<$Res> {
  factory _$$PurpleHeaderImplCopyWith(
          _$PurpleHeaderImpl value, $Res Function(_$PurpleHeaderImpl) then) =
      __$$PurpleHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle_title") String? subtitleTitle});
}

/// @nodoc
class __$$PurpleHeaderImplCopyWithImpl<$Res>
    extends _$PurpleHeaderCopyWithImpl<$Res, _$PurpleHeaderImpl>
    implements _$$PurpleHeaderImplCopyWith<$Res> {
  __$$PurpleHeaderImplCopyWithImpl(
      _$PurpleHeaderImpl _value, $Res Function(_$PurpleHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurpleHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? title = freezed,
    Object? subtitleTitle = freezed,
  }) {
    return _then(_$PurpleHeaderImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleTitle: freezed == subtitleTitle
          ? _value.subtitleTitle
          : subtitleTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurpleHeaderImpl implements _PurpleHeader {
  const _$PurpleHeaderImpl(
      {@JsonKey(name: "identifier") this.identifier,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "subtitle_title") this.subtitleTitle});

  factory _$PurpleHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleHeaderImplFromJson(json);

  @override
  @JsonKey(name: "identifier")
  final String? identifier;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "subtitle_title")
  final String? subtitleTitle;

  @override
  String toString() {
    return 'PurpleHeader(identifier: $identifier, title: $title, subtitleTitle: $subtitleTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleHeaderImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitleTitle, subtitleTitle) ||
                other.subtitleTitle == subtitleTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, title, subtitleTitle);

  /// Create a copy of PurpleHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurpleHeaderImplCopyWith<_$PurpleHeaderImpl> get copyWith =>
      __$$PurpleHeaderImplCopyWithImpl<_$PurpleHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurpleHeaderImplToJson(
      this,
    );
  }
}

abstract class _PurpleHeader implements PurpleHeader {
  const factory _PurpleHeader(
          {@JsonKey(name: "identifier") final String? identifier,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "subtitle_title") final String? subtitleTitle}) =
      _$PurpleHeaderImpl;

  factory _PurpleHeader.fromJson(Map<String, dynamic> json) =
      _$PurpleHeaderImpl.fromJson;

  @override
  @JsonKey(name: "identifier")
  String? get identifier;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "subtitle_title")
  String? get subtitleTitle;

  /// Create a copy of PurpleHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurpleHeaderImplCopyWith<_$PurpleHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  @JsonKey(name: "template_properties")
  SectionTemplateProperties? get templateProperties =>
      throw _privateConstructorUsedError;

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call(
      {@JsonKey(name: "template_properties")
      SectionTemplateProperties? templateProperties});

  $SectionTemplatePropertiesCopyWith<$Res>? get templateProperties;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateProperties = freezed,
  }) {
    return _then(_value.copyWith(
      templateProperties: freezed == templateProperties
          ? _value.templateProperties
          : templateProperties // ignore: cast_nullable_to_non_nullable
              as SectionTemplateProperties?,
    ) as $Val);
  }

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionTemplatePropertiesCopyWith<$Res>? get templateProperties {
    if (_value.templateProperties == null) {
      return null;
    }

    return $SectionTemplatePropertiesCopyWith<$Res>(_value.templateProperties!,
        (value) {
      return _then(_value.copyWith(templateProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "template_properties")
      SectionTemplateProperties? templateProperties});

  @override
  $SectionTemplatePropertiesCopyWith<$Res>? get templateProperties;
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateProperties = freezed,
  }) {
    return _then(_$SectionImpl(
      templateProperties: freezed == templateProperties
          ? _value.templateProperties
          : templateProperties // ignore: cast_nullable_to_non_nullable
              as SectionTemplateProperties?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionImpl implements _Section {
  const _$SectionImpl(
      {@JsonKey(name: "template_properties") this.templateProperties});

  factory _$SectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionImplFromJson(json);

  @override
  @JsonKey(name: "template_properties")
  final SectionTemplateProperties? templateProperties;

  @override
  String toString() {
    return 'Section(templateProperties: $templateProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.templateProperties, templateProperties) ||
                other.templateProperties == templateProperties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, templateProperties);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionImplToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {@JsonKey(name: "template_properties")
      final SectionTemplateProperties? templateProperties}) = _$SectionImpl;

  factory _Section.fromJson(Map<String, dynamic> json) = _$SectionImpl.fromJson;

  @override
  @JsonKey(name: "template_properties")
  SectionTemplateProperties? get templateProperties;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionTemplateProperties _$SectionTemplatePropertiesFromJson(
    Map<String, dynamic> json) {
  return _SectionTemplateProperties.fromJson(json);
}

/// @nodoc
mixin _$SectionTemplateProperties {
  @JsonKey(name: "header")
  FluffyHeader? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<Item>? get items => throw _privateConstructorUsedError;

  /// Serializes this SectionTemplateProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionTemplatePropertiesCopyWith<SectionTemplateProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionTemplatePropertiesCopyWith<$Res> {
  factory $SectionTemplatePropertiesCopyWith(SectionTemplateProperties value,
          $Res Function(SectionTemplateProperties) then) =
      _$SectionTemplatePropertiesCopyWithImpl<$Res, SectionTemplateProperties>;
  @useResult
  $Res call(
      {@JsonKey(name: "header") FluffyHeader? header,
      @JsonKey(name: "items") List<Item>? items});

  $FluffyHeaderCopyWith<$Res>? get header;
}

/// @nodoc
class _$SectionTemplatePropertiesCopyWithImpl<$Res,
        $Val extends SectionTemplateProperties>
    implements $SectionTemplatePropertiesCopyWith<$Res> {
  _$SectionTemplatePropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as FluffyHeader?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FluffyHeaderCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $FluffyHeaderCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionTemplatePropertiesImplCopyWith<$Res>
    implements $SectionTemplatePropertiesCopyWith<$Res> {
  factory _$$SectionTemplatePropertiesImplCopyWith(
          _$SectionTemplatePropertiesImpl value,
          $Res Function(_$SectionTemplatePropertiesImpl) then) =
      __$$SectionTemplatePropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "header") FluffyHeader? header,
      @JsonKey(name: "items") List<Item>? items});

  @override
  $FluffyHeaderCopyWith<$Res>? get header;
}

/// @nodoc
class __$$SectionTemplatePropertiesImplCopyWithImpl<$Res>
    extends _$SectionTemplatePropertiesCopyWithImpl<$Res,
        _$SectionTemplatePropertiesImpl>
    implements _$$SectionTemplatePropertiesImplCopyWith<$Res> {
  __$$SectionTemplatePropertiesImplCopyWithImpl(
      _$SectionTemplatePropertiesImpl _value,
      $Res Function(_$SectionTemplatePropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? items = freezed,
  }) {
    return _then(_$SectionTemplatePropertiesImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as FluffyHeader?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionTemplatePropertiesImpl implements _SectionTemplateProperties {
  const _$SectionTemplatePropertiesImpl(
      {@JsonKey(name: "header") this.header,
      @JsonKey(name: "items") final List<Item>? items})
      : _items = items;

  factory _$SectionTemplatePropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionTemplatePropertiesImplFromJson(json);

  @override
  @JsonKey(name: "header")
  final FluffyHeader? header;
  final List<Item>? _items;
  @override
  @JsonKey(name: "items")
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SectionTemplateProperties(header: $header, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionTemplatePropertiesImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, header, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionTemplatePropertiesImplCopyWith<_$SectionTemplatePropertiesImpl>
      get copyWith => __$$SectionTemplatePropertiesImplCopyWithImpl<
          _$SectionTemplatePropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionTemplatePropertiesImplToJson(
      this,
    );
  }
}

abstract class _SectionTemplateProperties implements SectionTemplateProperties {
  const factory _SectionTemplateProperties(
          {@JsonKey(name: "header") final FluffyHeader? header,
          @JsonKey(name: "items") final List<Item>? items}) =
      _$SectionTemplatePropertiesImpl;

  factory _SectionTemplateProperties.fromJson(Map<String, dynamic> json) =
      _$SectionTemplatePropertiesImpl.fromJson;

  @override
  @JsonKey(name: "header")
  FluffyHeader? get header;
  @override
  @JsonKey(name: "items")
  List<Item>? get items;

  /// Create a copy of SectionTemplateProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionTemplatePropertiesImplCopyWith<_$SectionTemplatePropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FluffyHeader _$FluffyHeaderFromJson(Map<String, dynamic> json) {
  return _FluffyHeader.fromJson(json);
}

/// @nodoc
mixin _$FluffyHeader {
  @JsonKey(name: "identifier")
  String? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this FluffyHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FluffyHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FluffyHeaderCopyWith<FluffyHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FluffyHeaderCopyWith<$Res> {
  factory $FluffyHeaderCopyWith(
          FluffyHeader value, $Res Function(FluffyHeader) then) =
      _$FluffyHeaderCopyWithImpl<$Res, FluffyHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$FluffyHeaderCopyWithImpl<$Res, $Val extends FluffyHeader>
    implements $FluffyHeaderCopyWith<$Res> {
  _$FluffyHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FluffyHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FluffyHeaderImplCopyWith<$Res>
    implements $FluffyHeaderCopyWith<$Res> {
  factory _$$FluffyHeaderImplCopyWith(
          _$FluffyHeaderImpl value, $Res Function(_$FluffyHeaderImpl) then) =
      __$$FluffyHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$FluffyHeaderImplCopyWithImpl<$Res>
    extends _$FluffyHeaderCopyWithImpl<$Res, _$FluffyHeaderImpl>
    implements _$$FluffyHeaderImplCopyWith<$Res> {
  __$$FluffyHeaderImplCopyWithImpl(
      _$FluffyHeaderImpl _value, $Res Function(_$FluffyHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of FluffyHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? title = freezed,
  }) {
    return _then(_$FluffyHeaderImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FluffyHeaderImpl implements _FluffyHeader {
  const _$FluffyHeaderImpl(
      {@JsonKey(name: "identifier") this.identifier,
      @JsonKey(name: "title") this.title});

  factory _$FluffyHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$FluffyHeaderImplFromJson(json);

  @override
  @JsonKey(name: "identifier")
  final String? identifier;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'FluffyHeader(identifier: $identifier, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FluffyHeaderImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, title);

  /// Create a copy of FluffyHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FluffyHeaderImplCopyWith<_$FluffyHeaderImpl> get copyWith =>
      __$$FluffyHeaderImplCopyWithImpl<_$FluffyHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FluffyHeaderImplToJson(
      this,
    );
  }
}

abstract class _FluffyHeader implements FluffyHeader {
  const factory _FluffyHeader(
      {@JsonKey(name: "identifier") final String? identifier,
      @JsonKey(name: "title") final String? title}) = _$FluffyHeaderImpl;

  factory _FluffyHeader.fromJson(Map<String, dynamic> json) =
      _$FluffyHeaderImpl.fromJson;

  @override
  @JsonKey(name: "identifier")
  String? get identifier;
  @override
  @JsonKey(name: "title")
  String? get title;

  /// Create a copy of FluffyHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FluffyHeaderImplCopyWith<_$FluffyHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "identifier")
  String? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "display_data")
  DisplayData? get displayData => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "display_data") DisplayData? displayData});

  $DisplayDataCopyWith<$Res>? get displayData;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? displayData = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      displayData: freezed == displayData
          ? _value.displayData
          : displayData // ignore: cast_nullable_to_non_nullable
              as DisplayData?,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayDataCopyWith<$Res>? get displayData {
    if (_value.displayData == null) {
      return null;
    }

    return $DisplayDataCopyWith<$Res>(_value.displayData!, (value) {
      return _then(_value.copyWith(displayData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") String? identifier,
      @JsonKey(name: "display_data") DisplayData? displayData});

  @override
  $DisplayDataCopyWith<$Res>? get displayData;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? displayData = freezed,
  }) {
    return _then(_$ItemImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      displayData: freezed == displayData
          ? _value.displayData
          : displayData // ignore: cast_nullable_to_non_nullable
              as DisplayData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "identifier") this.identifier,
      @JsonKey(name: "display_data") this.displayData});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "identifier")
  final String? identifier;
  @override
  @JsonKey(name: "display_data")
  final DisplayData? displayData;

  @override
  String toString() {
    return 'Item(identifier: $identifier, displayData: $displayData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.displayData, displayData) ||
                other.displayData == displayData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, displayData);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
          {@JsonKey(name: "identifier") final String? identifier,
          @JsonKey(name: "display_data") final DisplayData? displayData}) =
      _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "identifier")
  String? get identifier;
  @override
  @JsonKey(name: "display_data")
  DisplayData? get displayData;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayData _$DisplayDataFromJson(Map<String, dynamic> json) {
  return _DisplayData.fromJson(json);
}

/// @nodoc
mixin _$DisplayData {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "icon_url")
  String? get iconUrl => throw _privateConstructorUsedError;

  /// Serializes this DisplayData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayDataCopyWith<DisplayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayDataCopyWith<$Res> {
  factory $DisplayDataCopyWith(
          DisplayData value, $Res Function(DisplayData) then) =
      _$DisplayDataCopyWithImpl<$Res, DisplayData>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "icon_url") String? iconUrl});
}

/// @nodoc
class _$DisplayDataCopyWithImpl<$Res, $Val extends DisplayData>
    implements $DisplayDataCopyWith<$Res> {
  _$DisplayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayDataImplCopyWith<$Res>
    implements $DisplayDataCopyWith<$Res> {
  factory _$$DisplayDataImplCopyWith(
          _$DisplayDataImpl value, $Res Function(_$DisplayDataImpl) then) =
      __$$DisplayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "icon_url") String? iconUrl});
}

/// @nodoc
class __$$DisplayDataImplCopyWithImpl<$Res>
    extends _$DisplayDataCopyWithImpl<$Res, _$DisplayDataImpl>
    implements _$$DisplayDataImplCopyWith<$Res> {
  __$$DisplayDataImplCopyWithImpl(
      _$DisplayDataImpl _value, $Res Function(_$DisplayDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_$DisplayDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayDataImpl implements _DisplayData {
  const _$DisplayDataImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "icon_url") this.iconUrl});

  factory _$DisplayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayDataImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "icon_url")
  final String? iconUrl;

  @override
  String toString() {
    return 'DisplayData(name: $name, description: $description, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, iconUrl);

  /// Create a copy of DisplayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayDataImplCopyWith<_$DisplayDataImpl> get copyWith =>
      __$$DisplayDataImplCopyWithImpl<_$DisplayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayDataImplToJson(
      this,
    );
  }
}

abstract class _DisplayData implements DisplayData {
  const factory _DisplayData(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "icon_url") final String? iconUrl}) = _$DisplayDataImpl;

  factory _DisplayData.fromJson(Map<String, dynamic> json) =
      _$DisplayDataImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "icon_url")
  String? get iconUrl;

  /// Create a copy of DisplayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayDataImplCopyWith<_$DisplayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
