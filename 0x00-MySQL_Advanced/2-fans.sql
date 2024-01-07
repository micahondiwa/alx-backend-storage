-- SQL script that ranks country origin of bands

SELECT origin, SUM(fnas) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;