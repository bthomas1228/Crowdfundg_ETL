CREATE TABLE Contacts (
	contact_id VARCHAR(150) PRIMARY KEY NOT NULL,
	first_name VARCHAR(150),
    last_name VARCHAR(150),
    email VARCHAR(150)
);

CREATE TABLE Category (
	category_id VARCHAR(150) PRIMARY KEY NOT NULL,
	categories VARCHAR(150)
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR(150) PRIMARY KEY NOT NULL,
	subcategories VARCHAR(150)
);

CREATE TABLE Campaign (
	cf_id VARCHAR(150) PRIMARY KEY NOT NULL,
    contact_id VARCHAR(150) NOT NULL,
	foreign key (contact_id) references Contacts(contact_id),
    company_name VARCHAR(150),
    description VARCHAR(150),
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(150),
    backers_count INT,
    country VARCHAR(150),
    currency VARCHAR(150),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(150) NOT NULL,
    foreign key (category_id) references Category(category_id),
    subcategory_id VARCHAR(150) NOT NULL,
    foreign key (subcategory_id) references Subcategory(subcategory_id)
);


SELECT * FROM Contacts;
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Campaign;