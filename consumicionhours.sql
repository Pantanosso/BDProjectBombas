SELECT 
    HOUR(data_hora) AS hora,
    COUNT(*) AS total_consumicions,
    SUM(ic.quantitat) AS total_tapes
FROM Consumicio c
JOIN InfoConsumicio ic ON c.id_consumicio = ic.id_consumicio
GROUP BY hora
ORDER BY hora;