-- Inserting Barcelona tapas bars with original zip codes and data
INSERT INTO Bar (nom, direccio, barri, horari) VALUES
('Bar Nuri', 'Rambla del Poblenou 34', '08005', '10:00-24:00'),
('Bar La Unió', 'Plaça de la Unió 6', '08005', '6:00-17:00'),
('Corte de Manga', 'Carrer del Comte d''Urgell 108', '08015', '8:00-1:00'),
('El Bandarra Taperia', 'Carrer de Torrijos 53', '08012', '12:00-24:00'),
('Veridis Quo', 'Carrer del Bruc 80', '08009', '17:30-23:00'),
('Bar Electricitat', 'Carrer de Sant Carles 15', '08003', '8:00-17:00'),
('Bar Jai-Ca', 'Carrer de Ginebra 13', '08003', '8:00-23:00'),
('Bar Tapas Barceloneta', 'Plaça de Julio González 10', '08005', '8:00-24:00'),
('La Pubilla del Taulat', 'Carrer de Marià Aguiló 131', '08005', '9:00-23:00'),
('La bodegueta de Gràcia', 'Carrer de Sant Lluís 103', '08024', '11:30–23:00'),
('Bodega La Puntual', 'Carrer de Montcada 22', '08003', '12:30–24:00'),
('Sabor de Barrio', 'Carrer dels Assaonadors 25', '08003', '12:300–24:00'),
('Bar Piñol', 'Carrer d''Andrea Dòria 28', '08003', '7:30–23:00'),
('Bar Bitácora', 'Carrer de Balboa 1', '08003', '12:00–23:00'),
('Senyor Vermut', 'Carrer de Provença 85', '08029', '12:00–23:00'),
('Xador', 'Plaça de la Concòrdia 4', '08014', '16:00–1:00'),
('Restaurante La Cova Fumada', 'Carrer del Baluard 56', '08003', '9:00–15:00'),
('Bar La Platjeta', 'Carrer de la Maquinista 11', '08003', '12:00-23:00'),
('L''Òstia de la Barceloneta', 'Plaça de la Barceloneta 1', '08003', '10:00–23:30'),
('La Bombeta', 'Carrer de la Maquinista 3', '08003', '8:00–24:00');

-- Note: All zip codes (barri field) are preserved exactly as provided in the CSV
-- Note: Special characters (ò, ñ, etc.) are properly escaped for SQL
-- Note: Original opening hours formatting is maintained including en-dashesbarbarid_bar