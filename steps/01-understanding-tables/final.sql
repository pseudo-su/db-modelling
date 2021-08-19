-- Delete previous tables
DROP TABLE IF EXISTS house_windows;
DROP TABLE IF EXISTS houses;

-- Create houses table
CREATE TABLE houses (
    id SERIAL,
    address_line1 VARCHAR,
    address_line2 VARCHAR,
    postcode VARCHAR,
    country_code VARCHAR,

    PRIMARY KEY (id)
);

-- Create house_windows table
CREATE TABLE house_windows (
    id SERIAL,
    house_id INTEGER,
    height_mm INTEGER,
    width_mm INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (house_id) REFERENCES houses(id)
);

-- Insert first house and windows
INSERT INTO houses (address_line1, address_line2, postcode, country_code)
VALUES ('11 Street name', 'Melbourne', '3000', 'AU');

INSERT INTO house_windows (house_id, height_mm, width_mm)
VALUES (1, 200, 300);

INSERT INTO house_windows (house_id, height_mm, width_mm)
VALUES (1, 200, 600);

-- Insert second house and windows
INSERT INTO houses (address_line1, address_line2, postcode, country_code)
VALUES ('2 Street name', 'Sydney', '2000', 'AU');

INSERT INTO house_windows (house_id, height_mm, width_mm)
VALUES (2, 200, 300);

INSERT INTO house_windows (house_id, height_mm, width_mm)
VALUES (2, 200, 600);
