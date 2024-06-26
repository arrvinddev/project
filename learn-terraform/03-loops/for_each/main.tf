
resource "null_resource" "fruits" {

    for_each = var.fruits

    provisioner "local-exec" {
      command = "echo Fruit Name - ${each.key} - ${each.value}"
    # command = "echo Fruit Name - ${length(var.fruits)}"

}
}


resource "null_resource" "fruits1" {

    for_each = var.fruits1

    provisioner "local-exec" {
      command = "echo Fruit Name - ${each.key} - ${each.value["count"]}"
    # command = "echo Fruit Name - ${length(var.fruits)}"

}
}



variable "fruits1" {
    default = {
      apple = {
      name = "apple" 
      count = 10
      }
      orange  = {
      name = "orange" 
      count = 200
      }
      banana  = {
      name = "banana" 
      count = 10
      }
    }
}

variable "fruits" {
    default = {
        apple = 10
        banana = 100
        oranges =200
        
        
    }
}


#for each list 
variable "vegetables" {
        default = ["carrot","capsicum"]
}


resource "null_resource" "vegetables" {

    for_each = toset(var.vegetables)

    provisioner "local-exec" {
      command = "echo Vegetable Name - ${each.key}"

}
}