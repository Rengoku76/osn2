def show_rolling_dice
    100.times do
        print "#{rand(6)+1}\r"
        sleep 0.01
    end
end
puts "How many dice?"
number = gets.to_i
puts
sum = 0
number.times do
    show_rolling_dice
    die = rand(6)+1
    puts die
    sum+=die
end
puts "Sum of dice: #{sum}"