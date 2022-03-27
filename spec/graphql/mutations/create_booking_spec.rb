# spec/graphql/mutations/create_booking_spec.rb

require 'rails_helper'

RSpec.describe 'CreateBooking', type: :request do
    describe '.resolve' do
      before :each do
        @musician = create(:musician, id: '22')
        @room = create(:room, id: '70')
        @query = <<~GQL
                mutation {
                  createBooking(input: {date: "Mon Apr 29 2022", musicianId: "22", roomId: "70"}) {
                    date
                    musician {
                      id
                      name
                    }
                    rooms {
                      id
                      name
                      details
                      photo
                      price
                    }
                  }
                }
                GQL
      end

      it 'creates booking' do
        expect(Booking.count).to eq(0)
        post '/graphql', params: { query: @query }
        expect(Booking.count).to eq(1)
      end

      it 'returns booking' do
        post '/graphql', params: { query: @query }
        json = JSON.parse(response.body)
        date = json['data']['createBooking']['date']
        musician = json['data']['createBooking']['musician']
        rooms = json['data']['createBooking']['rooms']

        expect(musician['id']).to eq('22')
        expect(date).to eq("2022-04-29 00:00:00 UTC")
        expect(rooms[0]['id']).to eq('70')
      end
    end
end
