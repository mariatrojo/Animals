//: Playground - noun: a place where people can play

import UIKit

//First, create a class called Animal
//Give Animal a property "name"
//Give Animal a property "health" with a default value of 100
//Give Animal an initialization that takes in a name and sets the name property appropriately
//Give the animal a displayHealth method

class Animal {
    var name: String
    var health = 100
    init(name: String){
        self.name = name
    }
    func displayHealth(){
        print(self.health)
    }
}

//Next, create a subclass of Animal called Cat
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health

class Cat: Animal {
    override init(name: String){
        super.init(name: name)
        super.health = 150
    }
    func growl(){
        print("Rawr!")
    }
    func run(){
        print("Running")
        self.health = health - 10
    }
}

//Next, create two subclasses of Cat - Cheetah and Lion
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
//Override Lion's health to be 200
//Override the Cheetah's run method to print "Running Fast" and deduct 50 health
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)

class Lion: Cat {
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
    override init(name: String){
        super.init(name: name)
        super.health = 200
    }
}

class Cheetah: Cat {
    override func run() {
        if self.health >= 50 {
            print("Running Fast")
            self.health = health - 50
        }
        else {
            print("Can't run")
        }
    }
    func sleep(){
        if self.health <= 150 {
            health = health + 50
        }
        else {
            health = 200
        }
        
    }
}

var cheetah: Cheetah = Cheetah(name: "Cheetah")
var lion: Lion = Lion(name: "Lion")

cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()

lion.run()
lion.run()
lion.run()
lion.growl()
