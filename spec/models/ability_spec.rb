require 'spec_helper'

describe Ability do
  describe 'guest' do
    before do
      @user = nil
      @restaurant = nil
    end
    
    it 'cannot manage a restaurant' do
      Ability.new(@user).can?(:manage, @restaurant).should be_false
    end
    
    it 'cannot create a restaurant' do
      Ability.new(@user).can?(:create, Restaurant).should be_false
    end
  end
  
  describe 'registered user' do
    before do
      @user = User.new :email => 'unit@test.com', :password => 'abc123'
      @user.save!
      @restaurant = @user.restaurants.create :name => 'insert witty name here'
      @restaurant.save!
    end
    
    it 'can manage its own restaurant' do
      Ability.new(@user).can?(:manage, @restaurant).should be_true
    end
    
    it 'can create new restaurants' do
      Ability.new(@user).can?(:create, Restaurant).should be_true
    end
    
    it 'cannot edit someone elses restaurant' do
      Ability.new(@user).can?(:manage, Restaurant.new(:name => 'another restaurant')).should be_false
    end
  end
end