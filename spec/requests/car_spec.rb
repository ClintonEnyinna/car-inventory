require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  before(:each) do
    @user = User.create!(name: 'Clinton', email: 'clinton@dev.com', password: 'foobar', password_confirmation: 'foobar')
    session[:id] = @user.id
  end

  describe 'routes' do
    it { is_expected.to route(:get, '/').to(action: :index) }
  end

  describe 'callbacks' do
    it { is_expected.to use_before_action(:logged_in?) }
    it { is_expected.to use_before_action(:is_admin?) }
  end

  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'Get #new' do
    
    context 'When user is not an admin' do
      it 'does not render the new template' do
        get :new
        expect(response).not_to render_template :new
      end
    end

    context 'When user is admin' do
      before { @user.update_column(:role, 'admin') }

      it 'does not render the new template' do
        get :new
        expect(response).to render_template :new
      end
    end    
  end
end
