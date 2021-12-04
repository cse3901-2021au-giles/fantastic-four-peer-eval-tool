class MembershipsController < ApplicationController
    # GET /memberships/new
    def new
        @membership = Membership.new
    end
end