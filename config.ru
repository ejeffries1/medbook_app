require './config/environment'


use Rack::MethodOverride
run ApplicationController
use MedicationController
use UserController
