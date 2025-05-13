resource "null_resource" "previous" {}

resource "time_sleep" "wait_60_seconds" {
  depends_on = [null_resource.previous]
  create_duration = "60s"
}

resource "null_resource" "next" {
depends_on = [time_sleep.wait_60_seconds]
}

