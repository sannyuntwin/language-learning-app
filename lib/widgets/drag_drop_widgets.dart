import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class DraggableWord extends StatelessWidget {
  final String word;
  final bool isUsed;
  final bool isCorrect;
  final bool showResult;
  final VoidCallback? onTap;

  const DraggableWord({
    super.key,
    required this.word,
    this.isUsed = false,
    this.isCorrect = false,
    this.showResult = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    Color textColor;

    if (showResult) {
      if (isCorrect) {
        backgroundColor = AppTheme.successColor.withOpacity(0.1);
        borderColor = AppTheme.successColor;
        textColor = AppTheme.successColor;
      } else {
        backgroundColor = Colors.red.shade100;
        borderColor = Colors.red;
        textColor = Colors.red.shade800;
      }
    } else if (isUsed) {
      backgroundColor = Colors.grey.shade300;
      borderColor = Colors.grey.shade400;
      textColor = Colors.grey.shade600;
    } else {
      backgroundColor = Colors.blue.shade50;
      borderColor = Colors.blue.shade400;
      textColor = Colors.blue.shade800;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppTheme.spaceS, 
            vertical: AppTheme.spaceXS
          ),
          margin: const EdgeInsets.all(AppTheme.spaceXS),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Text(
            word,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class DropTargetSlot extends StatefulWidget {
  final String? expectedWord;
  final bool isEmpty;
  final bool showResult;
  final bool isCorrect;
  final Function(String) onDrop;
  final Function() onClear;

  const DropTargetSlot({
    super.key,
    this.expectedWord,
    required this.isEmpty,
    required this.showResult,
    required this.isCorrect,
    required this.onDrop,
    required this.onClear,
  });

  @override
  State<DropTargetSlot> createState() => _DropTargetSlotState();
}

class _DropTargetSlotState extends State<DropTargetSlot> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;

    if (widget.showResult) {
      if (widget.isCorrect) {
        backgroundColor = AppTheme.successColor.withOpacity(0.1);
        borderColor = AppTheme.successColor;
      } else {
        backgroundColor = Colors.red.shade100;
        borderColor = Colors.red;
      }
    } else if (_isHovering) {
      backgroundColor = AppTheme.primaryGreen.withValues(alpha: 0.05);
      borderColor = AppTheme.primaryGreen;
    } else if (widget.isEmpty) {
      backgroundColor = Colors.grey.shade50;
      borderColor = Colors.grey.shade300;
    } else {
      backgroundColor = Colors.yellow.shade100;
      borderColor = Colors.yellow.shade400;
    }

    return DragTarget<String>(
      onWillAcceptWithDetails: (details) {
        setState(() {
          _isHovering = true;
        });
        return true;
      },
      onLeave: (data) {
        setState(() {
          _isHovering = false;
        });
      },
      onAcceptWithDetails: (details) {
        setState(() {
          _isHovering = false;
          widget.onDrop(details.data);
        });
      },
      builder: (context, candidateData, rejectedData) {
        return Container(
          height: 48,
          width: 100,
          margin: const EdgeInsets.all(AppTheme.spaceXS),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
            border: Border.all(
              color: borderColor,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          child: widget.isEmpty
              ? Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                )
              : GestureDetector(
                  onTap: widget.showResult ? null : widget.onClear,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppTheme.spaceXS),
                      child: Text(
                        widget.expectedWord ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: widget.showResult
                              ? (widget.isCorrect 
                                  ? AppTheme.successColor 
                                  : Colors.red.shade800)
                              : Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}

class DraggableWordTile extends StatelessWidget {
  final String word;
  final bool isUsed;
  final bool isCorrect;
  final bool showResult;

  const DraggableWordTile({
    super.key,
    required this.word,
    this.isUsed = false,
    this.isCorrect = false,
    this.showResult = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;

    if (showResult) {
      if (isCorrect) {
        backgroundColor = AppTheme.successColor.withOpacity(0.1);
        borderColor = AppTheme.successColor;
      } else {
        backgroundColor = Colors.red.shade100;
        borderColor = Colors.red;
      }
    } else if (isUsed) {
      backgroundColor = Colors.grey.shade300;
      borderColor = Colors.grey.shade400;
    } else {
      backgroundColor = Colors.white;
      borderColor = Colors.blue.shade400;
    }

    return Draggable<String>(
      data: word,
      feedback: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppTheme.spaceS, 
            vertical: AppTheme.spaceXS
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
            border: Border.all(color: borderColor, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            word,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: showResult ? Colors.black87 : Colors.blue.shade800,
            ),
          ),
        ),
      ),
      childWhenDragging: Opacity(
        opacity: 0.3,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppTheme.spaceS, 
            vertical: AppTheme.spaceXS
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Text(
            word,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppTheme.spaceS, 
          vertical: AppTheme.spaceXS
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: AppTheme.spaceXS, 
          vertical: AppTheme.spaceXS
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Text(
          word,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: showResult
                ? (isCorrect 
                    ? AppTheme.successColor 
                    : Colors.red.shade800)
                : Colors.blue.shade800,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Enhanced utility widget for drag and drop containers
class DragDropContainer extends StatelessWidget {
  final Widget child;
  final bool isHighlighted;
  final String? label;

  const DragDropContainer({
    super.key,
    required this.child,
    this.isHighlighted = false,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spaceS),
      decoration: BoxDecoration(
        color: isHighlighted 
            ? AppTheme.primaryGreen.withValues(alpha: 0.05)
            : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
        border: Border.all(
          color: isHighlighted 
              ? AppTheme.primaryGreen
              : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null) ...[
            Text(
              label!,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: isHighlighted 
                    ? AppTheme.primaryGreen
                    : Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: AppTheme.spaceS),
          ],
          child,
        ],
      ),
    );
  }
}

// Word chips for better visual hierarchy
class WordChip extends StatelessWidget {
  final String word;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback? onTap;
  final bool showResult;

  const WordChip({
    super.key,
    required this.word,
    this.isSelected = false,
    this.isCorrect = false,
    this.onTap,
    this.showResult = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    Color textColor;

    if (showResult) {
      if (isCorrect) {
        backgroundColor = AppTheme.successColor.withOpacity(0.1);
        borderColor = AppTheme.successColor;
        textColor = AppTheme.successColor;
      } else {
        backgroundColor = Colors.red.shade100;
        borderColor = Colors.red;
        textColor = Colors.red.shade800;
      }
    } else if (isSelected) {
      backgroundColor = AppTheme.primaryGreen.withValues(alpha: 0.1);
      borderColor = AppTheme.primaryGreen;
      textColor = AppTheme.primaryGreen;
    } else {
      backgroundColor = Colors.white;
      borderColor = Colors.grey.shade300;
      textColor = Colors.grey.shade700;
    }

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppTheme.spaceM, 
          vertical: AppTheme.spaceS
        ),
        margin: const EdgeInsets.all(AppTheme.spaceXS),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppTheme.buttonRadius),
          border: Border.all(color: borderColor, width: 2),
          boxShadow: showResult ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ] : null,
        ),
        child: Text(
          word,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
