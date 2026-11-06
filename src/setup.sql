-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);


-- ========================================
-- Insert sample data: Organizations
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');


-- ========================================
-- Service Projects Table
-- ========================================
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES organization(organization_id) ON DELETE CASCADE
);


-- ========================================
-- Insert sample data: Service Projects
-- ========================================
INSERT INTO projects (organization_id, title, description, location, date)
VALUES
(1, 'Community Playground Rebuild', 'Replace worn playground equipment with safe, eco-friendly materials for neighborhood kids.', 'Ilorin, Kwara', '2026-12-05'),
(1, 'Bus Stop Shelter Construction', 'Build covered shelters at three busy bus stops to protect commuters from sun and rain.', 'Ilorin, Kwara', '2027-01-16'),
(1, 'Footbridge Repair', 'Repair and repaint a damaged footbridge that connects two residential areas.', 'Offa, Kwara', '2027-02-20'),
(1, 'School Classroom Renovation', 'Renovate two classrooms with new roofing, paint, and durable furniture.', 'Lagos, Lagos', '2027-03-13'),
(1, 'Drainage Clean-Up and Repair', 'Clear blocked drains and fix broken sections to reduce flooding during the rainy season.', 'Ilorin, Kwara', '2027-04-10'),
(2, 'Community Garden Launch', 'Turn an empty lot into a shared vegetable garden for local families.', 'Ilorin, Kwara', '2026-12-12'),
(2, 'Urban Farming Workshop', 'A hands-on class teaching container and rooftop gardening to beginners.', 'Ilorin, Kwara', '2027-01-23'),
(2, 'School Garden Program', 'Help students plant and care for a garden as part of their science lessons.', 'Ilorin, Kwara', '2027-02-27'),
(2, 'Compost Training Day', 'Teach residents how to turn kitchen waste into compost for their gardens.', 'Lagos, Lagos', '2027-03-20'),
(2, 'Harvest Share Market', 'A weekend market where growers share and sell fresh produce at fair prices.', 'Offa, Kwara', '2027-04-17'),
(3, 'Neighborhood Clean-Up Day', 'Volunteers gather to collect litter and tidy streets and public spaces.', 'Ilorin, Kwara', '2026-12-19'),
(3, 'Food Drive for Families', 'Collect and pack food items to give to families in need.', 'Ilorin, Kwara', '2027-01-30'),
(3, 'Back-to-School Supplies Drive', 'Gather books, bags, and stationery for students who cannot afford them.', 'Offa, Kwara', '2027-03-06'),
(3, 'Elderly Care Visit Program', 'Visit older residents to share meals, help with chores, and keep them company.', 'Lagos, Lagos', '2027-03-27'),
(3, 'Charity Fun Run', 'A community run to raise money for local charities and youth programs.', 'Ilorin, Kwara', '2027-05-08');