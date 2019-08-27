import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/widgets/ChatAppBar.dart';

void main(){
   MaterialApp app=MaterialApp(
    home: Scaffold(
      body:  ChatAppBar(),
    ),
  );
  testWidgets('ChatAppBar UI test', (WidgetTester tester) async{
    await tester.pumpWidget(app);

    expect(find.text('Sukhdip Singh'), findsOneWidget);
    expect(find.text('@sukhdip'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}