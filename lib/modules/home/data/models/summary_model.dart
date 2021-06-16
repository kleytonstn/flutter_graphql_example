import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'summary_model.g.dart';

@JsonSerializable()
class SummaryModel extends Equatable {
  final int id;
  final double cdi;
  final double gain;
  final bool hasHistory;
  final double profitability;
  final int total;

  SummaryModel({
    this.id,
    this.cdi,
    this.gain,
    this.hasHistory,
    this.profitability,
    this.total,
  });

  factory SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryModelToJson(this);

  @override
  List<Object> get props => [
        id,
        cdi,
        gain,
        hasHistory,
        profitability,
        total,
      ];
}
