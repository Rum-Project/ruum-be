# spec/graphql/mutations/create_booking_spec.rb

require 'rails_helper'

RSpec.describe 'CreateBooking', type: :request do
    describe '.resolve' do
      before :each do
        @musician = create(:musician, id: '22')
        @room = create(:room, id: '70')
        @query = <<~GQL
                mutation {
                  createBooking(input: {
                                date: "Mon Apr 29 2022", musician_id:"22", room_id: "70"
                                })
                          }
                GQL
      end

      it 'creates booking' do
        expect(Booking.count).to eq(0)
        post '/graphql', params: { query: @query }
        # binding.pry
        expect(Booking.count).to eq(2)
      end

      it 'returns booking' do
        post '/graphql', params: { query: @query }
        json = JSON.parse(response.body)
        data = json['data']['createBooking']

        expect(data).to eq("Mon Apr 29 2019")
        expect(data).to eq("morning")
      end
    end
end
