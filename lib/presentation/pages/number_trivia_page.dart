import 'package:flutter/material.dart';
import 'package:flutter_getx_number_trivia/presentation/widgets/loading_widget.dart';
import 'package:flutter_getx_number_trivia/presentation/widgets/message_display.dart';
import 'package:flutter_getx_number_trivia/presentation/widgets/trivia_controls.dart';
import 'package:flutter_getx_number_trivia/presentation/widgets/trivia_display.dart';
import 'package:get/get.dart';

import '../controllers/number_trivia_controller.dart';

class NumberTriviaPage extends GetView<NumberTriviaController> {
  const NumberTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            // Top half
            GetBuilder<NumberTriviaController>(
              builder: (controller) => _handleView(controller),
            ),
            const SizedBox(height: 20),
            // Bottom half
            const TriviaControls()
          ],
        ),
      ),
    );
  }

  Widget _handleView(NumberTriviaController controller) {
    return controller.obx(
      (state) => TriviaDisplay(numberTrivia: state!),
      onEmpty: const MessageDisplay(message: 'Start searching!'),
      onLoading: const LoadingWidget(),
      onError: (error) => MessageDisplay(message: error ?? ''),
    );
  }
}
