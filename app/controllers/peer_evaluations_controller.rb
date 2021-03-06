# frozen_string_literal: true

# This controls actions that can be performed on peer evaluations
class PeerEvaluationsController < ApplicationController
  before_action :set_peer_evaluation, only: %i[show edit update destroy]
  before_action :logged_in_user
  before_action :authorized?, only: [:destroy]

  # GET /peer_evaluations
  # GET /peer_evaluations.json
  def index
    @peer_evaluations = PeerEvaluation.all
  end

  # GET /peer_evaluations/1
  # GET /peer_evaluations/1.json
  def show; end

  # GET /peer_evaluations/new
  def new
    @peer_evaluation = PeerEvaluation.new
  end

  # GET /peer_evaluations/1/edit
  def edit; end

  # POST /peer_evaluations
  # POST /peer_evaluations.json
  def create
    @peer_evaluation = PeerEvaluation.new(peer_evaluation_params)

    respond_to do |format|
      if @peer_evaluation.save
        format.html { redirect_to @peer_evaluation, notice: 'Peer evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @peer_evaluation }
      else
        format.html { render :new }
        format.json { render json: @peer_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peer_evaluations/1
  # PATCH/PUT /peer_evaluations/1.json
  def update
    respond_to do |format|
      if @peer_evaluation.update(peer_evaluation_params)
        format.html { redirect_to @peer_evaluation, notice: 'Peer evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @peer_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @peer_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peer_evaluations/1
  # DELETE /peer_evaluations/1.json
  def destroy
    @peer_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to peer_evaluations_url, notice: 'Peer evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_peer_evaluation
    @peer_evaluation = PeerEvaluation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def peer_evaluation_params
    params.fetch(:peer_evaluation, {})
  end

  # Confirms a logged-in user.
  def logged_in_user
    return if logged_in? # Guard clause

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end

  # Redirect to home if unathorized
  def authorized?
    redirect_to(root_url) unless system_user? || teaching_user?
  end
end
