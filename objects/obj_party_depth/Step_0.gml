/// @description 

if instance_exists(obj_player) and global.party_exists = true and instance_exists(global.party_member_1) and instance_exists(global.party_member_2){
    // Creates an array of the party members
    var _member = [obj_player, global.party_member_1, global.party_member_2]
    // Sorts the array by the party members y position
    array_sort(_member, function(elm1, elm2) {
        return elm1.y - elm2.y;
    }); 
    
   // Loops through each party member and assigns their depth based off their y position
    for(var _i = 0; _i < array_length(_member); _i++;) {
        _member[_i].depth = _i * -1;
    }
}