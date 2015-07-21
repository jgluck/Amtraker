@dir = "/Users/jgluck/src/interview/train_redirect/"

worker_processes 2
working_directory @dir

timeout 30

listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

listen(9292, backlog: 64) if ENV['RACK_ENV'] == 'development'

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"