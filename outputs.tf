output "db_instances_id" {
  description = "Map of id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_instances_address" {
  description = "Map of address values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.address if v.address != null && length(v.address) > 0 }
}
output "db_instances_allocated_storage" {
  description = "Map of allocated_storage values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.allocated_storage if v.allocated_storage != null }
}
output "db_instances_allow_major_version_upgrade" {
  description = "Map of allow_major_version_upgrade values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.allow_major_version_upgrade if v.allow_major_version_upgrade != null }
}
output "db_instances_apply_immediately" {
  description = "Map of apply_immediately values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.apply_immediately if v.apply_immediately != null }
}
output "db_instances_arn" {
  description = "Map of arn values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "db_instances_auto_minor_version_upgrade" {
  description = "Map of auto_minor_version_upgrade values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.auto_minor_version_upgrade if v.auto_minor_version_upgrade != null }
}
output "db_instances_availability_zone" {
  description = "Map of availability_zone values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "db_instances_backup_retention_period" {
  description = "Map of backup_retention_period values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.backup_retention_period if v.backup_retention_period != null }
}
output "db_instances_backup_target" {
  description = "Map of backup_target values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.backup_target if v.backup_target != null && length(v.backup_target) > 0 }
}
output "db_instances_backup_window" {
  description = "Map of backup_window values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.backup_window if v.backup_window != null && length(v.backup_window) > 0 }
}
output "db_instances_blue_green_update" {
  description = "Map of blue_green_update values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => one(v.blue_green_update) if v.blue_green_update != null && length(v.blue_green_update) > 0 }
}
output "db_instances_ca_cert_identifier" {
  description = "Map of ca_cert_identifier values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.ca_cert_identifier if v.ca_cert_identifier != null && length(v.ca_cert_identifier) > 0 }
}
output "db_instances_character_set_name" {
  description = "Map of character_set_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.character_set_name if v.character_set_name != null && length(v.character_set_name) > 0 }
}
output "db_instances_copy_tags_to_snapshot" {
  description = "Map of copy_tags_to_snapshot values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.copy_tags_to_snapshot if v.copy_tags_to_snapshot != null }
}
output "db_instances_custom_iam_instance_profile" {
  description = "Map of custom_iam_instance_profile values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.custom_iam_instance_profile if v.custom_iam_instance_profile != null && length(v.custom_iam_instance_profile) > 0 }
}
output "db_instances_customer_owned_ip_enabled" {
  description = "Map of customer_owned_ip_enabled values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.customer_owned_ip_enabled if v.customer_owned_ip_enabled != null }
}
output "db_instances_database_insights_mode" {
  description = "Map of database_insights_mode values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.database_insights_mode if v.database_insights_mode != null && length(v.database_insights_mode) > 0 }
}
output "db_instances_db_name" {
  description = "Map of db_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "db_instances_db_subnet_group_name" {
  description = "Map of db_subnet_group_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.db_subnet_group_name if v.db_subnet_group_name != null && length(v.db_subnet_group_name) > 0 }
}
output "db_instances_dedicated_log_volume" {
  description = "Map of dedicated_log_volume values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.dedicated_log_volume if v.dedicated_log_volume != null }
}
output "db_instances_delete_automated_backups" {
  description = "Map of delete_automated_backups values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.delete_automated_backups if v.delete_automated_backups != null }
}
output "db_instances_deletion_protection" {
  description = "Map of deletion_protection values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.deletion_protection if v.deletion_protection != null }
}
output "db_instances_domain" {
  description = "Map of domain values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "db_instances_domain_auth_secret_arn" {
  description = "Map of domain_auth_secret_arn values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain_auth_secret_arn if v.domain_auth_secret_arn != null && length(v.domain_auth_secret_arn) > 0 }
}
output "db_instances_domain_dns_ips" {
  description = "Map of domain_dns_ips values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain_dns_ips if v.domain_dns_ips != null && length(v.domain_dns_ips) > 0 }
}
output "db_instances_domain_fqdn" {
  description = "Map of domain_fqdn values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain_fqdn if v.domain_fqdn != null && length(v.domain_fqdn) > 0 }
}
output "db_instances_domain_iam_role_name" {
  description = "Map of domain_iam_role_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain_iam_role_name if v.domain_iam_role_name != null && length(v.domain_iam_role_name) > 0 }
}
output "db_instances_domain_ou" {
  description = "Map of domain_ou values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.domain_ou if v.domain_ou != null && length(v.domain_ou) > 0 }
}
output "db_instances_enabled_cloudwatch_logs_exports" {
  description = "Map of enabled_cloudwatch_logs_exports values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.enabled_cloudwatch_logs_exports if v.enabled_cloudwatch_logs_exports != null && length(v.enabled_cloudwatch_logs_exports) > 0 }
}
output "db_instances_endpoint" {
  description = "Map of endpoint values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "db_instances_engine" {
  description = "Map of engine values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "db_instances_engine_lifecycle_support" {
  description = "Map of engine_lifecycle_support values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.engine_lifecycle_support if v.engine_lifecycle_support != null && length(v.engine_lifecycle_support) > 0 }
}
output "db_instances_engine_version" {
  description = "Map of engine_version values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "db_instances_engine_version_actual" {
  description = "Map of engine_version_actual values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.engine_version_actual if v.engine_version_actual != null && length(v.engine_version_actual) > 0 }
}
output "db_instances_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "db_instances_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "db_instances_iam_database_authentication_enabled" {
  description = "Map of iam_database_authentication_enabled values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.iam_database_authentication_enabled if v.iam_database_authentication_enabled != null }
}
output "db_instances_identifier" {
  description = "Map of identifier values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "db_instances_identifier_prefix" {
  description = "Map of identifier_prefix values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.identifier_prefix if v.identifier_prefix != null && length(v.identifier_prefix) > 0 }
}
output "db_instances_instance_class" {
  description = "Map of instance_class values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.instance_class if v.instance_class != null && length(v.instance_class) > 0 }
}
output "db_instances_iops" {
  description = "Map of iops values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.iops if v.iops != null }
}
output "db_instances_kms_key_id" {
  description = "Map of kms_key_id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "db_instances_latest_restorable_time" {
  description = "Map of latest_restorable_time values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.latest_restorable_time if v.latest_restorable_time != null && length(v.latest_restorable_time) > 0 }
}
output "db_instances_license_model" {
  description = "Map of license_model values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.license_model if v.license_model != null && length(v.license_model) > 0 }
}
output "db_instances_listener_endpoint" {
  description = "Map of listener_endpoint values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.listener_endpoint if v.listener_endpoint != null && length(v.listener_endpoint) > 0 }
}
output "db_instances_maintenance_window" {
  description = "Map of maintenance_window values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.maintenance_window if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "db_instances_manage_master_user_password" {
  description = "Map of manage_master_user_password values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.manage_master_user_password if v.manage_master_user_password != null }
}
output "db_instances_master_user_secret" {
  description = "Map of master_user_secret values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.master_user_secret if v.master_user_secret != null && length(v.master_user_secret) > 0 }
}
output "db_instances_master_user_secret_kms_key_id" {
  description = "Map of master_user_secret_kms_key_id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.master_user_secret_kms_key_id if v.master_user_secret_kms_key_id != null && length(v.master_user_secret_kms_key_id) > 0 }
}
output "db_instances_max_allocated_storage" {
  description = "Map of max_allocated_storage values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.max_allocated_storage if v.max_allocated_storage != null }
}
output "db_instances_monitoring_interval" {
  description = "Map of monitoring_interval values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.monitoring_interval if v.monitoring_interval != null }
}
output "db_instances_monitoring_role_arn" {
  description = "Map of monitoring_role_arn values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.monitoring_role_arn if v.monitoring_role_arn != null && length(v.monitoring_role_arn) > 0 }
}
output "db_instances_multi_az" {
  description = "Map of multi_az values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.multi_az if v.multi_az != null }
}
output "db_instances_nchar_character_set_name" {
  description = "Map of nchar_character_set_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.nchar_character_set_name if v.nchar_character_set_name != null && length(v.nchar_character_set_name) > 0 }
}
output "db_instances_network_type" {
  description = "Map of network_type values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "db_instances_option_group_name" {
  description = "Map of option_group_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.option_group_name if v.option_group_name != null && length(v.option_group_name) > 0 }
}
output "db_instances_parameter_group_name" {
  description = "Map of parameter_group_name values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.parameter_group_name if v.parameter_group_name != null && length(v.parameter_group_name) > 0 }
}
output "db_instances_password" {
  description = "Map of password values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "db_instances_password_wo" {
  description = "Map of password_wo values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.password_wo if v.password_wo != null && length(v.password_wo) > 0 }
  sensitive   = true
}
output "db_instances_password_wo_version" {
  description = "Map of password_wo_version values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.password_wo_version if v.password_wo_version != null }
}
output "db_instances_performance_insights_enabled" {
  description = "Map of performance_insights_enabled values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.performance_insights_enabled if v.performance_insights_enabled != null }
}
output "db_instances_performance_insights_kms_key_id" {
  description = "Map of performance_insights_kms_key_id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.performance_insights_kms_key_id if v.performance_insights_kms_key_id != null && length(v.performance_insights_kms_key_id) > 0 }
}
output "db_instances_performance_insights_retention_period" {
  description = "Map of performance_insights_retention_period values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.performance_insights_retention_period if v.performance_insights_retention_period != null }
}
output "db_instances_port" {
  description = "Map of port values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.port if v.port != null }
}
output "db_instances_publicly_accessible" {
  description = "Map of publicly_accessible values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.publicly_accessible if v.publicly_accessible != null }
}
output "db_instances_region" {
  description = "Map of region values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.region if v.region != null && length(v.region) > 0 }
}
output "db_instances_replica_mode" {
  description = "Map of replica_mode values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.replica_mode if v.replica_mode != null && length(v.replica_mode) > 0 }
}
output "db_instances_replicas" {
  description = "Map of replicas values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.replicas if v.replicas != null && length(v.replicas) > 0 }
}
output "db_instances_replicate_source_db" {
  description = "Map of replicate_source_db values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.replicate_source_db if v.replicate_source_db != null && length(v.replicate_source_db) > 0 }
}
output "db_instances_resource_id" {
  description = "Map of resource_id values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "db_instances_restore_to_point_in_time" {
  description = "Map of restore_to_point_in_time values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => one(v.restore_to_point_in_time) if v.restore_to_point_in_time != null && length(v.restore_to_point_in_time) > 0 }
}
output "db_instances_s3_import" {
  description = "Map of s3_import values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => one(v.s3_import) if v.s3_import != null && length(v.s3_import) > 0 }
}
output "db_instances_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "db_instances_snapshot_identifier" {
  description = "Map of snapshot_identifier values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.snapshot_identifier if v.snapshot_identifier != null && length(v.snapshot_identifier) > 0 }
}
output "db_instances_status" {
  description = "Map of status values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.status if v.status != null && length(v.status) > 0 }
}
output "db_instances_storage_encrypted" {
  description = "Map of storage_encrypted values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.storage_encrypted if v.storage_encrypted != null }
}
output "db_instances_storage_throughput" {
  description = "Map of storage_throughput values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.storage_throughput if v.storage_throughput != null }
}
output "db_instances_storage_type" {
  description = "Map of storage_type values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "db_instances_tags" {
  description = "Map of tags values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "db_instances_tags_all" {
  description = "Map of tags_all values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "db_instances_timezone" {
  description = "Map of timezone values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "db_instances_upgrade_rollout_order" {
  description = "Map of upgrade_rollout_order values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.upgrade_rollout_order if v.upgrade_rollout_order != null && length(v.upgrade_rollout_order) > 0 }
}
output "db_instances_upgrade_storage_config" {
  description = "Map of upgrade_storage_config values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.upgrade_storage_config if v.upgrade_storage_config != null }
}
output "db_instances_username" {
  description = "Map of username values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.username if v.username != null && length(v.username) > 0 }
}
output "db_instances_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all db_instances, keyed the same as var.db_instances"
  value       = { for k, v in aws_db_instance.db_instances : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

