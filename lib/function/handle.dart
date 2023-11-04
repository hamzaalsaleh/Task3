import 'package:the_city/classes/statusrequest.dart';

handling(response) {
  if (response is StatuseRequest) {
    return response;
  } else {
    return StatuseRequest.success;
  }
}
