require_relative '../init.rb'
require 'concurrent'

keywords = "internet"
page_num = ThxSeafood::A104::JobMapper.new(ThxSeafood::A104::Api.new).get_total_page_num(keywords)   

ThxSeafood::Api.DB[:jobs].delete

count = 0

(1..page_num).each{ |page|
  Concurrent::Promise.execute{    
    puts "load page: #{page}\n"
    jobs = ThxSeafood::A104::JobMapper.new(ThxSeafood::A104::Api.new).load_several(keywords, page)
    stored_jobs = jobs.map{ |job| ThxSeafood::Repository::For[job.class].create(job) }
    puts "page #{page} done\n"
    count += 1
    puts "progress: #{count}/#{page_num}"
  }.value
}
