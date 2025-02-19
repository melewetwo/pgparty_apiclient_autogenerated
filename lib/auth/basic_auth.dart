import 'dart:async';
import 'dart:convert';
import 'package:pgparty_apiclient/auth/auth.dart';
import 'package:dio/dio.dart';

class BasicAuthInfo {
    final String username;
    final String password;

    const BasicAuthInfo(this.username, this.password);
}

class BasicAuthInterceptor extends AuthInterceptor {
    Map<String, BasicAuthInfo> authInfo = {};

    @override
    Future onRequest(RequestOptions options) {
        final metadataAuthInfo = getAuthInfo(options, 'basic');
        for (var info in metadataAuthInfo) {
            final authName = info['name'];
            final basicAuthInfo = authInfo[authName];
            if(basicAuthInfo != null) {
                String basicAuth = 'Basic ' + base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'));
                options.headers['Authorization'] = basicAuth;
                break;
            }
        }

        return super.onRequest(options);
    }
}
