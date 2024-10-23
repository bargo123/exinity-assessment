// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_pricing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeResponseImpl _$$TradeResponseImplFromJson(Map<String, dynamic> json) =>
    _$TradeResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => SymbolData.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TradeResponseImplToJson(_$TradeResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
    };

_$SymbolDataImpl _$$SymbolDataImplFromJson(Map<String, dynamic> json) =>
    _$SymbolDataImpl(
      c: (json['c'] as num?)?.toDouble(),
      p: (json['p'] as num).toDouble(),
      s: json['s'] as String,
      t: (json['t'] as num).toInt(),
      v: (json['v'] as num).toInt(),
    );

Map<String, dynamic> _$$SymbolDataImplToJson(_$SymbolDataImpl instance) =>
    <String, dynamic>{
      'c': instance.c,
      'p': instance.p,
      's': instance.s,
      't': instance.t,
      'v': instance.v,
    };
