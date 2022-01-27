mock "tfplan/v2" {
  module {
    source = "mocks/mock-tfplan-v2.sentinel"
  }
}

module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
} 

policy "allowed-eks-version" {
  enforcement_level = "soft-mandatory"
}

policy "allowed-helm-release-version" {
  enforcement_level = "soft-mandatory"
}

policy "require-dns-support-for-vpc" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-eks-node-group-size" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-ingress-sg-rules-cidr-blocks" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-ingress-sg-rule-ssh" {
    enforcement_level = "soft-mandatory"
}