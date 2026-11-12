import '/backend/schema/structs/index.dart';

class StripeWebhookNeuralCloudFunctionCallResponse {
  StripeWebhookNeuralCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}

class CreateStripeCheckoutCloudFunctionCallResponse {
  CreateStripeCheckoutCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
    this.resultAsString,
    this.data,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
  String? resultAsString;
  dynamic data;
}
