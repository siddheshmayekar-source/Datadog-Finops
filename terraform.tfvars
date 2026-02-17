#Recommended Enterprise Standard
# environment = "prod"
# environment = "dev"
# environment = "test"
# environment = "uat"
# environment = "stage"
# environment = "dr"





subscriptions = {

  sub1 = {
    subscription_id = "8d2803dc-a5cc-47d1-a104-ed1646abda69"
    resource_groups = {

      faf-rg = {
        required_tags = {
          environment = "test"
          costcenter  = "XYZ"
          application = "FAF"
          owner       = "FAF Team"
          managed_by  = "terraform"
        }
      },

      Datadog-RG = {
        required_tags = {
          environment = "test"
          costcenter  = "Finops"
          application = "DataDog"
          owner       = "Siddesh Mayekar"
          managed_by  = "terraform"
        }
      },

      PAO = {
        required_tags = {
          environment = "test"
          costcenter  = "ooo"
          application = "PAO"
          owner       = "Amol Patil"
          managed_by  = "terraform"
        }
      }
    }
  }
}






# resource_group_tags = {

#   "faf-rg" = {
#     environment = "test"
#     costcenter  = "XYZ"
#     application = "A"
#     owner       = "FAF Team"
#     managed_by  = "terraform"
#   }

#   "Datadog-RG" = {
#     environment = "test"
#     costcenter  = "finops"
#     application = "B"
#     owner       = "Siddesh Mayekar"
#     managed_by  = "terraform"
#   }
#   "pao-poc" = {
#     environment = "test"
#     costcenter  = "ooo"
#     application = "PAO"
#     owner       = "Amol Patil"
#     managed_by  = "terraform"
#   }
# }
