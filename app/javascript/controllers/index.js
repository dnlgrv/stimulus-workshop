// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloWorldController from "./hello_world_controller"
application.register("hello-world", HelloWorldController)

import LazyLoadController from "./lazy_load_controller"
application.register("lazy-load", LazyLoadController)

import LoggerController from "./logger_controller"
application.register("logger", LoggerController)

import MenuController from "./menu_controller"
application.register("menu", MenuController)

import TabsController from "./tabs_controller"
application.register("tabs", TabsController)
