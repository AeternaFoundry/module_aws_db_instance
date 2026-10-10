variable "db_instances" {
  description = <<EOT
Map of db_instances, attributes below
Required:
    - instance_class
Optional:
    - allocated_storage
    - allow_major_version_upgrade
    - apply_immediately
    - auto_minor_version_upgrade
    - availability_zone
    - backup_retention_period
    - backup_target
    - backup_window
    - ca_cert_identifier
    - character_set_name
    - copy_tags_to_snapshot
    - custom_iam_instance_profile
    - customer_owned_ip_enabled
    - database_insights_mode
    - db_name
    - db_subnet_group_name
    - dedicated_log_volume
    - delete_automated_backups
    - deletion_protection
    - domain
    - domain_auth_secret_arn
    - domain_dns_ips
    - domain_fqdn
    - domain_iam_role_name
    - domain_ou
    - enabled_cloudwatch_logs_exports
    - engine
    - engine_lifecycle_support
    - engine_version
    - final_snapshot_identifier
    - iam_database_authentication_enabled
    - identifier
    - identifier_prefix
    - iops
    - kms_key_id
    - license_model
    - maintenance_window
    - manage_master_user_password
    - master_user_secret_kms_key_id
    - max_allocated_storage
    - monitoring_interval
    - monitoring_role_arn
    - multi_az
    - nchar_character_set_name
    - network_type
    - option_group_name
    - parameter_group_name
    - password
    - password_wo
    - password_wo_version
    - performance_insights_enabled
    - performance_insights_kms_key_id
    - performance_insights_retention_period
    - port
    - publicly_accessible
    - region
    - replica_mode
    - replicate_source_db
    - skip_final_snapshot
    - snapshot_identifier
    - storage_encrypted
    - storage_throughput
    - storage_type
    - tags
    - tags_all
    - timezone
    - upgrade_storage_config
    - username
    - vpc_security_group_ids
    - blue_green_update (block):
        - enabled (optional)
    - restore_to_point_in_time (block):
        - restore_time (optional)
        - source_db_instance_automated_backups_arn (optional)
        - source_db_instance_identifier (optional)
        - source_dbi_resource_id (optional)
        - use_latest_restorable_time (optional)
    - s3_import (block):
        - bucket_name (required)
        - bucket_prefix (optional)
        - ingestion_role (required)
        - source_engine (required)
        - source_engine_version (required)
EOT

  type = map(object({
    instance_class                        = string
    maintenance_window                    = optional(string)
    manage_master_user_password           = optional(bool)
    master_user_secret_kms_key_id         = optional(string)
    max_allocated_storage                 = optional(number)
    monitoring_interval                   = optional(number)
    monitoring_role_arn                   = optional(string)
    multi_az                              = optional(bool)
    nchar_character_set_name              = optional(string)
    network_type                          = optional(string)
    option_group_name                     = optional(string)
    parameter_group_name                  = optional(string)
    password                              = optional(string)
    password_wo                           = optional(string)
    password_wo_version                   = optional(number)
    performance_insights_enabled          = optional(bool)
    performance_insights_kms_key_id       = optional(string)
    performance_insights_retention_period = optional(number)
    upgrade_storage_config                = optional(bool)
    timezone                              = optional(string)
    tags_all                              = optional(map(string))
    tags                                  = optional(map(string))
    storage_type                          = optional(string)
    storage_throughput                    = optional(number)
    license_model                         = optional(string)
    storage_encrypted                     = optional(bool)
    skip_final_snapshot                   = optional(bool)
    replicate_source_db                   = optional(string)
    replica_mode                          = optional(string)
    region                                = optional(string)
    publicly_accessible                   = optional(bool)
    port                                  = optional(number)
    snapshot_identifier                   = optional(string)
    kms_key_id                            = optional(string)
    iops                                  = optional(number)
    identifier_prefix                     = optional(string)
    database_insights_mode                = optional(string)
    customer_owned_ip_enabled             = optional(bool)
    custom_iam_instance_profile           = optional(string)
    copy_tags_to_snapshot                 = optional(bool)
    character_set_name                    = optional(string)
    ca_cert_identifier                    = optional(string)
    db_name                               = optional(string)
    backup_window                         = optional(string)
    backup_retention_period               = optional(number)
    availability_zone                     = optional(string)
    auto_minor_version_upgrade            = optional(bool)
    apply_immediately                     = optional(bool)
    allow_major_version_upgrade           = optional(bool)
    allocated_storage                     = optional(number)
    backup_target                         = optional(string)
    username                              = optional(string)
    db_subnet_group_name                  = optional(string)
    delete_automated_backups              = optional(bool)
    identifier                            = optional(string)
    iam_database_authentication_enabled   = optional(bool)
    final_snapshot_identifier             = optional(string)
    engine_version                        = optional(string)
    engine_lifecycle_support              = optional(string)
    engine                                = optional(string)
    dedicated_log_volume                  = optional(bool)
    enabled_cloudwatch_logs_exports       = optional(set(string))
    domain_iam_role_name                  = optional(string)
    domain_fqdn                           = optional(string)
    domain_dns_ips                        = optional(list(string))
    domain_auth_secret_arn                = optional(string)
    domain                                = optional(string)
    deletion_protection                   = optional(bool)
    domain_ou                             = optional(string)
    vpc_security_group_ids                = optional(set(string))
    blue_green_update = optional(object({
      enabled = optional(bool)
    }))
    restore_to_point_in_time = optional(object({
      restore_time                             = optional(string)
      source_db_instance_automated_backups_arn = optional(string)
      source_db_instance_identifier            = optional(string)
      source_dbi_resource_id                   = optional(string)
      use_latest_restorable_time               = optional(bool)
    }))
    s3_import = optional(object({
      bucket_name           = string
      bucket_prefix         = optional(string)
      ingestion_role        = string
      source_engine         = string
      source_engine_version = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.backup_retention_period == null || (v.backup_retention_period >= 0 && v.backup_retention_period <= 35)
      )
    ])
    error_message = "must be between 0 and 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.custom_iam_instance_profile == null || (can(regex("^AWSRDSCustom.*$", v.custom_iam_instance_profile)))
      )
    ])
    error_message = "must begin with AWSRDSCustom"
  }
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.master_user_secret_kms_key_id == null || (length(v.master_user_secret_kms_key_id) >= 1)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.master_user_secret_kms_key_id == null || (length(v.master_user_secret_kms_key_id) <= 2048)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) > 2048]"
  }
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.monitoring_interval == null || (contains([0, 1, 5, 10, 15, 30, 60], v.monitoring_interval))
      )
    ])
    error_message = "must be one of: 0, 1, 5, 10, 15, 30, 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.db_instances : (
        v.performance_insights_retention_period == null || ((contains([7, 731], v.performance_insights_retention_period)) || ((v.performance_insights_retention_period % 31) == 0))
      )
    ])
    error_message = "any of: must be one of: 7, 731; must be divisible by 31"
  }
  # Note: 22 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

