CREATE TABLE sentences (
 doc_id         TEXT,
 sent_id        INTEGER,
 wordidxs       INTEGER[],
 words          TEXT[],
 poses          TEXT[],
 ners           TEXT[],
 lemmas         TEXT[],
 dep_paths      TEXT[],
 dep_parents    INTEGER[],
 bounding_boxes TEXT[] 
);

