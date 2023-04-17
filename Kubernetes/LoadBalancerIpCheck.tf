#Data source output
variable "compartment_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaa4orlnjmr4z4eaxhrfyxbjm6lgttkfs2hmt2f7x5rrdjvf5ojfebq"
}
data "oci_load_balancer_load_balancers" "OKE_load_balancers" {
    #Required
    compartment_id = var.compartment_ocid
}
output "LoadBalanacer" {
  value = data.oci_load_balancer_load_balancers.OKE_load_balancers
}