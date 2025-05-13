/*resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo This command will execute only when the configuration changes"
  }
 triggers = {
  always_run = "${timestamp()}"
 }
}*/

resource "null_resource" "previous" {}


resource "time_sleep" "wait_300_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "300s"

}

resource "null_resource" "next" {

  depends_on = [time_sleep.wait_300_seconds]
}
