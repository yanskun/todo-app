RSpec.describe TasksController do
  render_views

  before do
    `rails db:reset RAILS_ENV=test`
  end

  context 'show index' do
    xit 'show task list on root page' do
    end

    it 'show task list on index page' do
      get :index
      expect(response).to render_template('index')
      expect(response.body).to include 'task 001 : hogehoge'
    end
  end
end
