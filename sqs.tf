resource "aws_sqs_queue" "main_queue" {
  name = "main-queue"
  
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dlq.arn
    maxReceiveCount     = 5
  })

  tags = {
    Name = "main-queue"
  }
}

resource "aws_sqs_queue" "dlq" {
  name = "dlq"

  tags = {
    Name = "dlq"
  }
}
