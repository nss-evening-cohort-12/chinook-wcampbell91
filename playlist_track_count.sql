SELECT 
    COUNT(PlaylistTrack.trackId),
    Playlist.Name
FROM PlaylistTrack
INNER JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
