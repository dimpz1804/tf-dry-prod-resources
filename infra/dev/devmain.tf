resource "null_resource" "example-main" {

  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo This specific command will execute every time during apply for the dev environment"

  }
}
