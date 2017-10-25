module ApplicationHelper
	def parent_menu_active(controller, menu)
		if controller == "home" && menu == "dashboard"
			return "active open selected"
		elsif (controller == "type_of_products" || controller == "products" || controller == "inflows" ) && menu == "product"
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
end
