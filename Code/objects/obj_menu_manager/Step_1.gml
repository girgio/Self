if(instance_exists(obj_dialogue)) {
    is_open = false
  exit;
}

// Nello STEP event del controller
if (keyboard_check_pressed(vk_escape)) {
    is_open = !is_open;
}