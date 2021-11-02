// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retornoApi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

retornoApi _$retornoApiFromJson(Map<String, dynamic> json) {
  return retornoApi(
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$retornoApiToJson(retornoApi instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return Datum(
    id: json['id'] as String?,
    name: json['name'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    photo: json['photo'] as String?,
    price_Promo: (json['price_Promo'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'photo': instance.photo,
      'price_Promo': instance.price_Promo,
    };
