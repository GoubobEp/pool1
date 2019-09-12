defmodule Project1Web.Router do
  use Project1Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Project1Web do
    pipe_through :api
    resources "/workingtimes", WorkingtimeController, except: [:new, :edit]
    resources "/clocks", ClockController, except: [:new, :edit]
    resources "/users", UserController, except: [:new, :edit]
  end
end
