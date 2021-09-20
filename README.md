# terraform-aws-cloudwatch

```
This can be used for any kind of "name spaces" ,just add dimentaions and namespaces to this module.
Usage 
module "cloud_watch_alarm" {
    source = "git@github.com:shaikis/terraform-aws-cloudwatch.git"
    cloudwatch_alarm_name                   = "testing"
    cloudwatch_alarm_comparison_operator    = "GreaterThanOrEqualToThreshold"
    cloudwatch_alarm_evaluation_periods     = "2"
    cloudwatch_alarm_metric_name            = "CPUUtilization"
    cloudwatch_alarm_namespace              = "AWS/EC2"
    cloudwatch_alarm_period                 = "120"
    cloudwatch_alarm_statistic              = "Average"
    cloudwatch_alarm_threshold              = "80"
    alarm_description                       = "Metric to monitor ec2 CPU utilization"
    actions_enabled                         = "true|false"
    alarm_actions_details                   = ["arn details/auto scaling group details here"]
    
    dimentions = {
        AutoScalingGroupName = "asg-12345"
        ImageId      = "ami-1234"
        InstanceType = "t2.micro"
    }
}
```
