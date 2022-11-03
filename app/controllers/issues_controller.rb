class IssuesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  # def receive
  #   request.body.rewind
  #   payload_body = request.body.read
  #   # verify_signature(payload_body)
  #   push = JSON.parse(payload_body)
  #   @issue = Issue.new(payload: push)
  #   @issue.save
  #   # render nothing: true
  # end

  # # def create(payload)
  # #   @issue = Issue.new(payload: payload)
  # #   @issue.save

  # # end
end
