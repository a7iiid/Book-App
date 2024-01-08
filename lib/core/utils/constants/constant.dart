import 'package:book_app/core/models/book/book.dart';
import 'package:book_app/Featuers/home/data/repo/home_repo_implement.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const primryColor = Color(0xff100B20);

const TransitionDuretion = Duration(microseconds: 500);
var homerepo = HomeRepoImplement(ApiService(Dio()));
final SearchTextController = TextEditingController();
BookModel? bookdetails;
