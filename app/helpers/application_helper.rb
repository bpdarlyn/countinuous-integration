module ApplicationHelper
	def parent_menu_active(controller, menu)
		if controller == "home" && menu == "dashboard"
			return "active open selected"
		elsif (controller == "type_of_products" || controller == "products" || controller == "inflows") && menu == "product"
			return "active open selected"
		elsif (controller == "orden_requests" || controller == "warehouse") && menu == "request"
			return "active open selected"
		elsif (controller == "events" || controller == "type_of_events") && menu == "event"
			return "active open selected"
		elsif (controller == "personal_in_charges") && menu == "personal"
			return "active open selected"
		end
	end

	def active_menu(controller, controller_inside)
		if controller == controller_inside
			"active"
		else
			""
		end
	end

	def active_sub_menu(controller,action, controller_inside, action_inside)
		if controller == controller_inside && action == action_inside
			"active"
		else
			""
		end
	end
end
