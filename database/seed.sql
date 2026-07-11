USE ukrainian_routes;

INSERT INTO cities (name, slug) VALUES
('Kyiv', 'kyiv'),
('Lviv', 'lviv'),
('Odesa', 'odesa');

INSERT INTO categories (name, slug) VALUES
('Architecture', 'architecture'),
('Museum', 'museum'),
('Monument', 'monument'),
('Castle', 'castle');

INSERT INTO places (
    city_id,
    category_id,
    name,
    description,
    address,
    latitude,
    longitude,
    duration_minutes,
    image
) VALUES
(
    1,
    1,
    'Saint Sophia Cathedral',
    'One of the most important historical and architectural monuments of Kyiv.',
    'Volodymyrska St, 24, Kyiv',
    50.4529000,
    30.5143000,
    45,
    'sophia-cathedral.jpg'
),
(
    1,
    1,
    'Golden Gate',
    'A historical gateway and one of the symbols of ancient Kyiv.',
    'Volodymyrska St, 40A, Kyiv',
    50.4489000,
    30.5133000,
    30,
    'golden-gate.jpg'
),
(
    1,
    2,
    'National Museum of the History of Ukraine',
    'A museum dedicated to the history and culture of Ukraine.',
    'Volodymyrska St, 2, Kyiv',
    50.4581000,
    30.5163000,
    60,
    'history-museum.jpg'
),
(
    2,
    3,
    'Lviv High Castle',
    'A famous historical hill with a panoramic view of Lviv.',
    'High Castle Park, Lviv',
    49.8480000,
    24.0396000,
    45,
    'lviv-high-castle.jpg'
),
(
    2,
    1,
    'Lviv National Opera',
    'One of the most beautiful opera houses in Ukraine.',
    'Svobody Ave, 28, Lviv',
    49.8441000,
    24.0262000,
    40,
    'lviv-opera.jpg'
);