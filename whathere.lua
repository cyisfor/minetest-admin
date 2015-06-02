minetest.register_chatcommand(
   "whathere",
   {
      params="eh",
      description="Tell me what's at pos1",
      privs={worldedit=true},
      func = function(player,param)
         local pos = worldedit.pos1[player]
         if not pos then
            core.chat_send_player(player,"Set pos1 first!")
         end
         worldedit.player_notify(player, "Here is: "..
                                    core.serialize(
                                       core.registered_nodes[
                                          core.get_node(pos).name]))
      end
})
