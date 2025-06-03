-- Añadir consumición en La Cova Fumada para Gerard Fideu (id_cliente=3)
INSERT INTO Consumicio (id_bar, id_cliente, preu_total, data_hora, nota)
VALUES (
    17,  -- ID de La Cova Fumada
    3,   -- ID de Gerard Fideu
    7.95, -- Total: Bomba (2.95) + Pimientos (5.00)
    '2025-06-10 21:30:00',
    9.5  -- Excelente valoración
);

-- Obtener el ID de la última consumición insertada (asumimos que es 25)
SET @last_consumicio = LAST_INSERT_ID();

-- Relacionar la bomba con la consumición
INSERT INTO InfoConsumicio (id_consumicio, id_tapa, quantitat)
VALUES (
    @last_consumicio,
    31,  -- ID de la Bomba de la Barceloneta
    1
);

-- Relacionar los pimientos con la consumición
INSERT INTO InfoConsumicio (id_consumicio, id_tapa, quantitat)
VALUES (
    @last_consumicio,
    32,  -- ID de los Pimientos del Padrón
    1
);