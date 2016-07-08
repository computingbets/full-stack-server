#
class PlaylistsController < ProtectedController
  before_action :set_playlist, only: [:show, :update, :destroy]
  #skip_before_action :authenticate, only: [:index]

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = current_user.playlists

    render json: @playlists
  end

  # def indexPlaylists
  #   signed_in_user_matches = all_matches.select { |i| i.user_id == params[:id].to_i }
  #   #  render json: @my_matches
  #   render json: signed_in_user_matches
  # end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
    playlist = current_user.playlists.find(params[:id])
    # puts params
    # render json: Playlist.where("user_id= #{params[:id]}").find_each do | playlist |
    #   puts playlist
    #   end
    render json: playlist
  end

  # POST /playlists
  # POST /playlists.json
  def create
    # if playlist_params[:user_id].to_s == current_user.id
    #   @playlist = Playlist.new(playlist_params)

    @playlist = current_user.playlists.build(playlist_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    @playlist = Playlist.find(params[:id])

    if @playlist.update(playlist_params)
      head :no_content
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy

    head :no_content
  end

  private

  def set_playlist
    @playlist = current_user.playlists.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:song_id, :user_id)
  end
end
