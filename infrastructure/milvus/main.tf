resource "helm_release" "milvus" {
  name       = "milvus-release" 
  repository  = "https://milvus-io.github.io/milvus-helm/"

  chart = "milvus/milvus"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
}
