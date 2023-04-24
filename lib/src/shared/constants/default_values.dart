import 'package:client_ao/src/shared/constants/enums.dart';
import 'package:client_ao/src/shared/models/auth/pop_up.model.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

const authMethodsOptions = [
  PopupMenuModel(label: 'API Key Auth', displayName: 'API Key', method: AuthMethod.apiKeyAuth),
  PopupMenuModel(label: 'Bearer Token', displayName: 'Bearer', method: AuthMethod.bearerToken),
  PopupMenuModel(label: 'Basic Auth', displayName: 'Basic', method: AuthMethod.basic),
  PopupMenuModel(label: 'No Authentication', displayName: 'Auth', method: AuthMethod.noAuthentication),
];

const collectionMenuOptions = [
  PopupMenuModel(label: 'Add request', displayName: 'Add request', method: CollectionPopUpItem.addRequest),
  PopupMenuModel(label: 'Delete', displayName: 'Delete', method: CollectionPopUpItem.delete),
];

const defaultResponseCodeReasons = {
  100: 'Continue',
  101: 'Switching Protocols',
  102: 'Processing',
  103: 'Early Hints',
  200: 'OK',
  201: 'Created',
  202: 'Accepted',
  203: 'Non-Authoritative Information',
  204: 'No Content',
  205: 'Reset Content',
  206: 'Partial Content',
  207: 'Multi-Status',
  208: 'Already Reported',
  226: 'IM Used',
  300: 'Multiple Choices',
  301: 'Moved Permanently',
  302: 'Found',
  303: 'See Other',
  304: 'Not Modified',
  305: 'Use Proxy',
  306: 'Switch Proxy',
  307: 'Temporary Redirect',
  308: 'Permanent Redirect',
  400: 'Bad Request',
  401: 'Unauthorized',
  402: 'Payment Required',
  403: 'Forbidden',
  404: 'Not Found',
  405: 'Method Not Allowed',
  406: 'Not Acceptable',
  407: 'Proxy Authentication Required',
  408: 'Request Timeout',
  409: 'Conflict',
  410: 'Gone',
  411: 'Length Required',
  412: 'Precondition Failed',
  413: 'Payload Too Large',
  414: 'URI Too Long',
  415: 'Unsupported Media Type',
  416: 'Range Not Satisfiable',
  417: 'Expectation Failed',
  418: "I'm a Teapot",
  421: 'Misdirected Request',
  422: 'Unprocessable Entity',
  423: 'Locked',
  424: 'Failed Dependency',
  425: 'Too Early',
  426: 'Upgrade Required',
  428: 'Precondition Required',
  429: 'Too Many Requests',
  431: 'Request Header Fields Too Large',
  451: 'Unavailable For Legal Reasons',
  500: 'Internal Server Error',
  501: 'Not Implemented',
  502: 'Bad Gateway',
  503: 'Service Unavailable',
  504: 'Gateway Timeout',
  505: 'HTTP Version Not Supported',
  506: 'Variant Also Negotiates',
  507: 'Insufficient Storage',
  508: 'Loop Detected',
  510: 'Not Extended',
  511: 'Network Authentication Required',
};

/// HighlightView theme
final highlightViewTheme = {
  'root': TextStyle(color: Colors.green, backgroundColor: Colors.grey.shade900),
  'comment': const TextStyle(color: Color(0xff999988), fontStyle: FontStyle.italic),
  'quote': const TextStyle(color: Color(0xff999988), fontStyle: FontStyle.italic),
  'keyword': const TextStyle(color: Color(0xff333333), fontWeight: FontWeight.bold),
  'selector-tag': const TextStyle(color: Color(0xff333333), fontWeight: FontWeight.bold),
  'subst': const TextStyle(color: Color(0xff333333), fontWeight: FontWeight.normal),
  'number': const TextStyle(color: Color(0xff008080)),
  'literal': const TextStyle(color: Color(0xff008080)),
  'variable': const TextStyle(color: Color(0xff008080)),
  'template-variable': const TextStyle(color: Color(0xff008080)),
  'string': const TextStyle(color: Color.fromARGB(255, 231, 215, 38)),
  'doctag': const TextStyle(color: Color(0xffdd1144)),
  'title': const TextStyle(color: Color(0xff990000), fontWeight: FontWeight.bold),
  'section': const TextStyle(color: Color(0xff990000), fontWeight: FontWeight.bold),
  'selector-id': const TextStyle(color: Color(0xff990000), fontWeight: FontWeight.bold),
  'type': const TextStyle(color: Color(0xff445588), fontWeight: FontWeight.bold),
  'tag': const TextStyle(color: Color(0xff000080), fontWeight: FontWeight.normal),
  'name': const TextStyle(color: Color(0xff000080), fontWeight: FontWeight.normal),
  'attribute': const TextStyle(color: Color(0xff000080), fontWeight: FontWeight.normal),
  'regexp': const TextStyle(color: Color(0xff009926)),
  'link': const TextStyle(color: Color(0xff009926)),
  'symbol': const TextStyle(color: Color(0xff990073)),
  'bullet': const TextStyle(color: Color(0xff990073)),
  'built_in': const TextStyle(color: Color(0xff0086b3)),
  'builtin-name': const TextStyle(color: Color(0xff0086b3)),
  'meta': const TextStyle(color: Color(0xff999999), fontWeight: FontWeight.bold),
  'deletion': const TextStyle(backgroundColor: Color(0xffffdddd)),
  'addition': const TextStyle(backgroundColor: Color(0xffddffdd)),
  'emphasis': const TextStyle(fontStyle: FontStyle.italic),
  'strong': const TextStyle(fontWeight: FontWeight.bold),
};
