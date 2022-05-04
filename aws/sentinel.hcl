module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
} 

policy "less-than-100-month" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-ami-owners" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-ec2-instance-type" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-availability-zones" {
  enforcement_level = "soft-mandatory"
}
