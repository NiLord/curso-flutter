import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf/api'));

  Future<Message> getAnswer() async {

    final response = await _dio.get('/');

    throw UnimplementedError();
  }
}
