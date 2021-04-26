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

def populating_bydate(day) 
    responsed = HTTParty.get "https://covid19-brazil-api.now.sh/api/report/v1/brazil/202103#{day}"
    responsed_array = JSON.parse responsed.body
    bydate_states = responsed_array["data"]
    bydate_states.each do |state| 
        ByDate.create(name:"#{state["state"]}", initials:"#{state["uf"]}", cases:state["cases"],deaths:state["deaths"], suspects:state["suspects"], datetime:"#{state["datetime"]}" )
    end
end 

for i in 1..31
    populating_bydate(i < 10 ? "0#{i}": i)
end    

def populating_bymonth(month) 
    responsem = HTTParty.get "https://covid19-brazil-api.now.sh/api/report/v1/brazil/2020#{month}01"
    responsem_array = JSON.parse responsem.body
    bymonth_states = responsem_array["data"]
    bymonth_states.each do |state| 
        ByMonth.create(name:"#{state["state"]}", initials:"#{state["uf"]}", cases:state["cases"],deaths:state["deaths"], suspects:state["suspects"], datetime:"#{state["datetime"]}" )
    end
end 

for i in 1..12
    populating_bymonth(i < 10 ? "0#{i}": i)
end   
