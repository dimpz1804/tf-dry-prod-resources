resource "null_resource" "example-main" {

  triggers = {
    always_run = timestamp()

  }
  provisioner "local-exec" {
    command = "echo This command will execute every time during apply as triggers  are used for the prod environment"

  }
}
