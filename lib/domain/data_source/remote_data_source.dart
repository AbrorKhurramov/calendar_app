import 'package:calendar_app/domain/entity/response/colors_response.dart';
import 'package:calendar_app/domain/entity/response/month_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:repo_annotation/repo_annotation.dart';
import '../../data/provider/api_client.dart';
import '../../data/provider/response_handler.dart';
import '../../data/provider/server_error.dart';


part 'remote_data_source.g.dart';

@subGen
mixin RemoteDataSource {
  Future<ResponseHandler<MonthResponse>> getMonthSpecs();
  Future<ResponseHandler<List<ColorsResponse>>> getColors();


}
