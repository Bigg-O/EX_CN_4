class Game < ActiveRecord::Base
    belongs_to :users
    belongs_to :levels

    def self.global_fastest
        arr = Game.where("completion_time > 0").order(:completion_time).first(3)
        arr.length.times do |i|
            puts
            puts "        Level #{i+1}: #{arr[i].completion_time}s"
        end
    end

    def self.global_attempts
        Game.all.select {|attempt| attempt.user_id}
    end

    def self.global_completions
        Game.all.select {|game| game.completion_time != nil}
    end

    def self.global_success_rate
        x = Game.all.select {|attempt| attempt.user_id}.count
        y = Game.all.select {|game| game.completion_time != nil}.count
        puts (y.to_f / x.to_f) * 100
    end


end
