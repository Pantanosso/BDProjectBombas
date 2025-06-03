SELECT b.nom, COUNT(DISTINCT ia.id_alergen) AS tapes_amb_alergens
FROM Bar b
JOIN Tapa t ON b.id_bar = t.id_bar
JOIN Ingredient i ON t.id_tapa = i.id_tapa
JOIN Ingredient_Alergen ia ON i.id_ingredient = ia.id_ingredient
GROUP BY b.id_bar
ORDER BY tapes_amb_alergens
LIMIT 10;