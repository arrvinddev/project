variable "sample_string" {
     default = "Hello World"
}

output "sample_string"{
      value= var.sample_string
}

output "sample_string1"{
    value = "Value of sample_string = ${var.sample_string}"

}