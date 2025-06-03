SELECT 
    b.nom AS bar,
    SUM(ic.quantitat) AS bombas_venudes,
    COUNT(DISTINCT ic.id_consumicio) AS consumicions_amb_bombes
FROM Bar b
JOIN Tapa t ON b.id_bar = t.id_bar
JOIN InfoConsumicio ic ON t.id_tapa = ic.id_tapa
WHERE t.nombre LIKE '%bomba%'  -- Busca variantes como bomba, bombes, bombas
GROUP BY b.id_bar
ORDER BY bombas_venudes DESC
LIMIT 5;