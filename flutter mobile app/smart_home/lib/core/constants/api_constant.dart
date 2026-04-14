class ApiConstant {
  static const String baseUrl = "http://192.168.1.193:3000";
  static const String espProvisionBaseUrl = "http://192.168.4.1";
  static const String refreshToken = "/auth/refresh";
  static const String signupEndpoint = "/auth/register";
  static const String loginEndpoint = "/auth/login";
  static const String createInvitationEndpoint = "/invitations";
  static const String acceptInvitationEndpoint = "/invitations/accept";
  static const String getInvitationsEndpoint = "/invitations/my";
  static const String addHomeEndpoint = "/homes";
  static const String getHomesEndpoint = "/homes/my";
  static const String createRoomEndpoint = "/rooms";
  static const String getRoomsEndpoint = "/rooms/my";
  static const String registerDeviceEndpoint = "/devices/register";
  static const String getDevicesEndpoint = "/devices/home";
  static const String getDevicesByRoomIdEndpoint = "/devices/room";
  static const String getDeviceTelemetryEndpoint =
      "/devices/{deviceId}/telemetry";
  static const String getDeviceCurrentStateEndpoint =
      "/devices/{deviceId}/current-state";
  static const String controlDeviceEndpoint = "/devices/{deviceId}/control";
}
