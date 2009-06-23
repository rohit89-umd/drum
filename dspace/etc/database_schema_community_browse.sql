DROP VIEW CommunityItemsByDateAccession;
DROP VIEW CommunityItemsByAuthor;
DROP VIEW CommunityItemsByTitle;
DROP VIEW CommunityItemsByDate;

CREATE VIEW CommunityItemsByDateAccession as
SELECT DISTINCT Communities2Item.community_id, ItemsByDateAccessioned.* 
FROM ItemsByDateAccessioned, Communities2Item
WHERE ItemsByDateAccessioned.item_id = Communities2Item.item_id
;

CREATE VIEW CommunityItemsByAuthor as
SELECT DISTINCT Communities2Item.community_id, ItemsByAuthor.* 
FROM ItemsByAuthor, Communities2Item
WHERE ItemsByAuthor.item_id = Communities2Item.item_id
;

CREATE VIEW CommunityItemsByTitle as
SELECT DISTINCT Communities2Item.community_id, ItemsByTitle.* 
FROM ItemsByTitle, Communities2Item
WHERE ItemsByTitle.item_id = Communities2Item.item_id
;

CREATE VIEW CommunityItemsByDate as
SELECT DISTINCT Communities2Item.community_id, ItemsByDate.* 
FROM ItemsByDate, Communities2Item
WHERE ItemsByDate.item_id = Communities2Item.item_id
;
