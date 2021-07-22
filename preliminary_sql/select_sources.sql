SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;

INSERT INTO map_sources(name, source)
    VALUES ('select-application-area', '{
        "data": "/geojson?nodeid=1909956f-3a3b-11eb-ae99-f875a44e0e11&include_geojson_link=true",
        "type": "geojson"
    }');

INSERT INTO map_sources(name, source)
    VALUES ('select-heritage-area', '{
        "data": "/geojson?nodeid=64be56e3-3ee5-11eb-b1f0-f875a44e0e11&include_geojson_link=true",
        "type": "geojson"
    }');

INSERT INTO map_sources(name, source)
    VALUES ('select-heritage-asset', '{
        "data": "/geojson?nodeid=ca063178-28cf-11eb-be6d-f875a44e0e11&include_geojson_link=true",
        "type": "geojson"
    }');
    
