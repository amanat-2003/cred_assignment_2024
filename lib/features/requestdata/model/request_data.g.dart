// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDataImpl _$$RequestDataImplFromJson(Map<String, dynamic> json) =>
    _$RequestDataImpl(
      exploreCred: json['explore_cred'] == null
          ? null
          : ExploreCred.fromJson(json['explore_cred'] as Map<String, dynamic>),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestDataImplToJson(_$RequestDataImpl instance) =>
    <String, dynamic>{
      'explore_cred': instance.exploreCred,
      'sections': instance.sections,
    };

_$ExploreCredImpl _$$ExploreCredImplFromJson(Map<String, dynamic> json) =>
    _$ExploreCredImpl(
      templateProperties: json['template_properties'] == null
          ? null
          : ExploreCredTemplateProperties.fromJson(
              json['template_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExploreCredImplToJson(_$ExploreCredImpl instance) =>
    <String, dynamic>{
      'template_properties': instance.templateProperties,
    };

_$ExploreCredTemplatePropertiesImpl
    _$$ExploreCredTemplatePropertiesImplFromJson(Map<String, dynamic> json) =>
        _$ExploreCredTemplatePropertiesImpl(
          header: json['header'] == null
              ? null
              : PurpleHeader.fromJson(json['header'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ExploreCredTemplatePropertiesImplToJson(
        _$ExploreCredTemplatePropertiesImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
    };

_$PurpleHeaderImpl _$$PurpleHeaderImplFromJson(Map<String, dynamic> json) =>
    _$PurpleHeaderImpl(
      identifier: json['identifier'] as String?,
      title: json['title'] as String?,
      subtitleTitle: json['subtitle_title'] as String?,
    );

Map<String, dynamic> _$$PurpleHeaderImplToJson(_$PurpleHeaderImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'title': instance.title,
      'subtitle_title': instance.subtitleTitle,
    };

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      templateProperties: json['template_properties'] == null
          ? null
          : SectionTemplateProperties.fromJson(
              json['template_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'template_properties': instance.templateProperties,
    };

_$SectionTemplatePropertiesImpl _$$SectionTemplatePropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$SectionTemplatePropertiesImpl(
      header: json['header'] == null
          ? null
          : FluffyHeader.fromJson(json['header'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionTemplatePropertiesImplToJson(
        _$SectionTemplatePropertiesImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
      'items': instance.items,
    };

_$FluffyHeaderImpl _$$FluffyHeaderImplFromJson(Map<String, dynamic> json) =>
    _$FluffyHeaderImpl(
      identifier: json['identifier'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$FluffyHeaderImplToJson(_$FluffyHeaderImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'title': instance.title,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      identifier: json['identifier'] as String?,
      displayData: json['display_data'] == null
          ? null
          : DisplayData.fromJson(json['display_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'display_data': instance.displayData,
    };

_$DisplayDataImpl _$$DisplayDataImplFromJson(Map<String, dynamic> json) =>
    _$DisplayDataImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      iconUrl: json['icon_url'] as String?,
    );

Map<String, dynamic> _$$DisplayDataImplToJson(_$DisplayDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'icon_url': instance.iconUrl,
    };
