variable "name" {
  type        = string
  description = "Resource Group name"
}
variable "location" {
  type        = string
  description = "Location"
}
variable "tags" {
  type        = map(string)
  description = "Tags"
}