resource "ovirt_vm" "virtual_machine" {
  name                      = var.vm_name
  comment                   = var.comment
  cluster_id                = var.cluster_id
  template_id               = tolist(data.ovirt_templates.vm_template.templates)[0].id
  clone                     = var.clone
  cpu_cores                 = var.cpu_cores
  cpu_sockets               = var.cpu_sockets
  cpu_threads               = var.cpu_threads
  memory                    = var.memory * 1024 * 1024 * 1024
  maximum_memory            = var.maximum_memory * 1024 * 1024 * 1024
  vm_type                   = var.type
  placement_policy_affinity = var.placement_policy_affinity
  placement_policy_host_ids = var.placement_policy_host_ids
  os_type                   = var.os_type

  provisioner "local-exec" {
    when = create
    command = "ansible-playbook ${path.module}/ansible/playbook_installOvirtDependencies.yml"
    on_failure = fail
  }

  provisioner "local-exec" {
    when = create
    command = "ansible-playbook ${path.module}/ansible/playbook_ovirtVMInitialization.yml"
    on_failure = fail
  }
}

data "ovirt_templates" "vm_template" {
  name          = var.template_name
  fail_on_empty = true
}

resource "ovirt_vm_start" "test" {
  vm_id = ovirt_vm.virtual_machine.id
  stop_behavior = "stop"
}
