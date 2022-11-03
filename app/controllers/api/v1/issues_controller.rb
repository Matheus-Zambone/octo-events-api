class Api::V1::IssuesController < ApplicationController

  def index
    @issues = Issue.all
  end

  def receive

    request.body.rewind
    payload_body = request.body.read
    # verify_signature(payload_body)
    push = JSON.parse(payload_body)
    @issue = Issue.new(payload: push, number: push["issue"]["number"].to_i)
    # authorize @issue
    @issue.save

    # render nothing: true
  end

  def events
    @issues = Issue.where(number: params[:number])
    # authorize @events
  end


end
