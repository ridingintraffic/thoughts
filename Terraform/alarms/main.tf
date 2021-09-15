resource "aws_cloudwatch_metric_alarm" "stepFunctionsFailedDetail" {
  alarm_name          = "${var.something.name}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "ExecutionsFailed"
  dimensions = {
    StateMachineArn = "${var.something.arn}",

  }
  namespace          = "AWS/States"
  period             = "300"
  statistic          = "Sum"
  threshold          = var.something.failureThreshold
  alarm_description  = "it died"
  actions_enabled    = "true"
  alarm_actions      = ["arn:aws:sns:us-east-1:123123123123:alert-sns-topic"]
  treat_missing_data = "notBreaching"
  tags = {
    "routing"       = "${var.something.owner}"
    "slack_channel" = "alerts"
    "alarmType"     = "Exceptions"
    "alertLevel"    = "CRITICAL",
    "Name"          = "Step Functions Failed Prod",
    "playbook"      = "playbooks/sfn-execution-failure.md",

  }

}

