class Api::V1::IssuesController < ApplicationController

  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def receive

    request.body.rewind
    payload_body = request.body.read

    push = JSON.parse(payload_body)

    create(push)

  end

  def events
    @issues = Issue.where(number: params[:number])
    # authorize @events
  end

  def create(payload)
    @issue = Issue.new(payload: payload, number: payload['issue']['number'].to_i)

    if @issue.save
      render :show, status: :created
    else
      render_error
    end
  end


end
