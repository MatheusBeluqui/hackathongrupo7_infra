variable "repo" {
  description = "Nome do repositório no Artifact Registry"
}


#variable "db_password" {
 # description = "Senha para o banco de dados"
  #validation {
   # condition     = can(regex("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$", var.db_password))
    #error_message = "A senha do banco de dados deve conter pelo menos 8 caracteres, incluindo pelo menos uma letra e um número."
 # }
#}