// To parse this JSON data, do
//
//     final requestData = requestDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart'; // Importing freezed package for immutable data classes
import 'dart:convert'; // For JSON encoding and decoding

part 'request_data.freezed.dart'; // Part directive for generated Freezed code
part 'request_data.g.dart'; // Part directive for generated JSON serialization code

// Function to parse JSON string into RequestData object
RequestData requestDataFromJson(String str) =>
    RequestData.fromJson(json.decode(str));

// Function to convert RequestData object into JSON string
String requestDataToJson(RequestData data) => json.encode(data.toJson());

// Immutable data class for RequestData using Freezed
@freezed
class RequestData with _$RequestData {
  const factory RequestData({
    @JsonKey(name: "explore_cred") ExploreCred? exploreCred,
    @JsonKey(name: "sections") List<Section>? sections,
  }) = _RequestData;

  // Factory constructor to create RequestData from JSON
  factory RequestData.fromJson(Map<String, dynamic> json) =>
      _$RequestDataFromJson(json);
}

// Immutable data class for ExploreCred using Freezed
@freezed
class ExploreCred with _$ExploreCred {
  const factory ExploreCred({
    @JsonKey(name: "template_properties")
    ExploreCredTemplateProperties? templateProperties,
  }) = _ExploreCred;

  // Factory constructor to create ExploreCred from JSON
  factory ExploreCred.fromJson(Map<String, dynamic> json) =>
      _$ExploreCredFromJson(json);
}

// Immutable data class for ExploreCredTemplateProperties using Freezed
@freezed
class ExploreCredTemplateProperties with _$ExploreCredTemplateProperties {
  const factory ExploreCredTemplateProperties({
    @JsonKey(name: "header") PurpleHeader? header,
  }) = _ExploreCredTemplateProperties;

  // Factory constructor to create ExploreCredTemplateProperties from JSON
  factory ExploreCredTemplateProperties.fromJson(Map<String, dynamic> json) =>
      _$ExploreCredTemplatePropertiesFromJson(json);
}

// Immutable data class for PurpleHeader using Freezed
@freezed
class PurpleHeader with _$PurpleHeader {
  const factory PurpleHeader({
    @JsonKey(name: "identifier") String? identifier,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "subtitle_title") String? subtitleTitle,
  }) = _PurpleHeader;

  // Factory constructor to create PurpleHeader from JSON
  factory PurpleHeader.fromJson(Map<String, dynamic> json) =>
      _$PurpleHeaderFromJson(json);
}

// Immutable data class for Section using Freezed
@freezed
class Section with _$Section {
  const factory Section({
    @JsonKey(name: "template_properties")
    SectionTemplateProperties? templateProperties,
  }) = _Section;

  // Factory constructor to create Section from JSON
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

// Immutable data class for SectionTemplateProperties using Freezed
@freezed
class SectionTemplateProperties with _$SectionTemplateProperties {
  const factory SectionTemplateProperties({
    @JsonKey(name: "header") FluffyHeader? header,
    @JsonKey(name: "items") List<Item>? items,
  }) = _SectionTemplateProperties;

  // Factory constructor to create SectionTemplateProperties from JSON
  factory SectionTemplateProperties.fromJson(Map<String, dynamic> json) =>
      _$SectionTemplatePropertiesFromJson(json);
}

// Immutable data class for FluffyHeader using Freezed
@freezed
class FluffyHeader with _$FluffyHeader {
  const factory FluffyHeader({
    @JsonKey(name: "identifier") String? identifier,
    @JsonKey(name: "title") String? title,
  }) = _FluffyHeader;

  // Factory constructor to create FluffyHeader from JSON
  factory FluffyHeader.fromJson(Map<String, dynamic> json) =>
      _$FluffyHeaderFromJson(json);
}

// Immutable data class for Item using Freezed
@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "identifier") String? identifier,
    @JsonKey(name: "display_data") DisplayData? displayData,
  }) = _Item;

  // Factory constructor to create Item from JSON
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

// Immutable data class for DisplayData using Freezed
@freezed
class DisplayData with _$DisplayData {
  const factory DisplayData({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "icon_url") String? iconUrl,
  }) = _DisplayData;

  // Factory constructor to create DisplayData from JSON
  factory DisplayData.fromJson(Map<String, dynamic> json) =>
      _$DisplayDataFromJson(json);
}
