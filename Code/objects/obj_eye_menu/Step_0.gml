x = obj_menu.x + obj_menu.sprite_width/2
y = obj_menu.y + 14


if(is_over){
    image_index = 0
    exit;
}


// 1. Calcola l'angolo diretto dall'occhio al mouse (0° è a destra, sale in senso antiorario)
var angle = point_direction(x, y, mouse_x, mouse_y);

// 2. Applica l'offset di 22.5° per centrare i settori di 45°
angle -= 22.5;

// 3. Normalizza l'angolo se diventa negativo
if (angle < 0) {
    angle += 360;
}
    
// 4. Dividi per 45° per ottenere un settore da 0 a 7
var sector = floor(angle / 45);

// 5. Assegna il frame (se il tuo frame 0 o 1 guarda a destra)
// Se il frame 1 guarda a DESTRA:
image_index = sector + 1; 

