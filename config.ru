require './config/environment'


use Rack::MethodOverride
run ApplicationController
run MedicationController
run UserController