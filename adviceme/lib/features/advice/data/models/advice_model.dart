import '../../domain/entities/advice.dart';

class AdviceModel extends Advice {
  AdviceModel({required String text}) : super(text);

  factory AdviceModel.fromJson(Map<String, dynamic> json) {
    return AdviceModel(text: json['advice']);
  }
}
