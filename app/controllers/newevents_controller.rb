class NeweventsController < ApplicationController

def index
	@newevents = Newevent.all

end

def show

@newevent = Newevent.find(params[:id])

end

def new

	@newevent = Newevent.new

end

def create

 @newevent = Newevent.new(
    title: params[:newevent][:title],
    body: params[:newevent][:body])
  @newevent.save
  redirect_to newevents_path(@newevents)
end

def destroy

	@newevent = Newevent.find(params[:id])
	@newevent.destroy
	redirect_to newevents_path(@newevents)

end

def edit
	@newevent = Newevent.find(params[:id])

end

def update
	@newevent = Newevent.find(params[:id])
	@newevent.update_attributes(params[:newevent])

	redirect_to newevent_path(@newevent)

	flash.notice = "#{@newevent.title}' Updated!"

end



end
