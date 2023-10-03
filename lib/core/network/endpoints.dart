class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://rickandmortyapi.com/api/';

//* Durations
  static const Duration receiveTimeout = Duration(seconds: 20);
  static const Duration connectionTimeout = Duration(seconds: 20);

  //* Types
  static const String connectionType = 'application/json';

  // * SupaBase

  static const String projectURL = 'https://sxuclowdknhqihowidss.supabase.co';
  static const String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN4dWNsb3dka25ocWlob3dpZHNzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTYyMjc5MDMsImV4cCI6MjAxMTgwMzkwM30.ByLA9Vb2XygJSHeKN3-d6YkNsfvRs7B28nmsYNd-RTs';

  //* API
  static const String jsonPHD = 'https://jsonplaceholder.typicode.com/posts';
}
