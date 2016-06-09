class PlayController < ApplicationController
  def story
    
    if params[:next_id] == nil
      @story = Story.first
      render :layout => false
    elsif params[:next_id] == "999"
      redirect_to '/article/show'
    else
      @story = Story.find(params[:next_id])
      render :layout => false
    end
  end
    
  def update
    story = Story.find_by(id: current_user.current_stage)
    
    if story.next_ok
      current_user.current_stage +=1
      current_user.save
    end
    
    redirect_to :back
  end
  
  def update_by_id
    Response.create(user_id: current_user.id, question_id: params[:question_id].to_i, my_ans: params[:my_ans].to_i, target_id: current_user.id)
    current_user.current_stage = params[:next_id]
    current_user.save

    redirect_to :back
  end
end
