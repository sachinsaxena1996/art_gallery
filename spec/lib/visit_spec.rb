require 'rails_helper'

RSpec.describe Visit do
  context 'Methods' do
    describe '.new' do
      it 'initializes a new object with visitor, room, status, time' do
        visit = Visit.new(0, 0, 'I', 540)
        expect(visit).to have_attributes(visitor: 0, room: 0, status: 'I', time: 540)
      end
    end
  end
end
