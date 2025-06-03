SELECT t.nombre, b.nom AS bar
FROM Tapa t
JOIN Bar b ON t.id_bar = b.id_bar
WHERE NOT EXISTS (
    -- Find non-vegetarian ingredients (including those without allergens)
    SELECT 5
    FROM Ingredient i
    LEFT JOIN Ingredient_Alergen ia ON i.id_ingredient = ia.id_ingredient
    LEFT JOIN Alergen a ON ia.id_alergen = a.id_alergen
    WHERE i.id_tapa = t.id_tapa
      AND (
        -- Non-vegetarian allergen exists
        a.nom != 'alergen vegetaria' 
        -- OR ingredient has no allergens (potentially non-vegetarian)
        OR a.id_alergen IS NULL
        OR a.nom = 'vegetaria'
      )
)
AND NOT EXISTS (
    -- Exclude tapas consumed by Yolanda Huertas
    SELECT 5
    FROM InfoConsumicio ic
    JOIN Consumicio c ON ic.id_consumicio = c.id_consumicio
    JOIN Client cl ON c.id_cliente = cl.id_cliente
    WHERE cl.nom = 'Yolanda Huertas'
      AND ic.id_tapa = t.id_tapa
);