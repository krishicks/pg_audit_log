class InstallPgAuditLog < ActiveRecord::Migration
  def up
    PgAuditLog::Entry.install
    PgAuditLog::Function.install
    PgAuditLog::Triggers.install
  end

  def down
    PgAuditLog::Triggers.uninstall
    PgAuditLog::Function.uninstall
    PgAuditLog::Entry.uninstall
  end
end

