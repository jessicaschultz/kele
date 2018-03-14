module Roadmap
  def get_roadmap(chain_id)
    response = self.class.get('/roadmaps/5730', values: {"id" => chain_id}, headers: {"authorization" => @user_auth_token})
    JSON.parse(response.body)
  end

  def get_checkpoint(checkpoint_id)
    response = self.class.get('/checkpoints/2095', headers: {"authorization" => @user_auth_token})
    JSON.parse(response.body)
  end
end
