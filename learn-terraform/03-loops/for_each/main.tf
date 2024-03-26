
resource "null_resource" "fruits" {

    for_each = var.fruits

    provisioner "local-exec" {
      command = "echo Fruit Name - ${each.key}"
    # command = "echo Fruit Name - ${length(var.fruits)}"

}
}



# variable "fruits" {
#     default = {
#       apple = {
#       name = "apple" 
#       count = 10
#       }
#       orange  = {
#       name = "orange" 
#       count = 200
#       }
#       banana  = {
#       name = "banana" 
#       count = 10
#       }
#     }
# }

variable "fruits" {
    default = {
        apple = 10
        banana = 100
        oranges =200
        
        
    }
}