require 'rails_helper'

RSpec.describe Room do
  context 'Methods' do
    describe '.new' do
      it 'initializes a new object with visits' do
        visit = Visit.new(0, 0, 'I', 540)
        room = Room.new(visit)
        expect(room.visits).to eq(visit)
      end
    end
  end
end
