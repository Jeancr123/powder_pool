import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:powder_pool/models/domain/json.dart';
import 'package:powder_pool/models/domain/user_model.dart';

class ApiClient {
  static const _tokenKey = 'jwt_token';
  String token = '';
  static const String baseUrl = 'https://powder-pool.com';

  ApiClient();

  Future<void> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final token = data['token'];
      this.token = token;
      // await _storage.write(key: _tokenKey, value: token);
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }

  Future<void> signUp(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final data = json.decode(response.body);
      final token = data['token'];
      this.token = token;
      // await _storage.write(key: _tokenKey, value: token);
    } else {
      throw Exception('Sign up failed: ${response.body}');
    }
  }

  Future<String?> _getValidToken() async {
    return this.token;
    // final token = await _storage.read(key: _tokenKey);
    // if (token != null && !JwtDecoder.isExpired(token)) {
    //   return token;
    // }
    // // Optionally, implement refresh token logic here.
    // return null;
  }

  Future<Json> authenticatedGet(String endpoint) async {
    final token = await _getValidToken();
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': token,
    };

    var response = await http.get(
      Uri.parse('$baseUrl$endpoint'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return {'data': data};
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic> data) async {
    final token = await _getValidToken();
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
    return await http.post(
      Uri.parse('$baseUrl$endpoint'),
      headers: headers,
      body: json.encode(data),
    );
  }

  Future<void> logout() async {
    // await _storage.delete(key: _tokenKey);
  }

  Future<bool> isAuthenticated() async {
    // final token = await _storage.read(key: _tokenKey);
    return token != null && !JwtDecoder.isExpired(token);
  }
}
