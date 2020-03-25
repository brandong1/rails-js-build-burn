fetch("http://localhost:3000/owners")
    .then(response => response.json())
    .then(owners => displayOwners(owners))

fetch("http://localhost:3000/dogs")
    .then(response => response.json())
    .then(dogs => displayDogs(dogs))

    function displayOwners(owners){
        const ownerList = document.getElementById('owner-list')
        owners.forEach(owner => {
            const newOwner = document.createElement('ul')

            newOwner.innerHTML = `<a href='showOwner.html?id=${owner.id}'>${owner.name}</a>`

            ownerList.append(newOwner)
        })
    }

function displayDogs(dogs){
    const dogList = document.getElementById('dog-list')
    dogs.forEach(dog => {
        const newDog = document.createElement('option')

        newDog.innerText = dog.name
        newDog.value = dog.id

        dogList.append(newDog)


    })
}