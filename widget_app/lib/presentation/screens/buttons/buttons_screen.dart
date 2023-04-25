import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const screenName = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(
          Icons.arrow_back_rounded,
        ),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Elevated Button ',
              ),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text(
                'Elevated Disabled ',
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.access_alarm_outlined,
              ),
              label: const Text(
                'Elevated Icon ',
              ),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.accessibility_new,
              ),
              label: const Text('Filled Button Icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.terminal,
              ),
              label: const Text('Outlined Button Icon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
              ),
              label: const Text('Text Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.app_registration_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.app_registration_outlined,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  colors.primary,
                ),
                iconColor: const MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
