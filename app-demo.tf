resource "helm_release" "python-app-demo" {
  name             = "python"
  chart            = "./helm"
  version          = "lts"
  namespace        = var.namespace
  create_namespace = false
  replace          = false
  recreate_pods    = true
  lint             = true
  wait_for_jobs    = true
  values           = [templatefile("${path.module}/values.yaml", {})]
}