
resource "null_resource" "fruits" {

    for_each = var.fruits

    provisioner "local-exec" {
      command = "echo Fruit Name - $(var.fruits[each.key]) - ${var.fruits[each.value]}"
    # command = "echo Fruit Name - ${length(var.fruits)}"

}
}



variable "fruits" {
    default = {
      apple = 10
      orange = 200
      banana = 100
    }
}