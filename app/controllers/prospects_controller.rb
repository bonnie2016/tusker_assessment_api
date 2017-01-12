require 'json'

class ProspectsController < ApplicationController
  before_action :set_prospect, only: [:index, :next_packages]

  # GET /prospects
  def index
    render json: @prospects
  end

  def next_packages

    person_packages = []
    next_packages_details = get_next_packages

    @prospects.each do |person|
      @next_delivery_packages = []

      next_packages_details.each do |element|
        if !contents_delivered?(person['received'], element['contents'])
           @next_delivery_packages << element
        end
      end
      person_packages << {:prospect => person['contact'], :delivery_city => person['delivery_city'], :next_packages => @next_delivery_packages}

    end

    render json: to_json(person_packages)

  end


  def contents_delivered?(a, b)
    bs = b.to_set
    a.any? { |i| bs.include? i }
  end

  def to_json(list)
    list.as_json
  end

  private

    def set_prospect
      @prospects = retrieve_prospects
    end

    def retrieve_prospects
      url = "http://tuskermarvel.com/prospects.json"
      response = HTTParty.get(url)
      data = JSON.parse(response.body)
      data
    end

    def get_next_packages
      url = "http://tuskermarvel.com/packages.json"
      auth = {:username => "username", :password => "tuskermarvel"}
      response = HTTParty.get(url, :basic_auth => auth)
      data = JSON.parse(response.body)
      data
    end
end
