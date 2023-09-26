class WebService {
  static const String _baseUrl =
      "http://103.15.67.180/developer_7/star_gate/RestApi/";
  static String baseUrl = _baseUrl;
  static Auth auth = Auth();
  static MetaData metaData = MetaData();
  static EDeal eDeal = EDeal();
  static VDeal vDeal = VDeal();
}

class Auth {
  static const String _auth = WebService._baseUrl;
  String login = "${_auth}login";
  String forgetPassword = "${_auth}forgotPassword";
  String verifyOtp = "${_auth}verifyOtp";
  String resetPassword = "${_auth}resetPassword";
  String getProfile = "${WebService._baseUrl}user/profile";
  String updateProfile = "${WebService.baseUrl}user/update-profile";
}

class MetaData {
  String state = "${WebService._baseUrl}states";
  String city = "${WebService._baseUrl}cities";
}

class EDeal {
  static const String _deal = "${WebService._baseUrl}deal/";
  String create = '${_deal}create';
  String openDeal = "${_deal}open-deals";
  String bidById = "${_deal}bids-by-deal-id";
  String lockedBidByExecutive = "${_deal}lock-bid-by-executive";
  String lockedBid = "${_deal}executive-locked-bids-list";
  String winningBid = "${_deal}executive-winig-bids-list";
  String paymentList = "${_deal}executive-payment-list";
  String vehiclePurchased = "${_deal}executive-saled-out-vehicle-list";
  String expireDeal = "${_deal}executive-expired-deals";
}

class VDeal {
  static const String _deal = "${WebService._baseUrl}deal/";
  static const String _bid = "${WebService._baseUrl}bid/";
  String openDeal = "${_deal}vendor-open-deals";
  String runningDeal = "${_bid}vendor-running-bidas";
  String closedDeal = "${_bid}vendor-closed-bid-list";
  String placeBid = "$_bid/create";
  String lockedBid = "${_bid}vendor-locked-bids";
  String winningBid = "${_bid}vendor-winig-bids-list";
  String payAdvanceAmount = "${_bid}pay-advanced-amount-by-vendor";
  String payRemainingAmount = "${_bid}pay-remaining-amout-by-vendor";
  String paymentList = "${_bid}vendor-payment-list";
  String vehiclePurchased = "${_bid}vendor-purchased-vehicle-list";
  String editBid = "${_bid}vendor-update-bid";
  String expireBid = "${_bid}vendor-expired-bid";
  String expireDeal = "${_deal}expired-deal";
}
