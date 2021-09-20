variable "dimensions" {
  type        = any
  default     = null
}

variable "alarm_actions_details" {
    type = list
    default = null
}

variable "cloudwatch_alarm_name" {}
variable "cloudwatch_alarm_comparison_operator" {}
variable "cloudwatch_alarm_evaluation_periods" {}
variable "cloudwatch_alarm_metric_name" {}
variable "cloudwatch_alarm_namespace" {}
variable "cloudwatch_alarm_period" {}
variable "cloudwatch_alarm_statistic" {}
variable "cloudwatch_alarm_threshold" {}
variable "alarm_description" {}
variable "actions_enabled" {}
