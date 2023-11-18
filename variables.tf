variable "repo" {
  description = "Nome do repositório no Artifact Registry"
}

variable "project_name" {
  description = "Nome do projeto na GCP"
}

variable "region" {
  description = "Região da GCP para implantação"
}

variable "backend_image" {
  description = "URL da imagem de contêiner para o backend"
  validation {
    condition     = can(regex("gcr.io/.+/.+:+", var.backend_image))
    error_message = "A imagem do contêiner do backend deve ser uma URL válida do Google Container Registry."
  }
}

variable "frontend_image" {
  description = "URL da imagem de contêiner para o frontend"
  validation {
    condition     = can(regex("gcr.io/.+/.+:+", var.frontend_image))
    error_message = "A imagem do contêiner do frontend deve ser uma URL válida do Google Container Registry."
  }
}

#variable "db_password" {
 # description = "Senha para o banco de dados"
  #validation {
   # condition     = can(regex("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$", var.db_password))
    #error_message = "A senha do banco de dados deve conter pelo menos 8 caracteres, incluindo pelo menos uma letra e um número."
 # }
#}