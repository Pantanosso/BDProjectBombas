SELECT i.nom, COUNT(t.id_tapa) AS total_tapes
FROM Ingredient i
JOIN Tapa t ON i.id_tapa = t.id_tapa
GROUP BY i.nom
ORDER BY total_tapes DESC
LIMIT 5;