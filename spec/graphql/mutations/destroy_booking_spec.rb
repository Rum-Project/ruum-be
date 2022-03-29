require 'rails_helper'
RSpec.describe "Destroybooking", type: :request do
  describe 'delete mutation' do

  it "deletes a booking when provided an id" do
      musician = create(:musician, id: '22')
      room = create(:room, id: '70')

      post '/graphql', params: { query: create_query }
      expect(Booking.count).to eq(1)
      booking_id = Booking.last.id.to_s

      result = RuumBeSchema.execute(delete_query).as_json

      expect(Booking.all.count).to eq(0)
      expect(result["data"].keys).to eq(["destroyBooking"])
      expect(result["data"]["destroyBooking"]["id"]).to eq(booking_id)
    end
  end

  def create_query
    <<~GQL
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

  def delete_query
    <<~GQL
    mutation {
          destroyBooking(
            input: {bookingId: "#{Booking.last.id}"}) {
            id
          }
        }
    GQL
  end
end