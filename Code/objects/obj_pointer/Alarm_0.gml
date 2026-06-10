_manager._turn++
while(_manager._turn <=3 and _manager.players[_manager._turn].is_dead){
    _manager._turn++
}
_text = true
if(_manager._turn > 3){
    _selezione = "attesa"
}