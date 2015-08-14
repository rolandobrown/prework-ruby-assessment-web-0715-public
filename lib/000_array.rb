languages = ["Ruby", "JavaScript", "HTML"]  # => ["Ruby", "JavaScript", "HTML"]

languages.push("CSS")    # => ["Ruby", "JavaScript", "HTML", "CSS"]
languages.index([1])     # => nil
languages.index("HTML")  # => 2

puts languages  # => nil

# >> Ruby
# >> JavaScript
# >> HTML
# >> CSS
