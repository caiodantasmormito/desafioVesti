

import 'package:json_annotation/json_annotation.dart';

part 'retornoApi.g.dart';

@JsonSerializable()

class retornoApi {
  factory retornoApi.fromJson(Map<String, dynamic> json) => _$retornoApiFromJson(json);
  Map<String, dynamic> toJson() => _$retornoApiToJson(this);
  retornoApi clone() => _$retornoApiFromJson(this.toJson());
    retornoApi({
        this.data,
    });

    List<Datum> ? data;
}


@JsonSerializable()
class Datum {
  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  Map<String, dynamic> toJson() => _$DatumToJson(this);
  Datum clone() => _$DatumFromJson(this.toJson());
    Datum({
        this.id,
        this.name,
        this.price,
        this.photo,
        this.price_Promo,
    });

    String ? id;
    String ? name;
    double ? price;
    String ? photo;
    double ? price_Promo;
}
