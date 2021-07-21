# frozen_string_literal: true

require_relative '../../common/services/send_task_token_service'

def run(event:, context:)
  task_token = event['task_token']
  status = random_status
  SendTaskTokenService.new(task_token: task_token, status: status).call
end

def random_status
  %w[success failure].sample
end
