variable "sample_string" {
     default = "Hello World"
}

variable "sample_number"{
default = 100
}

variable "sample_boolean"{
    default=true
}

variable "sample_list"{
    default = [
        100,
        "hello",
        true,
        123
    ]
}

variable "sample_dict"{
    default={
       number1=100
       string1="hello"
       number2=123
       boolean= true



}
}

variable "env"{}
variable "auto_num1"{}