-- Indexing


DELETE FROM stores WHERE rowid NOT IN ( SELECT MIN(rowid) FROM stores GROUP BY store_id, city );

CREATE UNIQUE INDEX stores_id_city_idx 
ON stores(store_id, city);