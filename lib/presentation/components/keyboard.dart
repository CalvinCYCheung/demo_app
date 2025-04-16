import 'package:flutter/material.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton.text({
    super.key,
    required this.text,
    this.child,
    required this.onPressed,
    this.icon,
    required this.isEnabled,
  });

  const KeyboardButton.icon({
    super.key,
    required this.icon,
    this.child,
    required this.onPressed,
    required this.text,
    required this.isEnabled,
  });

  final bool isEnabled;
  final IconData? icon;
  final String text;
  final Widget? child;
  final ValueChanged<String> onPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isEnabled ? colorScheme.primary : colorScheme.secondary,
        disabledBackgroundColor: colorScheme.secondary,
        shape: RoundedRectangleBorder(),
      ),
      statesController: WidgetStatesController({WidgetState.disabled}),
      onPressed: () => isEnabled ? onPressed.call(text) : null,
      child:
          icon != null
              ? Icon(icon, size: 26, color: colorScheme.onPrimary)
              : Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onPrimary,
                ),
                textScaler: TextScaler.linear(1.4),
              ),
    );
  }
}
