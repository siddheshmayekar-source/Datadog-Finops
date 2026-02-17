
variable "subscriptions" {
  description = "Subscriptions and their required tags"

  type = map(object({
    subscription_id = string

    resource_groups = map(object({
      required_tags = map(string)
    }))
  }))
}
