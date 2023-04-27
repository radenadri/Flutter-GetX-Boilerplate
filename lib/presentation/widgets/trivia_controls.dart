import 'package:flutter/material.dart';
import 'package:flutter_getx_number_trivia/presentation/controllers/number_trivia_controller.dart';
import 'package:get/get.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key? key,
  }) : super(key: key);

  @override
  TriviaControlsState createState() => TriviaControlsState();
}

class TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  final numberTriviaController = Get.find<NumberTriviaController>();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    inputStr = controller.text;
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            dispatchConcrete();
          },
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: dispatchConcrete,
                child: const Text('Search'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: dispatchRandom,
                child: const Text('Get random trivia'),
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchConcrete() {
    controller.clear();
    numberTriviaController.getTriviaForNumber(inputStr);
  }

  void dispatchRandom() {
    controller.clear();
    numberTriviaController.getRandomTrivia();
  }
}
