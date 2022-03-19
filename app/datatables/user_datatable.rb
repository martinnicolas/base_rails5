class UserDatatable < ApplicationDatatable
  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      email: { source: 'User.email', cond: :like },
      last_sign_in_at: { source: 'User.last_sign_in_at', cond: :like },
      last_sign_in_ip: { source: 'User.last_sign_in_ip', cond: :like },
      sign_in_count: { source: 'User.sign_in_count', cond: :like }
    }
  end

  def acciones(record)
    super
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        email: record.email,
        last_sign_in_at: record.last_sign_in_at,
        last_sign_in_ip: record.last_sign_in_ip,
        sign_in_count: record.sign_in_count,
        dt_actions: record.decorate.dt_actions(acciones(record))
      }
    end
  end

  def get_raw_records
    # insert query here
    User.all
  end
end
