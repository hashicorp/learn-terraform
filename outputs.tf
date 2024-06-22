output "instance_self_link" {
  value = google_compute_instance.vm_instance.self_link
}

output "instance_name" {
  value = google_compute_instance.vm_instance.name
}
