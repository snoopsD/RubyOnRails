class Admin::WagonsController < Admin::BaseController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def index
    @wagons = Wagon.all
  end

  def show
  end

  def new
    @wagon = Wagon.new
  end

  def edit
  end

  def create
    @wagon = @train.wagons.new(wagon_params)

    if @wagon.save
      redirect_to [:admin, @train]
    else
      render :new
    end
  end

  def update
    if @wagon.update(wagon_params)
      redirect_to admin_wagons_path(@wagon)
    else
      render :edit
    end
  end

  def destroy
    @wagon.destroy
    redirect_to admin_wagons_path(@wagon)
  end

protected
    def set_wagon
      @wagon = Wagon.find(params[:id])
    end

    def set_train
      @train = Train.find(params[:train_id])
    end

    def wagon_params
      params.require(:wagon).permit(:number, :type, :place_up, :place_down, :place_seat, :side_top_place_down, :side_bot_place_up, :train_id, :position)
    end
end
