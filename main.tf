resource "aws_db_instance" "db_instances" {
  for_each = var.db_instances

  instance_class                        = each.value.instance_class
  maintenance_window                    = each.value.maintenance_window
  manage_master_user_password           = each.value.manage_master_user_password
  master_user_secret_kms_key_id         = each.value.master_user_secret_kms_key_id
  max_allocated_storage                 = each.value.max_allocated_storage
  monitoring_interval                   = each.value.monitoring_interval
  monitoring_role_arn                   = each.value.monitoring_role_arn
  multi_az                              = each.value.multi_az
  nchar_character_set_name              = each.value.nchar_character_set_name
  network_type                          = each.value.network_type
  option_group_name                     = each.value.option_group_name
  parameter_group_name                  = each.value.parameter_group_name
  password                              = each.value.password
  password_wo                           = each.value.password_wo
  password_wo_version                   = each.value.password_wo_version
  performance_insights_enabled          = each.value.performance_insights_enabled
  performance_insights_kms_key_id       = each.value.performance_insights_kms_key_id
  performance_insights_retention_period = each.value.performance_insights_retention_period
  upgrade_storage_config                = each.value.upgrade_storage_config
  timezone                              = each.value.timezone
  tags_all                              = each.value.tags_all
  tags                                  = each.value.tags
  storage_type                          = each.value.storage_type
  storage_throughput                    = each.value.storage_throughput
  license_model                         = each.value.license_model
  storage_encrypted                     = each.value.storage_encrypted
  skip_final_snapshot                   = each.value.skip_final_snapshot
  replicate_source_db                   = each.value.replicate_source_db
  replica_mode                          = each.value.replica_mode
  region                                = each.value.region
  publicly_accessible                   = each.value.publicly_accessible
  port                                  = each.value.port
  snapshot_identifier                   = each.value.snapshot_identifier
  kms_key_id                            = each.value.kms_key_id
  iops                                  = each.value.iops
  identifier_prefix                     = each.value.identifier_prefix
  database_insights_mode                = each.value.database_insights_mode
  customer_owned_ip_enabled             = each.value.customer_owned_ip_enabled
  custom_iam_instance_profile           = each.value.custom_iam_instance_profile
  copy_tags_to_snapshot                 = each.value.copy_tags_to_snapshot
  character_set_name                    = each.value.character_set_name
  ca_cert_identifier                    = each.value.ca_cert_identifier
  db_name                               = each.value.db_name
  backup_window                         = each.value.backup_window
  backup_retention_period               = each.value.backup_retention_period
  availability_zone                     = each.value.availability_zone
  auto_minor_version_upgrade            = each.value.auto_minor_version_upgrade
  apply_immediately                     = each.value.apply_immediately
  allow_major_version_upgrade           = each.value.allow_major_version_upgrade
  allocated_storage                     = each.value.allocated_storage
  backup_target                         = each.value.backup_target
  username                              = each.value.username
  db_subnet_group_name                  = each.value.db_subnet_group_name
  delete_automated_backups              = each.value.delete_automated_backups
  identifier                            = each.value.identifier
  iam_database_authentication_enabled   = each.value.iam_database_authentication_enabled
  final_snapshot_identifier             = each.value.final_snapshot_identifier
  engine_version                        = each.value.engine_version
  engine_lifecycle_support              = each.value.engine_lifecycle_support
  engine                                = each.value.engine
  dedicated_log_volume                  = each.value.dedicated_log_volume
  enabled_cloudwatch_logs_exports       = each.value.enabled_cloudwatch_logs_exports
  domain_iam_role_name                  = each.value.domain_iam_role_name
  domain_fqdn                           = each.value.domain_fqdn
  domain_dns_ips                        = each.value.domain_dns_ips
  domain_auth_secret_arn                = each.value.domain_auth_secret_arn
  domain                                = each.value.domain
  deletion_protection                   = each.value.deletion_protection
  domain_ou                             = each.value.domain_ou
  vpc_security_group_ids                = each.value.vpc_security_group_ids

  dynamic "blue_green_update" {
    for_each = each.value.blue_green_update != null ? [each.value.blue_green_update] : []
    content {
      enabled = blue_green_update.value.enabled
    }
  }

  dynamic "restore_to_point_in_time" {
    for_each = each.value.restore_to_point_in_time != null ? [each.value.restore_to_point_in_time] : []
    content {
      restore_time                             = restore_to_point_in_time.value.restore_time
      source_db_instance_automated_backups_arn = restore_to_point_in_time.value.source_db_instance_automated_backups_arn
      source_db_instance_identifier            = restore_to_point_in_time.value.source_db_instance_identifier
      source_dbi_resource_id                   = restore_to_point_in_time.value.source_dbi_resource_id
      use_latest_restorable_time               = restore_to_point_in_time.value.use_latest_restorable_time
    }
  }

  dynamic "s3_import" {
    for_each = each.value.s3_import != null ? [each.value.s3_import] : []
    content {
      bucket_name           = s3_import.value.bucket_name
      bucket_prefix         = s3_import.value.bucket_prefix
      ingestion_role        = s3_import.value.ingestion_role
      source_engine         = s3_import.value.source_engine
      source_engine_version = s3_import.value.source_engine_version
    }
  }
}

