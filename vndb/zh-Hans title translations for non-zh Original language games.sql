WITH foreign_games AS (
    SELECT id, TRUE AS foreign_game
    FROM vn
    WHERE olang NOT IN ('zh-Hans','zh-Hant')
)
SELECT vn_titles.id, vn_titles.title
FROM vn_titles
LEFT JOIN foreign_games ON vn_titles.id = foreign_games.id
WHERE vn_titles.lang = 'zh-Hans' AND foreign_game
ORDER BY vn_titles.id;