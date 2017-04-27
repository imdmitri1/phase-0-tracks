highway = {
    r_sholder: {
            car: {
            type: "sedan",
            speed: 0,
            condition: "broken, needs to be towed", 
            passengers: nil}
            },
    lane1: {
        car1: {
            type: "sedan",
            speed: 55,
            color: "white",
            passengers: {front: 1, back: 2}
            } , 
        truck: {
            type: "dryvan",
            speed: 54,
            color: "mixed",
            lenght_ft: 72,
            loaded: true
            },
        car2: {
            type: "SUV",
            speed: 55,
            color: "green",
            passengers: {front: 1, back: 0}
            }, 
        bus: { 
            type: "coach",
            speed: 55,
            color: "blue",
            passengers: [ 15 ]
            }
            },
    lane2: {
        motocycle: {
            type: "chopper",
            speed: 65,
            color: "black",
            passengers: nil
            },
        car1: {
            type: "sedan",
            speed: 65,
            color: "white",
            passengers: {front: 0, back: 2} 
            }, 
        minivan: {
            type: "sedan",
            speed: 63,
            color: "pink",
            passengers: {front: 0, back: 1}
            },
        car2: {
            type: "sportcar",
            speed:70,
            color: "white",
            passengers: {front: 1}
            }, 
        truck: {
            type: "flatbed",
            speed: 62,
            color: "mixed",
            lenght_ft: 68,
            loaded: true
            }
            },
    lane3: {
        car1: {
            type: "pickup",
            speed: 65,
            color: "red",
            passengers: {front: 1, back: 0}
            },
        car2: {
            type: "SUV",
            speed: 64,
            color: "yellow",
            passengers: {front: 1, back: 1}
            },
        limo: {
            type: "limo",
            speed: 65,
            color: "black",
            passengers: {front: 0, back: 5}
            } 
            },
    l_sholder: []
            }

puts highway
p "."*80
p highway.length
p highway[:lane3][:limo][:color]
p highway[:lane2][:truck].length
p highway[:lane2][:truck]
p highway[:lane1][:bus][:passengers]
p highway[:lane1][:bus][:passengers][0]
p highway[:r_sholder][:car]