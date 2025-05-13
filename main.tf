resource "null_resource" "previous" {}


resource "time_sleep" "wait_50_seconds" {
  depends_on = [null_resource.previous]
  create_duration = "50s"

}

resource "null_resource" "next" {

  depends_on = [time_sleep.wait_50_seconds]
}

resource "null_resource" "example" {}

