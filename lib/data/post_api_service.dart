import 'package:chopper/chopper.dart';
import 'package:flutter_demos/utils/mobile_data_interceptor.dart';

// Source code generation in Dart works by creating a new file which contains a "companion class".
// In order for the source gen to know which file to generate and which files are "linked", you need to use the part keyword.
part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  // Query parameters are specified the same way as @Path
  // but obviously with a @Query annotation
  Future<Response> getPost(@Path('id') int id);

  // Put & Patch requests are specified the same way - they must contain the @Body
  @Post()
  Future<Response> postPost(
    @Body() Map<String, dynamic> body,
  );

  static PostApiService create() {
    final client = ChopperClient(
      // The first part of the URL is now here
      baseUrl: 'https://jsonplaceholder.typicode.com',

      // Interceptors run just before/after the request is made
      // They can be of 2 type :
      //    1. Request   (Before)
      //    2. Response  (After)
      interceptors: [

        // We have to pass a list of interceptors
        // There are some commonly used interceptors that come packed with Chopper Package

        // This is used to pass headers, this will be passed now in all request made using this chopper client
        HeadersInterceptor({
          'Cache-Control': 'no-cache',
        }),

        HttpLoggingInterceptor(), // logs messages in console
        CurlInterceptor(), // Shows the curl request being made in console


        // We can make custom anonymous Interceptors as well
        // IMP : Interceptors have to always return a request/response
        (Request request) async {
          if (request.method == HttpMethod.Post) {
            chopperLogger.info('Performed a POST request');
          }
          return request;
        },
        (Response response) async {
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }
          return response;
        },

        MobileDataInterceptor()
      ],
      services: [
        // The generated implementation
        _$PostApiService(),
      ],
      // Converts data to & from JSON and adds the application/json header.
      converter: JsonConverter(),
    );

    // The generated class with the ChopperClient passed in
    return _$PostApiService(client);
  }
}
