# frozen_string_literal: true

class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    rename_column :audit_trails, :auditable_parent_id, :association_id
    rename_column :audit_trails, :auditable_parent_type, :association_type
  end

  def self.down
    rename_column :audit_trails, :association_type, :auditable_parent_type
    rename_column :audit_trails, :association_id, :auditable_parent_id
  end
end
