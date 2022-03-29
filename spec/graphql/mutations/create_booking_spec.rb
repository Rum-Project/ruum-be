# spec/graphql/mutations/create_booking_spec.rb

require 'rails_helper'

RSpec.describe 'CreateBooking', type: :request do
    describe '.resolve' do
      before :each do
        @musician = create(:musician, id: '22')
        @room = create(:room, id: '70')
      end

      it 'creates booking' do
        expect(Booking.count).to eq(0)
        post '/graphql', params: { query: query_1 }
        expect(Booking.count).to eq(1)
      end

      it 'returns booking' do
        post '/graphql', params: { query: query_1 }
        json = JSON.parse(response.body)

        date = json['data']['createBooking']['date']
        musician = json['data']['createBooking']['musician']
        room = json['data']['createBooking']['room']

        expect(musician['id']).to eq('22')
        expect(date).to eq("2022-04-29 00:00:00 UTC")
        expect(room['id']).to eq('70')
      end

      it "will not allow for duplicate bookings(edge case)" do
        post '/graphql', params: { query: query_1 }
        create(:musician, id: '44')
        post '/graphql', params: { query: query_2 }
        parsed = JSON.parse(response.body)
        expect(parsed["data"]["createBooking"]).to eq(nil)
        expect(parsed["errors"].first["message"]).to eq("This room is unavailble on Mon Apr 29 2022")

      end
    end

    def query_1
      query = <<~GQL
              mutation {
                createBooking(input: {date: "Mon Apr 29 2022", musicianId: "22", roomId: "70"}) {
                  date
                  musician {
                    id
                    name
                  }
                  room {
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

    def query_2
      query = <<~GQL
              mutation {
                createBooking(input: {date: "Mon Apr 29 2022", musicianId: "44", roomId: "70"}) {
                  date
                  musician {
                    id
                    name
                  }
                  room {
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
end
