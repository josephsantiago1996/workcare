import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../sign_in/controller/sign_in_controller.dart';
import 'activity/activity.dart';
import 'auth/auth_args.dart';
import 'bid/bid.dart';
import 'notification/notification.dart';
import 'partner/partner.dart';
import 'review/review.dart';
import 'service/service.dart';
import 'voucher/voucher.dart';

part 'client.g.dart';

final clientProvider = Provider<Client>((ref) {
  final dio = Dio();

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ),
  );

  return Client(dio, baseUrl: 'https://www.google.com');
});

@RestApi()
abstract class Client {
  factory Client(Dio dio, {String? baseUrl}) = _Client;

  // Account
  @POST('/sign-in')
  Future<CurrentUser> signIn(@Body() SignInAuthArgs args);

  @POST('/sign-in/apple')
  Future<CurrentUser> signInWithApple(@Body() SignInWithAppleAuthArgs args);

  @POST('/sign-in/facebook')
  Future<CurrentUser> signInWithFacebook(@Body() SignInWithFacebookAuthArgs args);

  @POST('/sign-in/google')
  Future<CurrentUser> signInWithGoogle(@Body() SignInWithGoogleAuthArgs args);

  @POST('/sign-in/token')
  Future<CurrentUser> signInWithToken(@Body() SignInWithTokenAuthArgs args);

  @POST('/sign-out')
  Future<CurrentUser> signOut();

  // Activity
  @GET('/activities')
  Future<List<Activity>> findActivity();

  // Service
  @GET('/services')
  Future<List<Service>> findService();

  // Voucher
  @GET('/vouchers')
  Future<List<Voucher>> findVoucher();

  // Partner
  @GET('/partners')
  Future<List<Partner>> findPartner();

  // Review
  @GET('/reviews')
  Future<List<Review>> findReview();

  // Notification
  @GET('/notifications')
  Future<List<Notification>> findNotification();

  // Bid
  @GET('/activities/:activityId/bids')
  Future<List<Bid>> findBid(
    @Path() String activityId,
  );
}
