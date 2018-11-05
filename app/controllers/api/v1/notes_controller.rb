class Api::V1::NotesController < ApplicationController

	def index
		# @notes = Note.all.sort {|a,b| a.id <=> b.id }
		@notes = Note.all
		render json: @notes, status: 200
	end
	
	def show
		@note = Note.find(params(:id))
		render json: @note, status: 200
	end
	
	def create
		@note = Note.create(note_params)
		render json: @note, status: 200
	end
	
	def update
		@note = Note.find(params[:id])
		@note.update(note_params)
		render json: @note, status: 200
	end
	
	def destroy
binding.pry

		@note = Note.find(params(:id))
		@note.delete
		render json: {message: "note `#{@note.id}` deleted"}
	end

	private
		def note_params
			params.require(:note).permit(:body)
		end
end
