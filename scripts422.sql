CREATE TABLE cars
(
    id    SERIAL PRIMARY KEY,
    brand VARCHAR(15)                    NOT NULL,
    model VARCHAR(15)                    NOT NULL,
    price INTEGER CHECK (cars.price > 0) NOT NULL
);
CREATE TABLE people
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(12) NOT NULL,
    age INTEGER CHECK (people.age > 0) NOT NULL,
    driving_licence BOOLEAN DEFAULT false,
    car_id SERIAL REFERENCES cars(id)
)