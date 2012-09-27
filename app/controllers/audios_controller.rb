
class AudiosController < ApplicationController
  # GET /audios
  # GET /audios.json
  protect_from_forgery :except => [:create, :new]

  def index
    @audios = Audio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @audios }
    end
  end

  # GET /audios/1
  # GET /audios/1.json
  def show
    @audio = Audio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @audio }
    end
  end

  # GET /audios/new
  # GET /audios/new.json
  def new
    @audio = Audio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @audio }
    end
  end

  # GET /audios/1/edit
  def edit
    @audio = Audio.find(params[:id])
  end

  # POST /audios
  # POST /audios.json
  def create
    # params[:audio][:sound] = params[:sound_file_name]
    # first_line = params[:upload].tempfile.readline
    # puts "params = " + params.inspect
    # puts "request = #{request.inspect}"
    # binding.pry
    buffer = request.body.instance_variable_get('@input').instance_variable_get('@rbuf')
    Rails.logger.debug("buffer.size = #{buffer.size}")
    File.open("/tmp/wtfyo.wav", "w") { |f| f.write buffer }
    `open -a "quicktime player" /tmp/wtfyo.wav`
#    sound_filename = params[:sound_file_name]
    # sound_file = open(params[:sound_file_name])
 #   file = File.open(sound_filename)
  #  file.write(file)
    
    # uploaded_io = params[:sound_file_name]
    # File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
    #   file.write(uploaded_io.read)
    # end
    
    # @audio = Audio.create!(:sound => (params[:sound_file_name].readline))
    # @audio = Audio.new(params[:audio])
    respond_to do |format|
      if @audio.save
        format.html { redirect_to @audio, :notice => 'Audio was successfully created.' }
        format.json { render :json => @audio, :status => :created, :location => @audio }
      else
        format.html { render :action => "new" }
        format.json { render :json => @audio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /audios/1
  # PUT /audios/1.json
  def update
    @audio = Audio.find(params[:id])

    respond_to do |format|
      if @audio.update_attributes(params[:audio])
        format.html { redirect_to @audio, :notice => 'Audio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @audio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /audios/1
  # DELETE /audios/1.json
  def destroy
    @audio = Audio.find(params[:id])
    @audio.destroy

    respond_to do |format|
      format.html { redirect_to audios_url }
      format.json { head :no_content }
    end
  end
end
