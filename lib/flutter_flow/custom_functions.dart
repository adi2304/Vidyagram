import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<dynamic> prepareChatHistory(
  List<dynamic> chatHistory,
  String newChat,
) {
  chatHistory.add({"role": "user", "content": newChat.trim()});
  return chatHistory;
}

List<dynamic> refreshChatHistory(
  List<dynamic> chatHistory,
  dynamic chatResponse,
) {
  chatHistory.add(chatResponse);
  return chatHistory;
}
