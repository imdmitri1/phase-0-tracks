highway = {
    sholder: { 
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
            pasengers: {front: 1, back: 2}
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
            pasengers: {front: 1, back: 0}
            }, 
        bus: { 
            type: "coach",
            speed: 55,
            color: "blue",
            pasengers: [ 15 ]
            }
            },
    lane2: {
        motocycle: {
            type: "chopper",
            speed: 65,
            color: "black",
            pasengers: nil
            },
        car1: {
            type: "sedan",
            speed: 65,
            color: "white",
            pasengers: {front: 0, back: 2} 
            }, 
        minivan: {
            type: "sedan",
            speed: 63,
            color: "pink",
            pasengers: {front: 0, back: 1}
            },
        car2: {
            type: "sportcar",
            speed:70,
            color: "white",
            pasengers: {front: 1}
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
            pasengers: {front: 1, back: 0}
            },
        car2: {
            type: "SUV",
            speed: 64,
            color: "yellow",
            pasengers: {front: 1, back: 1}
            },
        limo: {
            type: "limo",
            speed: 65,
            color: "black",
            pasengers: {front: 0, back: 5}
            } 
            },
    sholder: []
            }

puts highway
p "."*80
p highway.length
