bind 'tcp://[::]:3000'

threads 2,8
workers 4

preload_app!

on_worker_boot do
  ::Ygg::AmqpWsGw.start

  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end

plugin :systemd
