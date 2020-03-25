Owner.destroy_all
Dog.destroy_all

dog1 = Dog.create(name: "Tank", age: 2)
dog2 = Dog.create(name: "Butch", age: 5)
dog3 = Dog.create(name: "Bucky", age: 8)
dog4 = Dog.create(name: "Fur-dinand", age: 12)
dog5 = Dog.create(name: "Jynx", age: 13)
dog6 = Dog.create(name: "Mook", age: 1)
dog7 = Dog.create(name: "Luna", age: 4)
dog8 = Dog.create(name: "Buckles", age: 3)

owner1 = Owner.create(name: "Brandon", dog: dog7, dog8)
owner2 = Owner.create(name: "Joe", dog: dog1, dog2)
owner3 = Owner.create(name: "Mike", dog: dog3)
owner4 = Owner.create(name: "Lilly", dog: dog5, dog6)