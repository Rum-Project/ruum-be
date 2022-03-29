require 'rails_helper'

RSpec.describe 'Get Available Rooms' do
  describe 'list of rooms' do
    before(:each) do
      @room1 = create(:room)
      @room2 = create(:room)
    end

    it 'can return list of available rooms' do
      create(:booking, date: "2022-04-30 00:00:00 UTC", room_id: @room1.id)
      create(:booking, date: "2022-05-01 00:00:00 UTC", room_id: @room1.id)

      result = RuumBeSchema.execute(query1).as_json
      data = result['data']
      rooms = data['getAvailableRooms']

      expect(rooms.count).to eq(2)
    end

    it 'can return list of available rooms' do
      create(:booking, date: "2022-04-30 00:00:00 UTC", room_id: @room1.id)
      create(:booking, date: "2022-05-01 00:00:00 UTC", room_id: @room1.id)

      result = RuumBeSchema.execute(query2).as_json
      data = result['data']
      rooms = data['getAvailableRooms']

      expect(rooms.count).to eq(1)
      expect(rooms[0]['id']).to eq(@room2.id.to_s)
    end
  end

  def query1
    <<~GQL
    {
      getAvailableRooms(date: "2022-04-29 00:00:00 UTC") {
        id
        name
        photo
        price
        amenities
        instruments
        }
    }
    GQL
  end

  def query2
    <<~GQL
    {
      getAvailableRooms(date: "2022-04-30 00:00:00 UTC") {
        id
        name
        photo
        price
        amenities
        instruments
        }
    }
    GQL
  end
end
