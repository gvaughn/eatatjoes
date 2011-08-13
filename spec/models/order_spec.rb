require 'spec_helper'

describe Order do
  describe 'creates nested OrderItems' do
    it 'for single OrderItem' do
      o = Order.new
      o.order_items_attributes = {'0' => {:name => 'a', :price => '1', :quantity => '3'}}
      o.order_items.size.should == 1
    end
    
    it 'for multiple OrderItem' do
      o = Order.new
      o.order_items_attributes = {'0' => {:name => 'a', :price => '1', :quantity => '3'},
      '1' => {:name => 'b', :price => '1', :quantity => '3'},
      '2' => {:name => 'c', :price => '1', :quantity => '3'}
      }
      o.order_items.size.should == 3
    end
    
    it 'ignores missing quantity' do
      o = Order.new
      o.order_items_attributes = {'0' => {:name => 'a', :price => '1', :quantity => '3'},
      '1' => {:name => 'b', :price => '1', :quantity => '3'},
      '2' => {:name => 'c', :price => '1'}
      }
      o.order_items.size.should == 2
    end
    
    it 'ignores explicit quantity 0' do
      o = Order.new
      o.order_items_attributes = {'0' => {:name => 'a', :price => '1', :quantity => '0'},
      '1' => {:name => 'b', :price => '1', :quantity => '3'},
      '2' => {:name => 'c', :price => '1', :quantity => '3'}
      }
      o.order_items.size.should == 2
    end
    
  end
end
