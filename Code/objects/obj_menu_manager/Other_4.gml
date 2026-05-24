if (room != TitleScreen) { // Sostituisci rm_title_screen con il nome del tuo title screen
    
    // Diamo un frame di tempo alla telecamera per posizionarsi sul giocatore
    // Troviamo la telecamera corretta della nuova stanza
    var _cam = view_camera[0];
    
    if (_cam != -1) {
        var _cx = camera_get_view_x(_cam);
        var _cy = camera_get_view_y(_cam);
        var _cw = camera_get_view_width(_cam);
        var _ch = camera_get_view_height(_cam);
        
        // Forza lo sfondo del menu a posizionarsi subito al centro della nuova telecamera
        with(obj_menu) {
            x = _cx + _cw/2 - sprite_width/2;
            y = _cy + _ch/2 - sprite_height/2;
            
            // Forza anche i bottoni a raggiungere lo sfondo istantaneamente
            with(obj_options_button) { x = 0; y = 0; } // Regola i valori +64 e +100
            with(obj_quit_button)    { x = other.x + 64; y = other.y + 160; }
        }
    }
}