class Person 

    def name
        name = "Merril"
    end 

    def age
        age = 27

    end

    def children
        children = ["Tim","Tom",'Katy','Perry']


    end

    def address

        address = {
            house_number: 25,
            street: "Ashton gardens",
            town: "Hounslow",
            county: "London",
            postcode: "TW4 7BU",
            email_addresses: ["mmathew@spartaglobal.com","merrilmathew@protonmail.com"] 
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end


end