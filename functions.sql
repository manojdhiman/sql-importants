CREATE FUNCTION SPLIT_STRING(
str VARCHAR( 255 ) ,
delim VARCHAR( 12 ) ,
pos INT
) RETURNS VARCHAR( 255 ) RETURN REPLACE( SUBSTRING( SUBSTRING_INDEX( str, delim, pos ) , LENGTH( SUBSTRING_INDEX( str, delim, pos -1 ) ) +1 ) , delim,  '' )


SELECT SPLIT_STRING('apple, pear, melon', ',', 1)
