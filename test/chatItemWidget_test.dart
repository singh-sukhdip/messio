
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/widgets/ChatItemWidget.dart';

void main(){
   MaterialApp app=MaterialApp(
    home: Scaffold(
      body:   ChatItemWidget(0),
    ),
  );
  testWidgets('ChatItemWidget UI test', (WidgetTester tester)async{
    await tester.pumpWidget(app);

    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Row), findsNWidgets(2));
    expect(find.byType(Text), findsNWidgets(2));
  });
}