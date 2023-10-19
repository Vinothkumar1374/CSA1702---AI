% Facts about planets
planet(mercury, rocky, 0.39, 0.38, 88).
planet(venus, rocky, 0.95, 0.95, 225).
planet(earth, rocky, 1, 1, 365).
planet(mars, rocky, 0.53, 0.27, 687).
planet(jupiter, gas_giant, 11.2, 0.41, 4333).
planet(saturn, gas_giant, 9.45, 0.45, 10759).
planet(uranus, ice_giant, 4.01, 0.72, 30689).
planet(neptune, ice_giant, 3.88, 0.67, 60190).

% Rules for categorizing planets
is_rocky(Planet) :- planet(Planet, rocky, _, _, _).
is_gas_giant(Planet) :- planet(Planet, gas_giant, _, _, _).
is_ice_giant(Planet) :- planet(Planet, ice_giant, _, _, _).

% Rule for calculating planet's average distance from the Sun
average_distance(Planet, Distance) :- planet(Planet, _, Distance, _, _).

% Rule for getting a planet's orbital period
orbital_period(Planet, Period) :- planet(Planet, _, _, Period, _).
