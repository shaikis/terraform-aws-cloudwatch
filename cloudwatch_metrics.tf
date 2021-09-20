#---------------------------------------
# Configure cloudwatch metrics
#--------------------------------------
resource "aws_cloudwatch_metric_alarm" "cloudwatch_alarm" {
  for_each                  = length(keys(var.dimentions)) >0 ? var.dimentions : {}
  alarm_name                = var.cloudwatch_alarm_name
  comparison_operator       = var.cloudwatch_alarm_comparison_operator
  evaluation_periods        = var.cloudwatch_alarm_evaluation_periods
  metric_name               = var.cloudwatch_alarm_metric_name
  namespace                 = var.cloudwatch_alarm_namespace
  period                    = var.cloudwatch_alarm_period
  statistic                 = var.cloudwatch_alarm_statistic
  threshold                 = var.cloudwatch_alarm_threshold
  alarm_description         = var.alarm_description
  dimentions                = each.value
  actions_enabled           = var.actions_enabled
  alarm_actions             = va.alarm_actions_details
}