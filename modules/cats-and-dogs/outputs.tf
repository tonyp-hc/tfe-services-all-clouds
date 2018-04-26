output "cats_and_dogs_address" {
  value = "${var.service_account_from_yaml == 0 ?
  kubernetes_service.cats-and-dogs-frontend.load_balancer_ingress.0.ip : coalesce("http://cats-and-dogs-frontend.${data.terraform_remote_state.k8s_cluster.master_public_ip}.xip.io", "")}"
}
