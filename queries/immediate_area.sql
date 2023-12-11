
SELECT tree_id, 
       species, 
       health, 
       status, 
       ST_AsText(geometry) AS coordinate_location
FROM trees
WHERE ST_DWithin(CAST(geometry AS geography),
    ST_MakePoint(-73.96253174434912, 40.80737875669467)::geography,805,false);
