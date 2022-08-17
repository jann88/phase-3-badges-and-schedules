
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator (names_array)
    names_array.map do |name|
        badge_maker (name)
    end 
end

def assign_rooms (names_array)
    room = [1,2,3,4,5,6,7]
    names_array.map.with_index do |name, index|
        "Hello, #{name}! You'll be assigned to room #{room[index]}!"
     end
end

# assign_rooms (["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])

def printer (names_array)
    batch_badge_creator(names_array).map do |message|
       puts message
    end
    assign_rooms(names_array).map { |message| puts message}
end

printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])
