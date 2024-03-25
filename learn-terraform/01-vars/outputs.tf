output "sample_string"{
    value = var.sample_string

}


output "sample_string1"{
    value = "Value of sample_string = ${var.sample_string}"

}

output "sample_list"{
    value = var.sample_list
}

output "sample_dict_num1"{
    value = var.sample_dict["number1"]
}

output "sample_dict_bool"{
    value = var.sample_dict["boolean"]
}

output "env"{
    value = var.env
}

output "auto_num1" {
  value =var.auto_num1
}

output "sample1"{
    value = var.sample1
}

