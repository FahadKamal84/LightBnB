SELECT properties.id, title, cost_per_night, avg(rating) FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE rating >= 4 AND city = 'Vancouver'
GROUP BY properties.id
ORDER BY cost_per_night
LIMIT 10;