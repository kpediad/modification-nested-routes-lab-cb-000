module SongsHelper
  def artist_select(song, form)
    if song.artist.nil? then
      label_tag "song[artist_id]"
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist.id
      label_tag "song[artist_name]"
      text_field_tag "song[artist_name]", song.artist.name
    end
  end
end
