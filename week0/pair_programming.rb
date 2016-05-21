class ProgrammingLanguage
    attr_accessor :name, :age, :type

    def initialize(name,age,type)
        @name = name
        @age = age
        @type = type
    end
end

def array_printer(array)
    array.each do |language|
        puts "Language: #{language.name} | Age: #{language.age} | Type System: #{language.type}"
    end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("Javascript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

# aged_languages = array_of_languages.map do |aging|
#     aging.age += 1 
#     aging
# end

# puts "Programming languages aged one year are: "
#     array_printer(aged_languages)

# sorted_languages = array_of_languages.sort_by do | language |
#     language.age #sorted_languages.age
#     # sorted_languages
# end

# sort_reverse = sorted_languages.reverse

# array_printer(sort_reverse)

array_of_languages.delete_at(6)

# array_printer(array_of_languages)

shuffled_array = array_of_languages.shuffle


shuffled_array.map! do |language|
    language.name += "!!!"
    language
end

array_printer(shuffled_array)
