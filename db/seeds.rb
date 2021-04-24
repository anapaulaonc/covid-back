# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def populating 
    response = HTTParty.get 'https://covid19-brazil-api.now.sh/api/report/v1'
    response_array = JSON.parse response.body
    brazilian_states = response_array["data"]
    brazilian_states.each do |state| 
        State.create(name:"#{state["state"]}", initials:"#{state["uf"]}", cases:state["cases"],deaths:state["deaths"], suspects:state["suspects"], datetime:"#{state["datetime"]}" )

    end

end 

populating