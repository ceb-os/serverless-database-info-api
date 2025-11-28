resource "aws_sns_topic" "rds_alarms_topic" {
    name = "my-sns-rds-alarms"
}

resource "aws_sns_topic_subscription" "email_subscription" {
    topic_arn = aws_sns_topic.rds_alarms_topic.arn
    protocol = "email"
    endpoint = var.sns-email
}