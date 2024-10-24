import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'answering_model.dart';
export 'answering_model.dart';

class AnsweringWidget extends StatefulWidget {
  const AnsweringWidget({super.key});

  @override
  State<AnsweringWidget> createState() => _AnsweringWidgetState();
}

class _AnsweringWidgetState extends State<AnsweringWidget>
    with TickerProviderStateMixin {
  late AnsweringModel _model;

  var hasIconTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnsweringModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 2000.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(2.0, 2.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(31.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: FaIcon(
            FontAwesomeIcons.solidCommentDots,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ).animateOnActionTrigger(
              animationsMap['iconOnActionTriggerAnimation']!,
              hasBeenTriggered: hasIconTriggered),
        ),
      ),
    );
  }
}
