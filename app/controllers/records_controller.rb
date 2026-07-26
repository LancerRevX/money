class RecordsController < ApplicationController
  before_action :set_record, only: %i[show edit update]

  def index
    @records = Record.order(:date, value: :desc)
  end

  def show
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new()
    if @record.save
      redirect_to records_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @record.update(record_params)
      render :show
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def set_record
    @record = Record.find(params[:id])
  end

  def record_params
    params.expect(record: [ :value, :tag_id ])
  end
end
