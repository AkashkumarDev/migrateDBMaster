Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
when :development then Sequel.connect("mysql2://root:root@localhost/migratedb", :loggers => [logger])
  when :production  then Sequel.connect("sqlite://db/migrate_db_master_production.db",  :loggers => [logger])
  when :test        then Sequel.connect("sqlite://db/migrate_db_master_test.db",        :loggers => [logger])
end
