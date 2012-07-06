class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.json
  def index
    @teams = team.all
    expires_in 10.second, :public => true
    if stale?(:etag => @team)
	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @teams}
 	    end
	end

  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @team = team.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team }
    end
  end

  # GET /teams/new
  # GET /teams/new.json
  def new
  	@team = team.new
  end

  # GET /teams/1/edit
  def edit
    @team = team.find(params[:id])
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = team.new(params[:team])

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'team was successfully created.' }
        format.json { render json: @team, status: :created, location: @team }
      else
        format.html { render action: "new" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.json
  def update
    @team = team.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(params[:team])
        format.html { redirect_to @team, notice: 'team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team = team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end
end

end
