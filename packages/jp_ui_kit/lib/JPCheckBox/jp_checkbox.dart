import 'package:flutter/material.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_colors.dart';
import 'package:jp_ui_kit/JPCommonFiles/jp_orientation.dart';
import 'package:jp_ui_kit/JPText/jp_fontweight.dart';
import 'package:jp_ui_kit/jp_ui_kit.dart';

class JPCheckbox extends StatefulWidget {
  /// A list of strings that describes each Checkbox. Each label must be distinct.
  final List<String>? labels;

  /// Specifies which boxes to be automatically check.
  /// Every element must match a label.
  /// This is useful for clearing all selections (set it to []).
  /// If this is non-null, then the user must handle updating this list; otherwise, the state of the CheckboxGroup won't change.
  final List<String>? checked;

  /// Specifies which boxes should be disabled.
  /// If this is non-null, no boxes will be disabled.
  /// The strings passed to this must match the labels.
  final List<String>? disabled;

  /// Called when the value of the CheckboxGroup changes.
  final void Function(bool isChecked, String label, int index)? onChange;

  /// Called when the user makes a selection.
  final void Function(List<String> selected)? onSelected;

  /// Specifies the orientation to display elements.
  final JPOrientation? orientation;

  /// Called when needed to build a CheckboxGroup element.
  final Widget Function(Checkbox checkBox, JPText label, int index)?
      itemBuilder;

  //THESE FIELDS ARE FOR THE CHECKBOX

  /// The color to use when a Checkbox is checked.
  final Color? activeColor;

  /// The color to use for the check icon when a Checkbox is checked.
  final Color? checkColor;

  /// If true the checkbox's value can be true, false, or null.
  final bool? tristate;

  //SPACING STUFF

  /// Empty space in which to inset the CheckboxGroup.
  final EdgeInsetsGeometry? padding;

  /// Empty space surrounding the CheckboxGroup.
  final EdgeInsetsGeometry? margin;

  const JPCheckbox({
    Key? key,
    required this.labels,
    this.checked,
    this.disabled,
    this.onChange,
    this.onSelected,
    this.activeColor = JPColor.primary, //defaults to toggleableActiveColor,
    this.checkColor = JPColor.white,
    this.tristate = false,
    this.orientation = JPOrientation.vertical,
    this.itemBuilder,
    this.padding = const EdgeInsets.all(0.0),
    this.margin = const EdgeInsets.all(0.0),
  }) : super(key: key);

  @override
  _JPCheckboxState createState() => _JPCheckboxState();
}

class _JPCheckboxState extends State<JPCheckbox> {
  List<String> _selected = [];

  @override
  void initState() {
    super.initState();

    //set the selected to the checked (if not null)
    _selected = widget.checked ?? [];
  }

  @override
  Widget build(BuildContext context) {
    //set the selected to the checked (if not null)
    if (widget.checked != null) {
      _selected = [];
      _selected.addAll(widget.checked!); //use add all to prevent a shallow copy
    }

    List<Widget> content = [];

    for (int i = 0; i < widget.labels!.length; i++) {
      Checkbox cb = Checkbox(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        value: _selected.contains(widget.labels!.elementAt(i)),
        onChanged: (widget.disabled != null &&
                widget.disabled!.contains(widget.labels!.elementAt(i)))
            ? null
            : (isChecked) => onChanged(isChecked!, i),
        checkColor: widget.checkColor,
        activeColor: widget.activeColor,
        tristate: widget.tristate!,
      );

      JPText t = JPText(
        text: widget.labels!.elementAt(i),
        textColor: (widget.disabled != null &&
                widget.disabled!.contains(widget.labels!.elementAt(i)))
            ? Theme.of(context).disabledColor
            : JPColor.black,
      );

      //use user defined method to build
      if (widget.itemBuilder != null) {
        content.add(widget.itemBuilder!(cb, t, i));
      } else {
        //otherwise, use predefined method of building
        content.add(
          Row(children: <Widget>[
            cb,
            const SizedBox(width: 12.0),
            t,
            const SizedBox(width: 12.0),
          ]),
        );
      }
    }

    return Container(
      padding: widget.padding,
      margin: widget.margin,
      child: widget.orientation == JPOrientation.vertical
          ? Column(children: content)
          : Row(
              children: content,
            ),
    );
  }

  void onChanged(bool isChecked, int i) {
    bool isAlreadyContained = _selected.contains(widget.labels!.elementAt(i));

    if (mounted) {
      setState(() {
        if (!isChecked && isAlreadyContained) {
          _selected.remove(widget.labels!.elementAt(i));
        } else if (isChecked && !isAlreadyContained) {
          _selected.add(widget.labels!.elementAt(i));
        }

        if (widget.onChange != null)
          widget.onChange!(isChecked, widget.labels!.elementAt(i), i);
        if (widget.onSelected != null) widget.onSelected!(_selected);
      });
    }
  }
}
