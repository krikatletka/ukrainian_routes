const places = [
    {
        id: 1,
        name: 'Saint Sophia Cathedral',
        city: 'kyiv',
        category: 'architecture',
        description: 'One of the most important historical monuments of Kyiv.',
        durationMinutes: 40
    },
    {
        id: 2,
        name: 'Golden Gate',
        city: 'kyiv',
        category: 'architecture',
        description: 'A historical gateway of ancient Kyiv.',
        durationMinutes: 25
    },
    {
        id: 3,
        name: 'National Museum of the History of Ukraine',
        city: 'kyiv',
        category: 'museum',
        description: 'A museum dedicated to Ukrainian history and culture.',
        durationMinutes: 60
    },
    {
        id: 4,
        name: 'Lviv High Castle',
        city: 'lviv',
        category: 'monument',
        description: 'A famous historical hill with a panoramic view of Lviv.',
        durationMinutes: 45
    },
    {
        id: 5,
        name: 'Lviv National Opera',
        city: 'lviv',
        category: 'architecture',
        description: 'One of the most beautiful opera houses in Ukraine.',
        durationMinutes: 35
    }
];

const citySelect = document.querySelector('#city');
const categorySelect = document.querySelector('#category');
const placesList = document.querySelector('#places-list');
const routeList = document.querySelector('#route-list');
const generateRouteButton = document.querySelector('#generate-route');

function getFilteredPlaces() {
    const selectedCity = citySelect.value;
    const selectedCategory = categorySelect.value;

    return places.filter(place => {
        const cityMatches = place.city === selectedCity;
        const categoryMatches = selectedCategory === 'all' || place.category === selectedCategory;

        return cityMatches && categoryMatches;
    });
}

function renderPlaces() {
    const filteredPlaces = getFilteredPlaces();

    placesList.innerHTML = '';

    filteredPlaces.forEach(place => {
        const card = document.createElement('article');
        card.classList.add('place-card');

        card.innerHTML = `
            <h3>${place.name}</h3>
            <div class="place-card__category">${place.category}</div>
            <p>${place.description}</p>
            <strong>${place.durationMinutes} minutes</strong>
        `;

        placesList.appendChild(card);
    });
}

function generateRoute() {
    const route = getFilteredPlaces();

    routeList.innerHTML = '';

    route.forEach(place => {
        const item = document.createElement('li');
        item.textContent = `${place.name} — ${place.durationMinutes} minutes`;

        routeList.appendChild(item);
    });
}

citySelect.addEventListener('change', renderPlaces);
categorySelect.addEventListener('change', renderPlaces);
generateRouteButton.addEventListener('click', generateRoute);

renderPlaces();
