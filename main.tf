resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo This command will execute only when the configuration changes"
  }
 triggers = {
  always_run = "${timestamp()}"
 }
}
