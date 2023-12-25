module "argocd_prod" {
  source           = "./terraform_argocd_eks"
  eks_cluster_name = "kubernetes"
  chart_version    = "5.46.2"
}

# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_prod]
# module "argocd_prod_root" {
#   source             = "./terraform_argocd_root_eks"
#   eks_cluster_name   = "demo-prod"
#   git_source_path    = "demo-prod/applications"
#   git_source_repoURL = "git@github.com:adv4000/argocd.git"
# }
