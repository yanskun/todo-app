RSpec.describe TasksController do
  before do
    driven_by(:rack_test)
    `rails db:reset RAILS_ENV=test`
  end

  context 'show index' do
    it 'show tasks list on index page' do
      visit '/tasks'

      assert_selector 'h1', text: 'Your Tasks'
      assert_text 'task 001 : hogehoge'
      assert_text 'task 002 : fugafuga'
      assert_text 'task 003 : piyopiyo'
    end

    it 'show tasks list on root page' do
      visit '/'

      assert_selector 'h1', text: 'Your Tasks'
      assert_text 'task 001 : hogehoge'
      assert_text 'task 002 : fugafuga'
      assert_text 'task 003 : piyopiyo'
    end
  end
end
