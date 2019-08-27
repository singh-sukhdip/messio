
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/main.dart';

void main(){
  testWidgets('ChatListWidget UI test', (WidgetTester tester) async{
    await tester.pumpWidget(Messio());

    expect(find.byType(ListView), findsOneWidget);
  });
}