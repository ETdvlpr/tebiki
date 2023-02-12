import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:tebiki/src/services/api/dio_client.dart';
import 'package:tebiki/src/services/api/network_exceptions.dart';
import 'package:tebiki/src/utils/constants.dart';
import 'package:tebiki/src/utils/enums/common_enums.dart';

class ApiClient {
  late DioClient dioClient;
  final Dio dio;
  final Connectivity connectivity;
  Map<String, dynamic> defaultParams = {};

  ApiClient({
    required this.dio,
    required this.connectivity,
  }) {
    dioClient = DioClient(dio, connectivity: connectivity);
  }

  Future<Map<String, dynamic>> request({
    RequestType requestType = RequestType.get,
    bool requiresAuth = true,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    try {
      if (requiresAuth) await dioClient.addAuthorizationInterceptor();

      log('path: $kBaseUrl$path');
      log('sent payload: $data');
      dynamic response;
      switch (requestType) {
        case RequestType.get:
          response =
              await dioClient.get(path, queryParameters: queryParameters);
          break;
        case RequestType.post:
          response = await dioClient.post(path, data: data);
          break;
        case RequestType.patch:
          response = await dioClient.patch(path, data: data);
          break;
        case RequestType.delete:
          response = await dioClient.delete(path);
          break;
        case RequestType.put:
          response = await dioClient.put(path, data: data);
          break;
        default:
          throw "Request type not found.";
      }

      log('raw response: $response');
      return (response is String) ? jsonDecode(response) : response;
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      log('Api Error: $errorMessage');
      var response = e.response?.data;
      if (response == null ||
          (response is String && response.contains("html"))) {
        return Future.error({
          'statusCode': e.response?.statusCode,
          'error': 'Api Error',
          'message': errorMessage,
        });
      }
      return Future.error(
        (response is String) ? jsonDecode(response) : response,
      );
    }
  }

  // sends form data for single or multiple files
  Future<Map<String, dynamic>> sendFormData({
    required String fileFieldName,
    required Map<String, dynamic> formPayload,
    required String path,
    File? file,
    List<File>? files,
  }) async {
    try {
      // For multiple files case
      if (files?.isNotEmpty ?? false) {
        List<MultipartFile> multipartFiles = [];
        for (File file in files!) {
          String? mimeType = lookupMimeType(file.path);
          List<String> splitMimeTypes = mimeType?.split('/') ?? [];

          final MultipartFile multipartFile = MultipartFile.fromFileSync(
              file.path,
              contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1]));

          multipartFiles.add(multipartFile);
        }

        formPayload[fileFieldName] = multipartFiles;
      } else if (file?.path.isNotEmpty ?? false) {
        // case for single file form data
        String? mimeType = lookupMimeType(file!.path);
        List<String> splitMimeTypes = mimeType?.split('/') ?? [];

        final MultipartFile multipartFile = MultipartFile.fromFileSync(
            file.path,
            contentType: MediaType(splitMimeTypes[0], splitMimeTypes[1]));
        formPayload[fileFieldName] = multipartFile;
      }

      formPayload.addAll(defaultParams);
      final accessToken = GetStorage().read('accessToken');
      formPayload['access_token'] = accessToken;
      log('form payload here: $formPayload');
      var formData = FormData.fromMap(formPayload);

      final response = await dioClient.post(path, data: formData);
      // Iterable l = json.decode(jsonEncode(response));
      // return List<Files>.from(l.map((model) => Files.fromJson(model)).toList());

      return (response is String) ? jsonDecode(response) : response;
    } on DioError catch (e) {
      final errorMessage = NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e));
      log('Api Error: $errorMessage');
      var response = e.response?.data;
      if (response == null ||
          (response is String && response.contains("html"))) {
        return Future.error({
          'statusCode': e.response?.statusCode,
          'error': 'Api Error',
          'message': errorMessage,
        });
      }
      return Future.error(
        (response is String) ? jsonDecode(response) : response,
      );
    }
  }
}
