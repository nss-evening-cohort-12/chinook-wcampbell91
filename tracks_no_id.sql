SELECT
    Track.Name AS 'Track Name',
    Album.Title AS 'Album Title',
    MediaType.Name AS 'Media Type'
FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
INNER JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
