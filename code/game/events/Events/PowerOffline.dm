/datum/event/power_offline
	Announce()
		for(var/obj/machinery/power/apc/a in world)
			if(!a.crit)
				if(istype(a.area, /area/engine))
					continue
				a.eventoff = 1
				a.update()

	Die()
		command_alert("The station has finished an automated power system grid check, thank you.", "Maintenance alert")
		for(var/obj/machinery/power/apc/a in world)
			if(!a.crit)
				a.eventoff = 0
				a.update()